.class public auto ansi beforefieldinit Game.BlockGeometryGenerator
       extends [System.Runtime]System.Object
{
  .class sequential ansi sealed nested private beforefieldinit CornerLights
         extends [System.Runtime]System.ValueType
  {
    .field public float32 L000
    .field public float32 L001
    .field public float32 L010
    .field public float32 L011
    .field public float32 L100
    .field public float32 L101
    .field public float32 L110
    .field public float32 L111
  } // end of class CornerLights

  .field private static valuetype [Engine]Engine.Vector2[] m_textureCoordinates
  .field public initonly class Game.Terrain Terrain
  .field public initonly class Game.SubsystemElectricity SubsystemElectricity
  .field public initonly class Game.SubsystemFurnitureBlockBehavior SubsystemFurnitureBlockBehavior
  .field public initonly class Game.SubsystemMetersBlockBehavior SubsystemMetersBlockBehavior
  .field public initonly class Game.SubsystemPalette SubsystemPalette
  .field private class [Engine]Engine.DynamicArray`1<class Game.ElectricConnectionPath> m_tmpConnectionPaths
  .field private valuetype [Engine]Engine.Point3 m_cornerLightsPosition
  .field private valuetype Game.BlockGeometryGenerator/CornerLights[] m_cornerLightsByFace
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.Terrain terrain,
                               class Game.SubsystemElectricity subsystemElectricity,
                               class Game.SubsystemFurnitureBlockBehavior subsystemFurnitureBlockBehavior,
                               class Game.SubsystemMetersBlockBehavior subsystemMetersBlockBehavior,
                               class Game.SubsystemPalette subsystemPalette) cil managed
  {
    // 代码大小       83 (0x53)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [Engine]Engine.DynamicArray`1<class Game.ElectricConnectionPath>::.ctor()
    IL_0006:  stfld      class [Engine]Engine.DynamicArray`1<class Game.ElectricConnectionPath> Game.BlockGeometryGenerator::m_tmpConnectionPaths
    IL_000b:  ldarg.0
    IL_000c:  ldc.i4     0x7fffffff
    IL_0011:  newobj     instance void [Engine]Engine.Point3::.ctor(int32)
    IL_0016:  stfld      valuetype [Engine]Engine.Point3 Game.BlockGeometryGenerator::m_cornerLightsPosition
    IL_001b:  ldarg.0
    IL_001c:  ldc.i4.6
    IL_001d:  newarr     Game.BlockGeometryGenerator/CornerLights
    IL_0022:  stfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_0027:  ldarg.0
    IL_0028:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_002d:  ldarg.0
    IL_002e:  ldarg.1
    IL_002f:  stfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_0034:  ldarg.0
    IL_0035:  ldarg.2
    IL_0036:  stfld      class Game.SubsystemElectricity Game.BlockGeometryGenerator::SubsystemElectricity
    IL_003b:  ldarg.0
    IL_003c:  ldarg.3
    IL_003d:  stfld      class Game.SubsystemFurnitureBlockBehavior Game.BlockGeometryGenerator::SubsystemFurnitureBlockBehavior
    IL_0042:  ldarg.0
    IL_0043:  ldarg.s    subsystemMetersBlockBehavior
    IL_0045:  stfld      class Game.SubsystemMetersBlockBehavior Game.BlockGeometryGenerator::SubsystemMetersBlockBehavior
    IL_004a:  ldarg.0
    IL_004b:  ldarg.s    subsystemPalette
    IL_004d:  stfld      class Game.SubsystemPalette Game.BlockGeometryGenerator::SubsystemPalette
    IL_0052:  ret
  } // end of method BlockGeometryGenerator::.ctor

  .method public hidebysig static void  SetupCornerVertex(float32 x,
                                                          float32 y,
                                                          float32 z,
                                                          valuetype [Engine]Engine.Color color,
                                                          int32 light,
                                                          int32 face,
                                                          int32 textureSlot,
                                                          int32 corner,
                                                          valuetype Game.TerrainVertex& vertex) cil managed
  {
    // 代码大小       138 (0x8a)
    .maxstack  7
    .locals init (float32 V_0,
             valuetype [Engine]Engine.Color V_1,
             float32 V_2,
             float32 V_3)
    IL_0000:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValueAndFace
    IL_0005:  ldarg.s    light
    IL_0007:  ldc.i4.s   16
    IL_0009:  ldarg.s    face
    IL_000b:  mul
    IL_000c:  add
    IL_000d:  ldelem.r4
    IL_000e:  stloc.0
    IL_000f:  ldloca.s   V_1
    IL_0011:  ldarga.s   color
    IL_0013:  call       instance uint8 [Engine]Engine.Color::get_R()
    IL_0018:  conv.r4
    IL_0019:  ldloc.0
    IL_001a:  mul
    IL_001b:  conv.u1
    IL_001c:  ldarga.s   color
    IL_001e:  call       instance uint8 [Engine]Engine.Color::get_G()
    IL_0023:  conv.r4
    IL_0024:  ldloc.0
    IL_0025:  mul
    IL_0026:  conv.u1
    IL_0027:  ldarga.s   color
    IL_0029:  call       instance uint8 [Engine]Engine.Color::get_B()
    IL_002e:  conv.r4
    IL_002f:  ldloc.0
    IL_0030:  mul
    IL_0031:  conv.u1
    IL_0032:  ldarga.s   color
    IL_0034:  call       instance uint8 [Engine]Engine.Color::get_A()
    IL_0039:  call       instance void [Engine]Engine.Color::.ctor(uint8,
                                                                   uint8,
                                                                   uint8,
                                                                   uint8)
    IL_003e:  ldsfld     valuetype [Engine]Engine.Vector2[] Game.BlockGeometryGenerator::m_textureCoordinates
    IL_0043:  ldarg.s    corner
    IL_0045:  ldelema    [Engine]Engine.Vector2
    IL_004a:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_004f:  ldarg.s    textureSlot
    IL_0051:  ldc.i4.s   16
    IL_0053:  rem
    IL_0054:  conv.r4
    IL_0055:  add
    IL_0056:  ldc.r4     16.
    IL_005b:  div
    IL_005c:  stloc.2
    IL_005d:  ldsfld     valuetype [Engine]Engine.Vector2[] Game.BlockGeometryGenerator::m_textureCoordinates
    IL_0062:  ldarg.s    corner
    IL_0064:  ldelema    [Engine]Engine.Vector2
    IL_0069:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_006e:  ldarg.s    textureSlot
    IL_0070:  ldc.i4.s   16
    IL_0072:  div
    IL_0073:  conv.r4
    IL_0074:  add
    IL_0075:  ldc.r4     16.
    IL_007a:  div
    IL_007b:  stloc.3
    IL_007c:  ldarg.0
    IL_007d:  ldarg.1
    IL_007e:  ldarg.2
    IL_007f:  ldloc.1
    IL_0080:  ldloc.2
    IL_0081:  ldloc.3
    IL_0082:  ldarg.s    vertex
    IL_0084:  call       void Game.BlockGeometryGenerator::SetupVertex(float32,
                                                                       float32,
                                                                       float32,
                                                                       valuetype [Engine]Engine.Color,
                                                                       float32,
                                                                       float32,
                                                                       valuetype Game.TerrainVertex&)
    IL_0089:  ret
  } // end of method BlockGeometryGenerator::SetupCornerVertex

  .method public hidebysig static void  SetupLitCornerVertex(float32 x,
                                                             float32 y,
                                                             float32 z,
                                                             valuetype [Engine]Engine.Color color,
                                                             int32 textureSlot,
                                                             int32 corner,
                                                             valuetype Game.TerrainVertex& vertex) cil managed
  {
    // 代码大小       76 (0x4c)
    .maxstack  7
    .locals init (float32 V_0,
             float32 V_1)
    IL_0000:  ldsfld     valuetype [Engine]Engine.Vector2[] Game.BlockGeometryGenerator::m_textureCoordinates
    IL_0005:  ldarg.s    corner
    IL_0007:  ldelema    [Engine]Engine.Vector2
    IL_000c:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0011:  ldarg.s    textureSlot
    IL_0013:  ldc.i4.s   16
    IL_0015:  rem
    IL_0016:  conv.r4
    IL_0017:  add
    IL_0018:  ldc.r4     16.
    IL_001d:  div
    IL_001e:  stloc.0
    IL_001f:  ldsfld     valuetype [Engine]Engine.Vector2[] Game.BlockGeometryGenerator::m_textureCoordinates
    IL_0024:  ldarg.s    corner
    IL_0026:  ldelema    [Engine]Engine.Vector2
    IL_002b:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0030:  ldarg.s    textureSlot
    IL_0032:  ldc.i4.s   16
    IL_0034:  div
    IL_0035:  conv.r4
    IL_0036:  add
    IL_0037:  ldc.r4     16.
    IL_003c:  div
    IL_003d:  stloc.1
    IL_003e:  ldarg.0
    IL_003f:  ldarg.1
    IL_0040:  ldarg.2
    IL_0041:  ldarg.3
    IL_0042:  ldloc.0
    IL_0043:  ldloc.1
    IL_0044:  ldarg.s    vertex
    IL_0046:  call       void Game.BlockGeometryGenerator::SetupVertex(float32,
                                                                       float32,
                                                                       float32,
                                                                       valuetype [Engine]Engine.Color,
                                                                       float32,
                                                                       float32,
                                                                       valuetype Game.TerrainVertex&)
    IL_004b:  ret
  } // end of method BlockGeometryGenerator::SetupLitCornerVertex

  .method public hidebysig static void  SetupVertex(float32 x,
                                                    float32 y,
                                                    float32 z,
                                                    valuetype [Engine]Engine.Color color,
                                                    float32 tx,
                                                    float32 ty,
                                                    valuetype Game.TerrainVertex& vertex) cil managed
  {
    // 代码大小       65 (0x41)
    .maxstack  3
    IL_0000:  ldarg.s    vertex
    IL_0002:  ldarg.0
    IL_0003:  stfld      float32 Game.TerrainVertex::X
    IL_0008:  ldarg.s    vertex
    IL_000a:  ldarg.1
    IL_000b:  stfld      float32 Game.TerrainVertex::Y
    IL_0010:  ldarg.s    vertex
    IL_0012:  ldarg.2
    IL_0013:  stfld      float32 Game.TerrainVertex::Z
    IL_0018:  ldarg.s    vertex
    IL_001a:  ldarg.s    tx
    IL_001c:  ldc.r4     32767.
    IL_0021:  mul
    IL_0022:  conv.i2
    IL_0023:  stfld      int16 Game.TerrainVertex::Tx
    IL_0028:  ldarg.s    vertex
    IL_002a:  ldarg.s    ty
    IL_002c:  ldc.r4     32767.
    IL_0031:  mul
    IL_0032:  conv.i2
    IL_0033:  stfld      int16 Game.TerrainVertex::Ty
    IL_0038:  ldarg.s    vertex
    IL_003a:  ldarg.3
    IL_003b:  stfld      valuetype [Engine]Engine.Color Game.TerrainVertex::Color
    IL_0040:  ret
  } // end of method BlockGeometryGenerator::SetupVertex

  .method public hidebysig instance void 
          GenerateCrossfaceVertices(class Game.Block block,
                                    int32 'value',
                                    int32 x,
                                    int32 y,
                                    int32 z,
                                    valuetype [Engine]Engine.Color color,
                                    int32 textureSlot,
                                    class Game.TerrainGeometrySubset subset) cil managed
  {
    // 代码大小       1097 (0x449)
    .maxstack  10
    .locals init (class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> V_0,
             int32 V_1,
             float32 V_2,
             valuetype [Engine]Engine.Color V_3,
             int32 V_4,
             int32 V_5)
    IL_0000:  ldarg.s    subset
    IL_0002:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_0007:  stloc.0
    IL_0008:  ldarg.s    subset
    IL_000a:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_000f:  ldarg.2
    IL_0010:  call       int32 Game.Terrain::ExtractLight(int32)
    IL_0015:  stloc.1
    IL_0016:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValueAndFace
    IL_001b:  ldloc.1
    IL_001c:  ldc.i4.s   64
    IL_001e:  add
    IL_001f:  ldelem.r4
    IL_0020:  stloc.2
    IL_0021:  ldloca.s   V_3
    IL_0023:  ldarga.s   color
    IL_0025:  call       instance uint8 [Engine]Engine.Color::get_R()
    IL_002a:  conv.r4
    IL_002b:  ldloc.2
    IL_002c:  mul
    IL_002d:  conv.u1
    IL_002e:  ldarga.s   color
    IL_0030:  call       instance uint8 [Engine]Engine.Color::get_G()
    IL_0035:  conv.r4
    IL_0036:  ldloc.2
    IL_0037:  mul
    IL_0038:  conv.u1
    IL_0039:  ldarga.s   color
    IL_003b:  call       instance uint8 [Engine]Engine.Color::get_B()
    IL_0040:  conv.r4
    IL_0041:  ldloc.2
    IL_0042:  mul
    IL_0043:  conv.u1
    IL_0044:  ldarga.s   color
    IL_0046:  call       instance uint8 [Engine]Engine.Color::get_A()
    IL_004b:  call       instance void [Engine]Engine.Color::.ctor(uint8,
                                                                   uint8,
                                                                   uint8,
                                                                   uint8)
    IL_0050:  ldloc.0
    IL_0051:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_0056:  stloc.s    V_4
    IL_0058:  ldloc.0
    IL_0059:  dup
    IL_005a:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_005f:  ldc.i4.8
    IL_0060:  add
    IL_0061:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
    IL_0066:  ldarg.3
    IL_0067:  ldc.i4.1
    IL_0068:  and
    IL_0069:  brtrue     IL_00fd

    IL_006e:  ldarg.3
    IL_006f:  conv.r4
    IL_0070:  ldarg.s    y
    IL_0072:  conv.r4
    IL_0073:  ldarg.s    z
    IL_0075:  conv.r4
    IL_0076:  ldloc.3
    IL_0077:  ldarg.s    textureSlot
    IL_0079:  ldc.i4.0
    IL_007a:  ldloc.0
    IL_007b:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0080:  ldloc.s    V_4
    IL_0082:  ldelema    Game.TerrainVertex
    IL_0087:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_008c:  ldarg.3
    IL_008d:  ldc.i4.1
    IL_008e:  add
    IL_008f:  conv.r4
    IL_0090:  ldarg.s    y
    IL_0092:  conv.r4
    IL_0093:  ldarg.s    z
    IL_0095:  ldc.i4.1
    IL_0096:  add
    IL_0097:  conv.r4
    IL_0098:  ldloc.3
    IL_0099:  ldarg.s    textureSlot
    IL_009b:  ldc.i4.1
    IL_009c:  ldloc.0
    IL_009d:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_00a2:  ldloc.s    V_4
    IL_00a4:  ldc.i4.1
    IL_00a5:  add
    IL_00a6:  ldelema    Game.TerrainVertex
    IL_00ab:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_00b0:  ldarg.3
    IL_00b1:  ldc.i4.1
    IL_00b2:  add
    IL_00b3:  conv.r4
    IL_00b4:  ldarg.s    y
    IL_00b6:  ldc.i4.1
    IL_00b7:  add
    IL_00b8:  conv.r4
    IL_00b9:  ldarg.s    z
    IL_00bb:  ldc.i4.1
    IL_00bc:  add
    IL_00bd:  conv.r4
    IL_00be:  ldloc.3
    IL_00bf:  ldarg.s    textureSlot
    IL_00c1:  ldc.i4.2
    IL_00c2:  ldloc.0
    IL_00c3:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_00c8:  ldloc.s    V_4
    IL_00ca:  ldc.i4.2
    IL_00cb:  add
    IL_00cc:  ldelema    Game.TerrainVertex
    IL_00d1:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_00d6:  ldarg.3
    IL_00d7:  conv.r4
    IL_00d8:  ldarg.s    y
    IL_00da:  ldc.i4.1
    IL_00db:  add
    IL_00dc:  conv.r4
    IL_00dd:  ldarg.s    z
    IL_00df:  conv.r4
    IL_00e0:  ldloc.3
    IL_00e1:  ldarg.s    textureSlot
    IL_00e3:  ldc.i4.3
    IL_00e4:  ldloc.0
    IL_00e5:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_00ea:  ldloc.s    V_4
    IL_00ec:  ldc.i4.3
    IL_00ed:  add
    IL_00ee:  ldelema    Game.TerrainVertex
    IL_00f3:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_00f8:  br         IL_0187

    IL_00fd:  ldarg.3
    IL_00fe:  conv.r4
    IL_00ff:  ldarg.s    y
    IL_0101:  conv.r4
    IL_0102:  ldarg.s    z
    IL_0104:  conv.r4
    IL_0105:  ldloc.3
    IL_0106:  ldarg.s    textureSlot
    IL_0108:  ldc.i4.1
    IL_0109:  ldloc.0
    IL_010a:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_010f:  ldloc.s    V_4
    IL_0111:  ldelema    Game.TerrainVertex
    IL_0116:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_011b:  ldarg.3
    IL_011c:  ldc.i4.1
    IL_011d:  add
    IL_011e:  conv.r4
    IL_011f:  ldarg.s    y
    IL_0121:  conv.r4
    IL_0122:  ldarg.s    z
    IL_0124:  ldc.i4.1
    IL_0125:  add
    IL_0126:  conv.r4
    IL_0127:  ldloc.3
    IL_0128:  ldarg.s    textureSlot
    IL_012a:  ldc.i4.0
    IL_012b:  ldloc.0
    IL_012c:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0131:  ldloc.s    V_4
    IL_0133:  ldc.i4.1
    IL_0134:  add
    IL_0135:  ldelema    Game.TerrainVertex
    IL_013a:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_013f:  ldarg.3
    IL_0140:  ldc.i4.1
    IL_0141:  add
    IL_0142:  conv.r4
    IL_0143:  ldarg.s    y
    IL_0145:  ldc.i4.1
    IL_0146:  add
    IL_0147:  conv.r4
    IL_0148:  ldarg.s    z
    IL_014a:  ldc.i4.1
    IL_014b:  add
    IL_014c:  conv.r4
    IL_014d:  ldloc.3
    IL_014e:  ldarg.s    textureSlot
    IL_0150:  ldc.i4.3
    IL_0151:  ldloc.0
    IL_0152:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0157:  ldloc.s    V_4
    IL_0159:  ldc.i4.2
    IL_015a:  add
    IL_015b:  ldelema    Game.TerrainVertex
    IL_0160:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_0165:  ldarg.3
    IL_0166:  conv.r4
    IL_0167:  ldarg.s    y
    IL_0169:  ldc.i4.1
    IL_016a:  add
    IL_016b:  conv.r4
    IL_016c:  ldarg.s    z
    IL_016e:  conv.r4
    IL_016f:  ldloc.3
    IL_0170:  ldarg.s    textureSlot
    IL_0172:  ldc.i4.2
    IL_0173:  ldloc.0
    IL_0174:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0179:  ldloc.s    V_4
    IL_017b:  ldc.i4.3
    IL_017c:  add
    IL_017d:  ldelema    Game.TerrainVertex
    IL_0182:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_0187:  ldarg.s    z
    IL_0189:  ldc.i4.1
    IL_018a:  and
    IL_018b:  brtrue     IL_0221

    IL_0190:  ldarg.3
    IL_0191:  conv.r4
    IL_0192:  ldarg.s    y
    IL_0194:  conv.r4
    IL_0195:  ldarg.s    z
    IL_0197:  ldc.i4.1
    IL_0198:  add
    IL_0199:  conv.r4
    IL_019a:  ldloc.3
    IL_019b:  ldarg.s    textureSlot
    IL_019d:  ldc.i4.0
    IL_019e:  ldloc.0
    IL_019f:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_01a4:  ldloc.s    V_4
    IL_01a6:  ldc.i4.4
    IL_01a7:  add
    IL_01a8:  ldelema    Game.TerrainVertex
    IL_01ad:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_01b2:  ldarg.3
    IL_01b3:  ldc.i4.1
    IL_01b4:  add
    IL_01b5:  conv.r4
    IL_01b6:  ldarg.s    y
    IL_01b8:  conv.r4
    IL_01b9:  ldarg.s    z
    IL_01bb:  conv.r4
    IL_01bc:  ldloc.3
    IL_01bd:  ldarg.s    textureSlot
    IL_01bf:  ldc.i4.1
    IL_01c0:  ldloc.0
    IL_01c1:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_01c6:  ldloc.s    V_4
    IL_01c8:  ldc.i4.5
    IL_01c9:  add
    IL_01ca:  ldelema    Game.TerrainVertex
    IL_01cf:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_01d4:  ldarg.3
    IL_01d5:  ldc.i4.1
    IL_01d6:  add
    IL_01d7:  conv.r4
    IL_01d8:  ldarg.s    y
    IL_01da:  ldc.i4.1
    IL_01db:  add
    IL_01dc:  conv.r4
    IL_01dd:  ldarg.s    z
    IL_01df:  conv.r4
    IL_01e0:  ldloc.3
    IL_01e1:  ldarg.s    textureSlot
    IL_01e3:  ldc.i4.2
    IL_01e4:  ldloc.0
    IL_01e5:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_01ea:  ldloc.s    V_4
    IL_01ec:  ldc.i4.6
    IL_01ed:  add
    IL_01ee:  ldelema    Game.TerrainVertex
    IL_01f3:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_01f8:  ldarg.3
    IL_01f9:  conv.r4
    IL_01fa:  ldarg.s    y
    IL_01fc:  ldc.i4.1
    IL_01fd:  add
    IL_01fe:  conv.r4
    IL_01ff:  ldarg.s    z
    IL_0201:  ldc.i4.1
    IL_0202:  add
    IL_0203:  conv.r4
    IL_0204:  ldloc.3
    IL_0205:  ldarg.s    textureSlot
    IL_0207:  ldc.i4.3
    IL_0208:  ldloc.0
    IL_0209:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_020e:  ldloc.s    V_4
    IL_0210:  ldc.i4.7
    IL_0211:  add
    IL_0212:  ldelema    Game.TerrainVertex
    IL_0217:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_021c:  br         IL_02ad

    IL_0221:  ldarg.3
    IL_0222:  conv.r4
    IL_0223:  ldarg.s    y
    IL_0225:  conv.r4
    IL_0226:  ldarg.s    z
    IL_0228:  ldc.i4.1
    IL_0229:  add
    IL_022a:  conv.r4
    IL_022b:  ldloc.3
    IL_022c:  ldarg.s    textureSlot
    IL_022e:  ldc.i4.1
    IL_022f:  ldloc.0
    IL_0230:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0235:  ldloc.s    V_4
    IL_0237:  ldc.i4.4
    IL_0238:  add
    IL_0239:  ldelema    Game.TerrainVertex
    IL_023e:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_0243:  ldarg.3
    IL_0244:  ldc.i4.1
    IL_0245:  add
    IL_0246:  conv.r4
    IL_0247:  ldarg.s    y
    IL_0249:  conv.r4
    IL_024a:  ldarg.s    z
    IL_024c:  conv.r4
    IL_024d:  ldloc.3
    IL_024e:  ldarg.s    textureSlot
    IL_0250:  ldc.i4.0
    IL_0251:  ldloc.0
    IL_0252:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0257:  ldloc.s    V_4
    IL_0259:  ldc.i4.5
    IL_025a:  add
    IL_025b:  ldelema    Game.TerrainVertex
    IL_0260:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_0265:  ldarg.3
    IL_0266:  ldc.i4.1
    IL_0267:  add
    IL_0268:  conv.r4
    IL_0269:  ldarg.s    y
    IL_026b:  ldc.i4.1
    IL_026c:  add
    IL_026d:  conv.r4
    IL_026e:  ldarg.s    z
    IL_0270:  conv.r4
    IL_0271:  ldloc.3
    IL_0272:  ldarg.s    textureSlot
    IL_0274:  ldc.i4.3
    IL_0275:  ldloc.0
    IL_0276:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_027b:  ldloc.s    V_4
    IL_027d:  ldc.i4.6
    IL_027e:  add
    IL_027f:  ldelema    Game.TerrainVertex
    IL_0284:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_0289:  ldarg.3
    IL_028a:  conv.r4
    IL_028b:  ldarg.s    y
    IL_028d:  ldc.i4.1
    IL_028e:  add
    IL_028f:  conv.r4
    IL_0290:  ldarg.s    z
    IL_0292:  ldc.i4.1
    IL_0293:  add
    IL_0294:  conv.r4
    IL_0295:  ldloc.3
    IL_0296:  ldarg.s    textureSlot
    IL_0298:  ldc.i4.2
    IL_0299:  ldloc.0
    IL_029a:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_029f:  ldloc.s    V_4
    IL_02a1:  ldc.i4.7
    IL_02a2:  add
    IL_02a3:  ldelema    Game.TerrainVertex
    IL_02a8:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_02ad:  dup
    IL_02ae:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_02b3:  stloc.s    V_5
    IL_02b5:  dup
    IL_02b6:  dup
    IL_02b7:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_02bc:  ldc.i4.s   24
    IL_02be:  add
    IL_02bf:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::set_Count(int32)
    IL_02c4:  dup
    IL_02c5:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_02ca:  ldloc.s    V_5
    IL_02cc:  ldloc.s    V_4
    IL_02ce:  conv.u2
    IL_02cf:  stelem.i2
    IL_02d0:  dup
    IL_02d1:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_02d6:  ldloc.s    V_5
    IL_02d8:  ldc.i4.1
    IL_02d9:  add
    IL_02da:  ldloc.s    V_4
    IL_02dc:  ldc.i4.1
    IL_02dd:  add
    IL_02de:  conv.u2
    IL_02df:  stelem.i2
    IL_02e0:  dup
    IL_02e1:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_02e6:  ldloc.s    V_5
    IL_02e8:  ldc.i4.2
    IL_02e9:  add
    IL_02ea:  ldloc.s    V_4
    IL_02ec:  ldc.i4.2
    IL_02ed:  add
    IL_02ee:  conv.u2
    IL_02ef:  stelem.i2
    IL_02f0:  dup
    IL_02f1:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_02f6:  ldloc.s    V_5
    IL_02f8:  ldc.i4.3
    IL_02f9:  add
    IL_02fa:  ldloc.s    V_4
    IL_02fc:  ldc.i4.2
    IL_02fd:  add
    IL_02fe:  conv.u2
    IL_02ff:  stelem.i2
    IL_0300:  dup
    IL_0301:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0306:  ldloc.s    V_5
    IL_0308:  ldc.i4.4
    IL_0309:  add
    IL_030a:  ldloc.s    V_4
    IL_030c:  ldc.i4.1
    IL_030d:  add
    IL_030e:  conv.u2
    IL_030f:  stelem.i2
    IL_0310:  dup
    IL_0311:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0316:  ldloc.s    V_5
    IL_0318:  ldc.i4.5
    IL_0319:  add
    IL_031a:  ldloc.s    V_4
    IL_031c:  conv.u2
    IL_031d:  stelem.i2
    IL_031e:  dup
    IL_031f:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0324:  ldloc.s    V_5
    IL_0326:  ldc.i4.6
    IL_0327:  add
    IL_0328:  ldloc.s    V_4
    IL_032a:  ldc.i4.2
    IL_032b:  add
    IL_032c:  conv.u2
    IL_032d:  stelem.i2
    IL_032e:  dup
    IL_032f:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0334:  ldloc.s    V_5
    IL_0336:  ldc.i4.7
    IL_0337:  add
    IL_0338:  ldloc.s    V_4
    IL_033a:  ldc.i4.3
    IL_033b:  add
    IL_033c:  conv.u2
    IL_033d:  stelem.i2
    IL_033e:  dup
    IL_033f:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0344:  ldloc.s    V_5
    IL_0346:  ldc.i4.8
    IL_0347:  add
    IL_0348:  ldloc.s    V_4
    IL_034a:  conv.u2
    IL_034b:  stelem.i2
    IL_034c:  dup
    IL_034d:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0352:  ldloc.s    V_5
    IL_0354:  ldc.i4.s   9
    IL_0356:  add
    IL_0357:  ldloc.s    V_4
    IL_0359:  conv.u2
    IL_035a:  stelem.i2
    IL_035b:  dup
    IL_035c:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0361:  ldloc.s    V_5
    IL_0363:  ldc.i4.s   10
    IL_0365:  add
    IL_0366:  ldloc.s    V_4
    IL_0368:  ldc.i4.3
    IL_0369:  add
    IL_036a:  conv.u2
    IL_036b:  stelem.i2
    IL_036c:  dup
    IL_036d:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0372:  ldloc.s    V_5
    IL_0374:  ldc.i4.s   11
    IL_0376:  add
    IL_0377:  ldloc.s    V_4
    IL_0379:  ldc.i4.2
    IL_037a:  add
    IL_037b:  conv.u2
    IL_037c:  stelem.i2
    IL_037d:  dup
    IL_037e:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0383:  ldloc.s    V_5
    IL_0385:  ldc.i4.s   12
    IL_0387:  add
    IL_0388:  ldloc.s    V_4
    IL_038a:  ldc.i4.4
    IL_038b:  add
    IL_038c:  conv.u2
    IL_038d:  stelem.i2
    IL_038e:  dup
    IL_038f:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0394:  ldloc.s    V_5
    IL_0396:  ldc.i4.s   13
    IL_0398:  add
    IL_0399:  ldloc.s    V_4
    IL_039b:  ldc.i4.5
    IL_039c:  add
    IL_039d:  conv.u2
    IL_039e:  stelem.i2
    IL_039f:  dup
    IL_03a0:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_03a5:  ldloc.s    V_5
    IL_03a7:  ldc.i4.s   14
    IL_03a9:  add
    IL_03aa:  ldloc.s    V_4
    IL_03ac:  ldc.i4.6
    IL_03ad:  add
    IL_03ae:  conv.u2
    IL_03af:  stelem.i2
    IL_03b0:  dup
    IL_03b1:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_03b6:  ldloc.s    V_5
    IL_03b8:  ldc.i4.s   15
    IL_03ba:  add
    IL_03bb:  ldloc.s    V_4
    IL_03bd:  ldc.i4.6
    IL_03be:  add
    IL_03bf:  conv.u2
    IL_03c0:  stelem.i2
    IL_03c1:  dup
    IL_03c2:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_03c7:  ldloc.s    V_5
    IL_03c9:  ldc.i4.s   16
    IL_03cb:  add
    IL_03cc:  ldloc.s    V_4
    IL_03ce:  ldc.i4.5
    IL_03cf:  add
    IL_03d0:  conv.u2
    IL_03d1:  stelem.i2
    IL_03d2:  dup
    IL_03d3:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_03d8:  ldloc.s    V_5
    IL_03da:  ldc.i4.s   17
    IL_03dc:  add
    IL_03dd:  ldloc.s    V_4
    IL_03df:  ldc.i4.4
    IL_03e0:  add
    IL_03e1:  conv.u2
    IL_03e2:  stelem.i2
    IL_03e3:  dup
    IL_03e4:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_03e9:  ldloc.s    V_5
    IL_03eb:  ldc.i4.s   18
    IL_03ed:  add
    IL_03ee:  ldloc.s    V_4
    IL_03f0:  ldc.i4.6
    IL_03f1:  add
    IL_03f2:  conv.u2
    IL_03f3:  stelem.i2
    IL_03f4:  dup
    IL_03f5:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_03fa:  ldloc.s    V_5
    IL_03fc:  ldc.i4.s   19
    IL_03fe:  add
    IL_03ff:  ldloc.s    V_4
    IL_0401:  ldc.i4.7
    IL_0402:  add
    IL_0403:  conv.u2
    IL_0404:  stelem.i2
    IL_0405:  dup
    IL_0406:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_040b:  ldloc.s    V_5
    IL_040d:  ldc.i4.s   20
    IL_040f:  add
    IL_0410:  ldloc.s    V_4
    IL_0412:  ldc.i4.4
    IL_0413:  add
    IL_0414:  conv.u2
    IL_0415:  stelem.i2
    IL_0416:  dup
    IL_0417:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_041c:  ldloc.s    V_5
    IL_041e:  ldc.i4.s   21
    IL_0420:  add
    IL_0421:  ldloc.s    V_4
    IL_0423:  ldc.i4.4
    IL_0424:  add
    IL_0425:  conv.u2
    IL_0426:  stelem.i2
    IL_0427:  dup
    IL_0428:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_042d:  ldloc.s    V_5
    IL_042f:  ldc.i4.s   22
    IL_0431:  add
    IL_0432:  ldloc.s    V_4
    IL_0434:  ldc.i4.7
    IL_0435:  add
    IL_0436:  conv.u2
    IL_0437:  stelem.i2
    IL_0438:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_043d:  ldloc.s    V_5
    IL_043f:  ldc.i4.s   23
    IL_0441:  add
    IL_0442:  ldloc.s    V_4
    IL_0444:  ldc.i4.6
    IL_0445:  add
    IL_0446:  conv.u2
    IL_0447:  stelem.i2
    IL_0448:  ret
  } // end of method BlockGeometryGenerator::GenerateCrossfaceVertices

  .method public hidebysig instance void 
          GenerateCubeVertices(class Game.Block block,
                               int32 'value',
                               int32 x,
                               int32 y,
                               int32 z,
                               valuetype [Engine]Engine.Color color,
                               class Game.TerrainGeometrySubset[] subsetsByFace) cil managed
  {
    // 代码大小       2303 (0x8ff)
    .maxstack  13
    .locals init (int32 V_0,
             int32 V_1,
             class Game.TerrainChunk V_2,
             class Game.TerrainChunk V_3,
             class Game.TerrainChunk V_4,
             class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> V_9,
             int32 V_10,
             int32 V_11,
             int32 V_12,
             class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> V_13,
             int32 V_14,
             int32 V_15,
             int32 V_16,
             class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> V_17,
             int32 V_18,
             int32 V_19,
             int32 V_20,
             class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> V_21,
             int32 V_22,
             int32 V_23,
             int32 V_24,
             class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> V_25,
             int32 V_26,
             int32 V_27,
             int32 V_28)
    IL_0000:  ldarg.1
    IL_0001:  ldfld      int32 Game.Block::BlockIndex
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_000d:  ldarg.3
    IL_000e:  ldarg.s    z
    IL_0010:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                       int32)
    IL_0015:  ldarg.0
    IL_0016:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_001b:  ldarg.3
    IL_001c:  ldarg.s    z
    IL_001e:  ldc.i4.1
    IL_001f:  add
    IL_0020:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                       int32)
    IL_0025:  ldarg.0
    IL_0026:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_002b:  ldarg.3
    IL_002c:  ldc.i4.1
    IL_002d:  add
    IL_002e:  ldarg.s    z
    IL_0030:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                       int32)
    IL_0035:  stloc.2
    IL_0036:  ldarg.0
    IL_0037:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_003c:  ldarg.3
    IL_003d:  ldarg.s    z
    IL_003f:  ldc.i4.1
    IL_0040:  sub
    IL_0041:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                       int32)
    IL_0046:  stloc.3
    IL_0047:  ldarg.0
    IL_0048:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_004d:  ldarg.3
    IL_004e:  ldc.i4.1
    IL_004f:  sub
    IL_0050:  ldarg.s    z
    IL_0052:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                       int32)
    IL_0057:  stloc.s    V_4
    IL_0059:  ldarg.3
    IL_005a:  ldc.i4.s   15
    IL_005c:  and
    IL_005d:  ldarg.s    y
    IL_005f:  ldarg.s    z
    IL_0061:  ldc.i4.1
    IL_0062:  add
    IL_0063:  ldc.i4.s   15
    IL_0065:  and
    IL_0066:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32,
                                                                            int32,
                                                                            int32)
    IL_006b:  stloc.1
    IL_006c:  ldloc.1
    IL_006d:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0072:  ldloc.0
    IL_0073:  beq        IL_01cd

    IL_0078:  ldarg.1
    IL_0079:  ldc.i4.0
    IL_007a:  ldarg.2
    IL_007b:  ldloc.1
    IL_007c:  callvirt   instance bool Game.Block::ShouldGenerateFace(int32,
                                                                      int32,
                                                                      int32)
    IL_0081:  brfalse    IL_01cd

    IL_0086:  ldarg.s    subsetsByFace
    IL_0088:  ldc.i4.0
    IL_0089:  ldelem.ref
    IL_008a:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_008f:  stloc.s    V_5
    IL_0091:  ldarg.s    subsetsByFace
    IL_0093:  ldc.i4.0
    IL_0094:  ldelem.ref
    IL_0095:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_009a:  ldarg.1
    IL_009b:  ldc.i4.0
    IL_009c:  ldarg.2
    IL_009d:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_00a2:  stloc.s    V_6
    IL_00a4:  ldloc.s    V_5
    IL_00a6:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_00ab:  stloc.s    V_7
    IL_00ad:  ldloc.s    V_5
    IL_00af:  dup
    IL_00b0:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_00b5:  ldc.i4.4
    IL_00b6:  add
    IL_00b7:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
    IL_00bc:  ldarg.0
    IL_00bd:  ldarg.3
    IL_00be:  ldarg.s    y
    IL_00c0:  ldarg.s    z
    IL_00c2:  ldc.i4.1
    IL_00c3:  add
    IL_00c4:  ldc.r4     1.
    IL_00c9:  ldc.i4.0
    IL_00ca:  ldloc.s    V_6
    IL_00cc:  ldarg.s    color
    IL_00ce:  ldloc.s    V_5
    IL_00d0:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_00d5:  ldloc.s    V_7
    IL_00d7:  ldelema    Game.TerrainVertex
    IL_00dc:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace0(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_00e1:  ldarg.0
    IL_00e2:  ldarg.3
    IL_00e3:  ldc.i4.1
    IL_00e4:  add
    IL_00e5:  ldarg.s    y
    IL_00e7:  ldarg.s    z
    IL_00e9:  ldc.i4.1
    IL_00ea:  add
    IL_00eb:  ldc.r4     1.
    IL_00f0:  ldc.i4.1
    IL_00f1:  ldloc.s    V_6
    IL_00f3:  ldarg.s    color
    IL_00f5:  ldloc.s    V_5
    IL_00f7:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_00fc:  ldloc.s    V_7
    IL_00fe:  ldc.i4.1
    IL_00ff:  add
    IL_0100:  ldelema    Game.TerrainVertex
    IL_0105:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace0(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_010a:  ldarg.0
    IL_010b:  ldarg.3
    IL_010c:  ldc.i4.1
    IL_010d:  add
    IL_010e:  ldarg.s    y
    IL_0110:  ldc.i4.1
    IL_0111:  add
    IL_0112:  ldarg.s    z
    IL_0114:  ldc.i4.1
    IL_0115:  add
    IL_0116:  ldc.r4     1.
    IL_011b:  ldc.i4.2
    IL_011c:  ldloc.s    V_6
    IL_011e:  ldarg.s    color
    IL_0120:  ldloc.s    V_5
    IL_0122:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0127:  ldloc.s    V_7
    IL_0129:  ldc.i4.2
    IL_012a:  add
    IL_012b:  ldelema    Game.TerrainVertex
    IL_0130:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace0(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_0135:  ldarg.0
    IL_0136:  ldarg.3
    IL_0137:  ldarg.s    y
    IL_0139:  ldc.i4.1
    IL_013a:  add
    IL_013b:  ldarg.s    z
    IL_013d:  ldc.i4.1
    IL_013e:  add
    IL_013f:  ldc.r4     1.
    IL_0144:  ldc.i4.3
    IL_0145:  ldloc.s    V_6
    IL_0147:  ldarg.s    color
    IL_0149:  ldloc.s    V_5
    IL_014b:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0150:  ldloc.s    V_7
    IL_0152:  ldc.i4.3
    IL_0153:  add
    IL_0154:  ldelema    Game.TerrainVertex
    IL_0159:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace0(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_015e:  dup
    IL_015f:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_0164:  stloc.s    V_8
    IL_0166:  dup
    IL_0167:  dup
    IL_0168:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_016d:  ldc.i4.6
    IL_016e:  add
    IL_016f:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::set_Count(int32)
    IL_0174:  dup
    IL_0175:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_017a:  ldloc.s    V_8
    IL_017c:  ldloc.s    V_7
    IL_017e:  conv.u2
    IL_017f:  stelem.i2
    IL_0180:  dup
    IL_0181:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0186:  ldloc.s    V_8
    IL_0188:  ldc.i4.1
    IL_0189:  add
    IL_018a:  ldloc.s    V_7
    IL_018c:  ldc.i4.2
    IL_018d:  add
    IL_018e:  conv.u2
    IL_018f:  stelem.i2
    IL_0190:  dup
    IL_0191:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0196:  ldloc.s    V_8
    IL_0198:  ldc.i4.2
    IL_0199:  add
    IL_019a:  ldloc.s    V_7
    IL_019c:  ldc.i4.1
    IL_019d:  add
    IL_019e:  conv.u2
    IL_019f:  stelem.i2
    IL_01a0:  dup
    IL_01a1:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_01a6:  ldloc.s    V_8
    IL_01a8:  ldc.i4.3
    IL_01a9:  add
    IL_01aa:  ldloc.s    V_7
    IL_01ac:  ldc.i4.2
    IL_01ad:  add
    IL_01ae:  conv.u2
    IL_01af:  stelem.i2
    IL_01b0:  dup
    IL_01b1:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_01b6:  ldloc.s    V_8
    IL_01b8:  ldc.i4.4
    IL_01b9:  add
    IL_01ba:  ldloc.s    V_7
    IL_01bc:  conv.u2
    IL_01bd:  stelem.i2
    IL_01be:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_01c3:  ldloc.s    V_8
    IL_01c5:  ldc.i4.5
    IL_01c6:  add
    IL_01c7:  ldloc.s    V_7
    IL_01c9:  ldc.i4.3
    IL_01ca:  add
    IL_01cb:  conv.u2
    IL_01cc:  stelem.i2
    IL_01cd:  ldloc.2
    IL_01ce:  ldarg.3
    IL_01cf:  ldc.i4.1
    IL_01d0:  add
    IL_01d1:  ldc.i4.s   15
    IL_01d3:  and
    IL_01d4:  ldarg.s    y
    IL_01d6:  ldarg.s    z
    IL_01d8:  ldc.i4.s   15
    IL_01da:  and
    IL_01db:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32,
                                                                            int32,
                                                                            int32)
    IL_01e0:  stloc.1
    IL_01e1:  ldloc.1
    IL_01e2:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_01e7:  ldloc.0
    IL_01e8:  beq        IL_0342

    IL_01ed:  ldarg.1
    IL_01ee:  ldc.i4.1
    IL_01ef:  ldarg.2
    IL_01f0:  ldloc.1
    IL_01f1:  callvirt   instance bool Game.Block::ShouldGenerateFace(int32,
                                                                      int32,
                                                                      int32)
    IL_01f6:  brfalse    IL_0342

    IL_01fb:  ldarg.s    subsetsByFace
    IL_01fd:  ldc.i4.1
    IL_01fe:  ldelem.ref
    IL_01ff:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_0204:  stloc.s    V_9
    IL_0206:  ldarg.s    subsetsByFace
    IL_0208:  ldc.i4.1
    IL_0209:  ldelem.ref
    IL_020a:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_020f:  ldarg.1
    IL_0210:  ldc.i4.1
    IL_0211:  ldarg.2
    IL_0212:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_0217:  stloc.s    V_10
    IL_0219:  ldloc.s    V_9
    IL_021b:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_0220:  stloc.s    V_11
    IL_0222:  ldloc.s    V_9
    IL_0224:  dup
    IL_0225:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_022a:  ldc.i4.4
    IL_022b:  add
    IL_022c:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
    IL_0231:  ldarg.0
    IL_0232:  ldarg.3
    IL_0233:  ldc.i4.1
    IL_0234:  add
    IL_0235:  ldarg.s    y
    IL_0237:  ldarg.s    z
    IL_0239:  ldc.r4     1.
    IL_023e:  ldc.i4.1
    IL_023f:  ldloc.s    V_10
    IL_0241:  ldarg.s    color
    IL_0243:  ldloc.s    V_9
    IL_0245:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_024a:  ldloc.s    V_11
    IL_024c:  ldelema    Game.TerrainVertex
    IL_0251:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace1(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_0256:  ldarg.0
    IL_0257:  ldarg.3
    IL_0258:  ldc.i4.1
    IL_0259:  add
    IL_025a:  ldarg.s    y
    IL_025c:  ldc.i4.1
    IL_025d:  add
    IL_025e:  ldarg.s    z
    IL_0260:  ldc.r4     1.
    IL_0265:  ldc.i4.2
    IL_0266:  ldloc.s    V_10
    IL_0268:  ldarg.s    color
    IL_026a:  ldloc.s    V_9
    IL_026c:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0271:  ldloc.s    V_11
    IL_0273:  ldc.i4.1
    IL_0274:  add
    IL_0275:  ldelema    Game.TerrainVertex
    IL_027a:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace1(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_027f:  ldarg.0
    IL_0280:  ldarg.3
    IL_0281:  ldc.i4.1
    IL_0282:  add
    IL_0283:  ldarg.s    y
    IL_0285:  ldc.i4.1
    IL_0286:  add
    IL_0287:  ldarg.s    z
    IL_0289:  ldc.i4.1
    IL_028a:  add
    IL_028b:  ldc.r4     1.
    IL_0290:  ldc.i4.3
    IL_0291:  ldloc.s    V_10
    IL_0293:  ldarg.s    color
    IL_0295:  ldloc.s    V_9
    IL_0297:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_029c:  ldloc.s    V_11
    IL_029e:  ldc.i4.2
    IL_029f:  add
    IL_02a0:  ldelema    Game.TerrainVertex
    IL_02a5:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace1(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_02aa:  ldarg.0
    IL_02ab:  ldarg.3
    IL_02ac:  ldc.i4.1
    IL_02ad:  add
    IL_02ae:  ldarg.s    y
    IL_02b0:  ldarg.s    z
    IL_02b2:  ldc.i4.1
    IL_02b3:  add
    IL_02b4:  ldc.r4     1.
    IL_02b9:  ldc.i4.0
    IL_02ba:  ldloc.s    V_10
    IL_02bc:  ldarg.s    color
    IL_02be:  ldloc.s    V_9
    IL_02c0:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_02c5:  ldloc.s    V_11
    IL_02c7:  ldc.i4.3
    IL_02c8:  add
    IL_02c9:  ldelema    Game.TerrainVertex
    IL_02ce:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace1(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_02d3:  dup
    IL_02d4:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_02d9:  stloc.s    V_12
    IL_02db:  dup
    IL_02dc:  dup
    IL_02dd:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_02e2:  ldc.i4.6
    IL_02e3:  add
    IL_02e4:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::set_Count(int32)
    IL_02e9:  dup
    IL_02ea:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_02ef:  ldloc.s    V_12
    IL_02f1:  ldloc.s    V_11
    IL_02f3:  conv.u2
    IL_02f4:  stelem.i2
    IL_02f5:  dup
    IL_02f6:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_02fb:  ldloc.s    V_12
    IL_02fd:  ldc.i4.1
    IL_02fe:  add
    IL_02ff:  ldloc.s    V_11
    IL_0301:  ldc.i4.2
    IL_0302:  add
    IL_0303:  conv.u2
    IL_0304:  stelem.i2
    IL_0305:  dup
    IL_0306:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_030b:  ldloc.s    V_12
    IL_030d:  ldc.i4.2
    IL_030e:  add
    IL_030f:  ldloc.s    V_11
    IL_0311:  ldc.i4.1
    IL_0312:  add
    IL_0313:  conv.u2
    IL_0314:  stelem.i2
    IL_0315:  dup
    IL_0316:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_031b:  ldloc.s    V_12
    IL_031d:  ldc.i4.3
    IL_031e:  add
    IL_031f:  ldloc.s    V_11
    IL_0321:  ldc.i4.2
    IL_0322:  add
    IL_0323:  conv.u2
    IL_0324:  stelem.i2
    IL_0325:  dup
    IL_0326:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_032b:  ldloc.s    V_12
    IL_032d:  ldc.i4.4
    IL_032e:  add
    IL_032f:  ldloc.s    V_11
    IL_0331:  conv.u2
    IL_0332:  stelem.i2
    IL_0333:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0338:  ldloc.s    V_12
    IL_033a:  ldc.i4.5
    IL_033b:  add
    IL_033c:  ldloc.s    V_11
    IL_033e:  ldc.i4.3
    IL_033f:  add
    IL_0340:  conv.u2
    IL_0341:  stelem.i2
    IL_0342:  ldloc.3
    IL_0343:  ldarg.3
    IL_0344:  ldc.i4.s   15
    IL_0346:  and
    IL_0347:  ldarg.s    y
    IL_0349:  ldarg.s    z
    IL_034b:  ldc.i4.1
    IL_034c:  sub
    IL_034d:  ldc.i4.s   15
    IL_034f:  and
    IL_0350:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32,
                                                                            int32,
                                                                            int32)
    IL_0355:  stloc.1
    IL_0356:  ldloc.1
    IL_0357:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_035c:  ldloc.0
    IL_035d:  beq        IL_04af

    IL_0362:  ldarg.1
    IL_0363:  ldc.i4.2
    IL_0364:  ldarg.2
    IL_0365:  ldloc.1
    IL_0366:  callvirt   instance bool Game.Block::ShouldGenerateFace(int32,
                                                                      int32,
                                                                      int32)
    IL_036b:  brfalse    IL_04af

    IL_0370:  ldarg.s    subsetsByFace
    IL_0372:  ldc.i4.2
    IL_0373:  ldelem.ref
    IL_0374:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_0379:  stloc.s    V_13
    IL_037b:  ldarg.s    subsetsByFace
    IL_037d:  ldc.i4.2
    IL_037e:  ldelem.ref
    IL_037f:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_0384:  ldarg.1
    IL_0385:  ldc.i4.2
    IL_0386:  ldarg.2
    IL_0387:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_038c:  stloc.s    V_14
    IL_038e:  ldloc.s    V_13
    IL_0390:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_0395:  stloc.s    V_15
    IL_0397:  ldloc.s    V_13
    IL_0399:  dup
    IL_039a:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_039f:  ldc.i4.4
    IL_03a0:  add
    IL_03a1:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
    IL_03a6:  ldarg.0
    IL_03a7:  ldarg.3
    IL_03a8:  ldarg.s    y
    IL_03aa:  ldarg.s    z
    IL_03ac:  ldc.r4     1.
    IL_03b1:  ldc.i4.1
    IL_03b2:  ldloc.s    V_14
    IL_03b4:  ldarg.s    color
    IL_03b6:  ldloc.s    V_13
    IL_03b8:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_03bd:  ldloc.s    V_15
    IL_03bf:  ldelema    Game.TerrainVertex
    IL_03c4:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace2(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_03c9:  ldarg.0
    IL_03ca:  ldarg.3
    IL_03cb:  ldc.i4.1
    IL_03cc:  add
    IL_03cd:  ldarg.s    y
    IL_03cf:  ldarg.s    z
    IL_03d1:  ldc.r4     1.
    IL_03d6:  ldc.i4.0
    IL_03d7:  ldloc.s    V_14
    IL_03d9:  ldarg.s    color
    IL_03db:  ldloc.s    V_13
    IL_03dd:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_03e2:  ldloc.s    V_15
    IL_03e4:  ldc.i4.1
    IL_03e5:  add
    IL_03e6:  ldelema    Game.TerrainVertex
    IL_03eb:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace2(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_03f0:  ldarg.0
    IL_03f1:  ldarg.3
    IL_03f2:  ldc.i4.1
    IL_03f3:  add
    IL_03f4:  ldarg.s    y
    IL_03f6:  ldc.i4.1
    IL_03f7:  add
    IL_03f8:  ldarg.s    z
    IL_03fa:  ldc.r4     1.
    IL_03ff:  ldc.i4.3
    IL_0400:  ldloc.s    V_14
    IL_0402:  ldarg.s    color
    IL_0404:  ldloc.s    V_13
    IL_0406:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_040b:  ldloc.s    V_15
    IL_040d:  ldc.i4.2
    IL_040e:  add
    IL_040f:  ldelema    Game.TerrainVertex
    IL_0414:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace2(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_0419:  ldarg.0
    IL_041a:  ldarg.3
    IL_041b:  ldarg.s    y
    IL_041d:  ldc.i4.1
    IL_041e:  add
    IL_041f:  ldarg.s    z
    IL_0421:  ldc.r4     1.
    IL_0426:  ldc.i4.2
    IL_0427:  ldloc.s    V_14
    IL_0429:  ldarg.s    color
    IL_042b:  ldloc.s    V_13
    IL_042d:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0432:  ldloc.s    V_15
    IL_0434:  ldc.i4.3
    IL_0435:  add
    IL_0436:  ldelema    Game.TerrainVertex
    IL_043b:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace2(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_0440:  dup
    IL_0441:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_0446:  stloc.s    V_16
    IL_0448:  dup
    IL_0449:  dup
    IL_044a:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_044f:  ldc.i4.6
    IL_0450:  add
    IL_0451:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::set_Count(int32)
    IL_0456:  dup
    IL_0457:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_045c:  ldloc.s    V_16
    IL_045e:  ldloc.s    V_15
    IL_0460:  conv.u2
    IL_0461:  stelem.i2
    IL_0462:  dup
    IL_0463:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0468:  ldloc.s    V_16
    IL_046a:  ldc.i4.1
    IL_046b:  add
    IL_046c:  ldloc.s    V_15
    IL_046e:  ldc.i4.1
    IL_046f:  add
    IL_0470:  conv.u2
    IL_0471:  stelem.i2
    IL_0472:  dup
    IL_0473:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0478:  ldloc.s    V_16
    IL_047a:  ldc.i4.2
    IL_047b:  add
    IL_047c:  ldloc.s    V_15
    IL_047e:  ldc.i4.2
    IL_047f:  add
    IL_0480:  conv.u2
    IL_0481:  stelem.i2
    IL_0482:  dup
    IL_0483:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0488:  ldloc.s    V_16
    IL_048a:  ldc.i4.3
    IL_048b:  add
    IL_048c:  ldloc.s    V_15
    IL_048e:  ldc.i4.2
    IL_048f:  add
    IL_0490:  conv.u2
    IL_0491:  stelem.i2
    IL_0492:  dup
    IL_0493:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0498:  ldloc.s    V_16
    IL_049a:  ldc.i4.4
    IL_049b:  add
    IL_049c:  ldloc.s    V_15
    IL_049e:  ldc.i4.3
    IL_049f:  add
    IL_04a0:  conv.u2
    IL_04a1:  stelem.i2
    IL_04a2:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_04a7:  ldloc.s    V_16
    IL_04a9:  ldc.i4.5
    IL_04aa:  add
    IL_04ab:  ldloc.s    V_15
    IL_04ad:  conv.u2
    IL_04ae:  stelem.i2
    IL_04af:  ldloc.s    V_4
    IL_04b1:  ldarg.3
    IL_04b2:  ldc.i4.1
    IL_04b3:  sub
    IL_04b4:  ldc.i4.s   15
    IL_04b6:  and
    IL_04b7:  ldarg.s    y
    IL_04b9:  ldarg.s    z
    IL_04bb:  ldc.i4.s   15
    IL_04bd:  and
    IL_04be:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32,
                                                                            int32,
                                                                            int32)
    IL_04c3:  stloc.1
    IL_04c4:  ldloc.1
    IL_04c5:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_04ca:  ldloc.0
    IL_04cb:  beq        IL_061d

    IL_04d0:  ldarg.1
    IL_04d1:  ldc.i4.3
    IL_04d2:  ldarg.2
    IL_04d3:  ldloc.1
    IL_04d4:  callvirt   instance bool Game.Block::ShouldGenerateFace(int32,
                                                                      int32,
                                                                      int32)
    IL_04d9:  brfalse    IL_061d

    IL_04de:  ldarg.s    subsetsByFace
    IL_04e0:  ldc.i4.3
    IL_04e1:  ldelem.ref
    IL_04e2:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_04e7:  stloc.s    V_17
    IL_04e9:  ldarg.s    subsetsByFace
    IL_04eb:  ldc.i4.3
    IL_04ec:  ldelem.ref
    IL_04ed:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_04f2:  ldarg.1
    IL_04f3:  ldc.i4.3
    IL_04f4:  ldarg.2
    IL_04f5:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_04fa:  stloc.s    V_18
    IL_04fc:  ldloc.s    V_17
    IL_04fe:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_0503:  stloc.s    V_19
    IL_0505:  ldloc.s    V_17
    IL_0507:  dup
    IL_0508:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_050d:  ldc.i4.4
    IL_050e:  add
    IL_050f:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
    IL_0514:  ldarg.0
    IL_0515:  ldarg.3
    IL_0516:  ldarg.s    y
    IL_0518:  ldarg.s    z
    IL_051a:  ldc.r4     1.
    IL_051f:  ldc.i4.0
    IL_0520:  ldloc.s    V_18
    IL_0522:  ldarg.s    color
    IL_0524:  ldloc.s    V_17
    IL_0526:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_052b:  ldloc.s    V_19
    IL_052d:  ldelema    Game.TerrainVertex
    IL_0532:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace3(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_0537:  ldarg.0
    IL_0538:  ldarg.3
    IL_0539:  ldarg.s    y
    IL_053b:  ldc.i4.1
    IL_053c:  add
    IL_053d:  ldarg.s    z
    IL_053f:  ldc.r4     1.
    IL_0544:  ldc.i4.3
    IL_0545:  ldloc.s    V_18
    IL_0547:  ldarg.s    color
    IL_0549:  ldloc.s    V_17
    IL_054b:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0550:  ldloc.s    V_19
    IL_0552:  ldc.i4.1
    IL_0553:  add
    IL_0554:  ldelema    Game.TerrainVertex
    IL_0559:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace3(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_055e:  ldarg.0
    IL_055f:  ldarg.3
    IL_0560:  ldarg.s    y
    IL_0562:  ldc.i4.1
    IL_0563:  add
    IL_0564:  ldarg.s    z
    IL_0566:  ldc.i4.1
    IL_0567:  add
    IL_0568:  ldc.r4     1.
    IL_056d:  ldc.i4.2
    IL_056e:  ldloc.s    V_18
    IL_0570:  ldarg.s    color
    IL_0572:  ldloc.s    V_17
    IL_0574:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0579:  ldloc.s    V_19
    IL_057b:  ldc.i4.2
    IL_057c:  add
    IL_057d:  ldelema    Game.TerrainVertex
    IL_0582:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace3(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_0587:  ldarg.0
    IL_0588:  ldarg.3
    IL_0589:  ldarg.s    y
    IL_058b:  ldarg.s    z
    IL_058d:  ldc.i4.1
    IL_058e:  add
    IL_058f:  ldc.r4     1.
    IL_0594:  ldc.i4.1
    IL_0595:  ldloc.s    V_18
    IL_0597:  ldarg.s    color
    IL_0599:  ldloc.s    V_17
    IL_059b:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_05a0:  ldloc.s    V_19
    IL_05a2:  ldc.i4.3
    IL_05a3:  add
    IL_05a4:  ldelema    Game.TerrainVertex
    IL_05a9:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace3(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_05ae:  dup
    IL_05af:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_05b4:  stloc.s    V_20
    IL_05b6:  dup
    IL_05b7:  dup
    IL_05b8:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_05bd:  ldc.i4.6
    IL_05be:  add
    IL_05bf:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::set_Count(int32)
    IL_05c4:  dup
    IL_05c5:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_05ca:  ldloc.s    V_20
    IL_05cc:  ldloc.s    V_19
    IL_05ce:  conv.u2
    IL_05cf:  stelem.i2
    IL_05d0:  dup
    IL_05d1:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_05d6:  ldloc.s    V_20
    IL_05d8:  ldc.i4.1
    IL_05d9:  add
    IL_05da:  ldloc.s    V_19
    IL_05dc:  ldc.i4.1
    IL_05dd:  add
    IL_05de:  conv.u2
    IL_05df:  stelem.i2
    IL_05e0:  dup
    IL_05e1:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_05e6:  ldloc.s    V_20
    IL_05e8:  ldc.i4.2
    IL_05e9:  add
    IL_05ea:  ldloc.s    V_19
    IL_05ec:  ldc.i4.2
    IL_05ed:  add
    IL_05ee:  conv.u2
    IL_05ef:  stelem.i2
    IL_05f0:  dup
    IL_05f1:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_05f6:  ldloc.s    V_20
    IL_05f8:  ldc.i4.3
    IL_05f9:  add
    IL_05fa:  ldloc.s    V_19
    IL_05fc:  ldc.i4.2
    IL_05fd:  add
    IL_05fe:  conv.u2
    IL_05ff:  stelem.i2
    IL_0600:  dup
    IL_0601:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0606:  ldloc.s    V_20
    IL_0608:  ldc.i4.4
    IL_0609:  add
    IL_060a:  ldloc.s    V_19
    IL_060c:  ldc.i4.3
    IL_060d:  add
    IL_060e:  conv.u2
    IL_060f:  stelem.i2
    IL_0610:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0615:  ldloc.s    V_20
    IL_0617:  ldc.i4.5
    IL_0618:  add
    IL_0619:  ldloc.s    V_19
    IL_061b:  conv.u2
    IL_061c:  stelem.i2
    IL_061d:  dup
    IL_061e:  ldarg.3
    IL_061f:  ldc.i4.s   15
    IL_0621:  and
    IL_0622:  ldarg.s    y
    IL_0624:  ldc.i4.1
    IL_0625:  add
    IL_0626:  ldarg.s    z
    IL_0628:  ldc.i4.s   15
    IL_062a:  and
    IL_062b:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32,
                                                                            int32,
                                                                            int32)
    IL_0630:  stloc.1
    IL_0631:  ldloc.1
    IL_0632:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0637:  ldloc.0
    IL_0638:  beq        IL_0792

    IL_063d:  ldarg.1
    IL_063e:  ldc.i4.4
    IL_063f:  ldarg.2
    IL_0640:  ldloc.1
    IL_0641:  callvirt   instance bool Game.Block::ShouldGenerateFace(int32,
                                                                      int32,
                                                                      int32)
    IL_0646:  brfalse    IL_0792

    IL_064b:  ldarg.s    subsetsByFace
    IL_064d:  ldc.i4.4
    IL_064e:  ldelem.ref
    IL_064f:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_0654:  stloc.s    V_21
    IL_0656:  ldarg.s    subsetsByFace
    IL_0658:  ldc.i4.4
    IL_0659:  ldelem.ref
    IL_065a:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_065f:  ldarg.1
    IL_0660:  ldc.i4.4
    IL_0661:  ldarg.2
    IL_0662:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_0667:  stloc.s    V_22
    IL_0669:  ldloc.s    V_21
    IL_066b:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_0670:  stloc.s    V_23
    IL_0672:  ldloc.s    V_21
    IL_0674:  dup
    IL_0675:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_067a:  ldc.i4.4
    IL_067b:  add
    IL_067c:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
    IL_0681:  ldarg.0
    IL_0682:  ldarg.3
    IL_0683:  ldarg.s    y
    IL_0685:  ldc.i4.1
    IL_0686:  add
    IL_0687:  ldarg.s    z
    IL_0689:  ldc.r4     1.
    IL_068e:  ldc.i4.0
    IL_068f:  ldloc.s    V_22
    IL_0691:  ldarg.s    color
    IL_0693:  ldloc.s    V_21
    IL_0695:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_069a:  ldloc.s    V_23
    IL_069c:  ldelema    Game.TerrainVertex
    IL_06a1:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace4(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_06a6:  ldarg.0
    IL_06a7:  ldarg.3
    IL_06a8:  ldc.i4.1
    IL_06a9:  add
    IL_06aa:  ldarg.s    y
    IL_06ac:  ldc.i4.1
    IL_06ad:  add
    IL_06ae:  ldarg.s    z
    IL_06b0:  ldc.r4     1.
    IL_06b5:  ldc.i4.1
    IL_06b6:  ldloc.s    V_22
    IL_06b8:  ldarg.s    color
    IL_06ba:  ldloc.s    V_21
    IL_06bc:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_06c1:  ldloc.s    V_23
    IL_06c3:  ldc.i4.1
    IL_06c4:  add
    IL_06c5:  ldelema    Game.TerrainVertex
    IL_06ca:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace4(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_06cf:  ldarg.0
    IL_06d0:  ldarg.3
    IL_06d1:  ldc.i4.1
    IL_06d2:  add
    IL_06d3:  ldarg.s    y
    IL_06d5:  ldc.i4.1
    IL_06d6:  add
    IL_06d7:  ldarg.s    z
    IL_06d9:  ldc.i4.1
    IL_06da:  add
    IL_06db:  ldc.r4     1.
    IL_06e0:  ldc.i4.2
    IL_06e1:  ldloc.s    V_22
    IL_06e3:  ldarg.s    color
    IL_06e5:  ldloc.s    V_21
    IL_06e7:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_06ec:  ldloc.s    V_23
    IL_06ee:  ldc.i4.2
    IL_06ef:  add
    IL_06f0:  ldelema    Game.TerrainVertex
    IL_06f5:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace4(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_06fa:  ldarg.0
    IL_06fb:  ldarg.3
    IL_06fc:  ldarg.s    y
    IL_06fe:  ldc.i4.1
    IL_06ff:  add
    IL_0700:  ldarg.s    z
    IL_0702:  ldc.i4.1
    IL_0703:  add
    IL_0704:  ldc.r4     1.
    IL_0709:  ldc.i4.3
    IL_070a:  ldloc.s    V_22
    IL_070c:  ldarg.s    color
    IL_070e:  ldloc.s    V_21
    IL_0710:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0715:  ldloc.s    V_23
    IL_0717:  ldc.i4.3
    IL_0718:  add
    IL_0719:  ldelema    Game.TerrainVertex
    IL_071e:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace4(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_0723:  dup
    IL_0724:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_0729:  stloc.s    V_24
    IL_072b:  dup
    IL_072c:  dup
    IL_072d:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_0732:  ldc.i4.6
    IL_0733:  add
    IL_0734:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::set_Count(int32)
    IL_0739:  dup
    IL_073a:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_073f:  ldloc.s    V_24
    IL_0741:  ldloc.s    V_23
    IL_0743:  conv.u2
    IL_0744:  stelem.i2
    IL_0745:  dup
    IL_0746:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_074b:  ldloc.s    V_24
    IL_074d:  ldc.i4.1
    IL_074e:  add
    IL_074f:  ldloc.s    V_23
    IL_0751:  ldc.i4.1
    IL_0752:  add
    IL_0753:  conv.u2
    IL_0754:  stelem.i2
    IL_0755:  dup
    IL_0756:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_075b:  ldloc.s    V_24
    IL_075d:  ldc.i4.2
    IL_075e:  add
    IL_075f:  ldloc.s    V_23
    IL_0761:  ldc.i4.2
    IL_0762:  add
    IL_0763:  conv.u2
    IL_0764:  stelem.i2
    IL_0765:  dup
    IL_0766:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_076b:  ldloc.s    V_24
    IL_076d:  ldc.i4.3
    IL_076e:  add
    IL_076f:  ldloc.s    V_23
    IL_0771:  ldc.i4.2
    IL_0772:  add
    IL_0773:  conv.u2
    IL_0774:  stelem.i2
    IL_0775:  dup
    IL_0776:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_077b:  ldloc.s    V_24
    IL_077d:  ldc.i4.4
    IL_077e:  add
    IL_077f:  ldloc.s    V_23
    IL_0781:  ldc.i4.3
    IL_0782:  add
    IL_0783:  conv.u2
    IL_0784:  stelem.i2
    IL_0785:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_078a:  ldloc.s    V_24
    IL_078c:  ldc.i4.5
    IL_078d:  add
    IL_078e:  ldloc.s    V_23
    IL_0790:  conv.u2
    IL_0791:  stelem.i2
    IL_0792:  ldarg.3
    IL_0793:  ldc.i4.s   15
    IL_0795:  and
    IL_0796:  ldarg.s    y
    IL_0798:  ldc.i4.1
    IL_0799:  sub
    IL_079a:  ldarg.s    z
    IL_079c:  ldc.i4.s   15
    IL_079e:  and
    IL_079f:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32,
                                                                            int32,
                                                                            int32)
    IL_07a4:  stloc.1
    IL_07a5:  ldloc.1
    IL_07a6:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_07ab:  ldloc.0
    IL_07ac:  beq        IL_08fe

    IL_07b1:  ldarg.1
    IL_07b2:  ldc.i4.5
    IL_07b3:  ldarg.2
    IL_07b4:  ldloc.1
    IL_07b5:  callvirt   instance bool Game.Block::ShouldGenerateFace(int32,
                                                                      int32,
                                                                      int32)
    IL_07ba:  brfalse    IL_08fe

    IL_07bf:  ldarg.s    subsetsByFace
    IL_07c1:  ldc.i4.5
    IL_07c2:  ldelem.ref
    IL_07c3:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_07c8:  stloc.s    V_25
    IL_07ca:  ldarg.s    subsetsByFace
    IL_07cc:  ldc.i4.5
    IL_07cd:  ldelem.ref
    IL_07ce:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_07d3:  ldarg.1
    IL_07d4:  ldc.i4.5
    IL_07d5:  ldarg.2
    IL_07d6:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_07db:  stloc.s    V_26
    IL_07dd:  ldloc.s    V_25
    IL_07df:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_07e4:  stloc.s    V_27
    IL_07e6:  ldloc.s    V_25
    IL_07e8:  dup
    IL_07e9:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_07ee:  ldc.i4.4
    IL_07ef:  add
    IL_07f0:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
    IL_07f5:  ldarg.0
    IL_07f6:  ldarg.3
    IL_07f7:  ldarg.s    y
    IL_07f9:  ldarg.s    z
    IL_07fb:  ldc.r4     1.
    IL_0800:  ldc.i4.0
    IL_0801:  ldloc.s    V_26
    IL_0803:  ldarg.s    color
    IL_0805:  ldloc.s    V_25
    IL_0807:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_080c:  ldloc.s    V_27
    IL_080e:  ldelema    Game.TerrainVertex
    IL_0813:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace5(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_0818:  ldarg.0
    IL_0819:  ldarg.3
    IL_081a:  ldc.i4.1
    IL_081b:  add
    IL_081c:  ldarg.s    y
    IL_081e:  ldarg.s    z
    IL_0820:  ldc.r4     1.
    IL_0825:  ldc.i4.1
    IL_0826:  ldloc.s    V_26
    IL_0828:  ldarg.s    color
    IL_082a:  ldloc.s    V_25
    IL_082c:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0831:  ldloc.s    V_27
    IL_0833:  ldc.i4.1
    IL_0834:  add
    IL_0835:  ldelema    Game.TerrainVertex
    IL_083a:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace5(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_083f:  ldarg.0
    IL_0840:  ldarg.3
    IL_0841:  ldc.i4.1
    IL_0842:  add
    IL_0843:  ldarg.s    y
    IL_0845:  ldarg.s    z
    IL_0847:  ldc.i4.1
    IL_0848:  add
    IL_0849:  ldc.r4     1.
    IL_084e:  ldc.i4.2
    IL_084f:  ldloc.s    V_26
    IL_0851:  ldarg.s    color
    IL_0853:  ldloc.s    V_25
    IL_0855:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_085a:  ldloc.s    V_27
    IL_085c:  ldc.i4.2
    IL_085d:  add
    IL_085e:  ldelema    Game.TerrainVertex
    IL_0863:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace5(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_0868:  ldarg.0
    IL_0869:  ldarg.3
    IL_086a:  ldarg.s    y
    IL_086c:  ldarg.s    z
    IL_086e:  ldc.i4.1
    IL_086f:  add
    IL_0870:  ldc.r4     1.
    IL_0875:  ldc.i4.3
    IL_0876:  ldloc.s    V_26
    IL_0878:  ldarg.s    color
    IL_087a:  ldloc.s    V_25
    IL_087c:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0881:  ldloc.s    V_27
    IL_0883:  ldc.i4.3
    IL_0884:  add
    IL_0885:  ldelema    Game.TerrainVertex
    IL_088a:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace5(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_088f:  dup
    IL_0890:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_0895:  stloc.s    V_28
    IL_0897:  dup
    IL_0898:  dup
    IL_0899:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_089e:  ldc.i4.6
    IL_089f:  add
    IL_08a0:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::set_Count(int32)
    IL_08a5:  dup
    IL_08a6:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_08ab:  ldloc.s    V_28
    IL_08ad:  ldloc.s    V_27
    IL_08af:  conv.u2
    IL_08b0:  stelem.i2
    IL_08b1:  dup
    IL_08b2:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_08b7:  ldloc.s    V_28
    IL_08b9:  ldc.i4.1
    IL_08ba:  add
    IL_08bb:  ldloc.s    V_27
    IL_08bd:  ldc.i4.2
    IL_08be:  add
    IL_08bf:  conv.u2
    IL_08c0:  stelem.i2
    IL_08c1:  dup
    IL_08c2:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_08c7:  ldloc.s    V_28
    IL_08c9:  ldc.i4.2
    IL_08ca:  add
    IL_08cb:  ldloc.s    V_27
    IL_08cd:  ldc.i4.1
    IL_08ce:  add
    IL_08cf:  conv.u2
    IL_08d0:  stelem.i2
    IL_08d1:  dup
    IL_08d2:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_08d7:  ldloc.s    V_28
    IL_08d9:  ldc.i4.3
    IL_08da:  add
    IL_08db:  ldloc.s    V_27
    IL_08dd:  ldc.i4.2
    IL_08de:  add
    IL_08df:  conv.u2
    IL_08e0:  stelem.i2
    IL_08e1:  dup
    IL_08e2:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_08e7:  ldloc.s    V_28
    IL_08e9:  ldc.i4.4
    IL_08ea:  add
    IL_08eb:  ldloc.s    V_27
    IL_08ed:  conv.u2
    IL_08ee:  stelem.i2
    IL_08ef:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_08f4:  ldloc.s    V_28
    IL_08f6:  ldc.i4.5
    IL_08f7:  add
    IL_08f8:  ldloc.s    V_27
    IL_08fa:  ldc.i4.3
    IL_08fb:  add
    IL_08fc:  conv.u2
    IL_08fd:  stelem.i2
    IL_08fe:  ret
  } // end of method BlockGeometryGenerator::GenerateCubeVertices

  .method public hidebysig instance void 
          GenerateCubeVertices(class Game.Block block,
                               int32 'value',
                               int32 x,
                               int32 y,
                               int32 z,
                               float32 height11,
                               float32 height21,
                               float32 height22,
                               float32 height12,
                               valuetype [Engine]Engine.Color sideColor,
                               valuetype [Engine]Engine.Color topColor11,
                               valuetype [Engine]Engine.Color topColor21,
                               valuetype [Engine]Engine.Color topColor22,
                               valuetype [Engine]Engine.Color topColor12,
                               class Game.TerrainGeometrySubset[] subsetsByFace) cil managed
  {
    // 代码大小       2300 (0x8fc)
    .maxstack  13
    .locals init (int32 V_0,
             int32 V_1,
             class Game.TerrainChunk V_2,
             class Game.TerrainChunk V_3,
             class Game.TerrainChunk V_4,
             class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> V_9,
             int32 V_10,
             int32 V_11,
             int32 V_12,
             class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> V_13,
             int32 V_14,
             int32 V_15,
             int32 V_16,
             class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> V_17,
             int32 V_18,
             int32 V_19,
             int32 V_20,
             class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> V_21,
             int32 V_22,
             int32 V_23,
             int32 V_24,
             class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> V_25,
             int32 V_26,
             int32 V_27,
             int32 V_28)
    IL_0000:  ldarg.1
    IL_0001:  ldfld      int32 Game.Block::BlockIndex
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_000d:  ldarg.3
    IL_000e:  ldarg.s    z
    IL_0010:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                       int32)
    IL_0015:  ldarg.0
    IL_0016:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_001b:  ldarg.3
    IL_001c:  ldarg.s    z
    IL_001e:  ldc.i4.1
    IL_001f:  add
    IL_0020:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                       int32)
    IL_0025:  ldarg.0
    IL_0026:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_002b:  ldarg.3
    IL_002c:  ldc.i4.1
    IL_002d:  add
    IL_002e:  ldarg.s    z
    IL_0030:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                       int32)
    IL_0035:  stloc.2
    IL_0036:  ldarg.0
    IL_0037:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_003c:  ldarg.3
    IL_003d:  ldarg.s    z
    IL_003f:  ldc.i4.1
    IL_0040:  sub
    IL_0041:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                       int32)
    IL_0046:  stloc.3
    IL_0047:  ldarg.0
    IL_0048:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_004d:  ldarg.3
    IL_004e:  ldc.i4.1
    IL_004f:  sub
    IL_0050:  ldarg.s    z
    IL_0052:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                       int32)
    IL_0057:  stloc.s    V_4
    IL_0059:  ldarg.3
    IL_005a:  ldc.i4.s   15
    IL_005c:  and
    IL_005d:  ldarg.s    y
    IL_005f:  ldarg.s    z
    IL_0061:  ldc.i4.1
    IL_0062:  add
    IL_0063:  ldc.i4.s   15
    IL_0065:  and
    IL_0066:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32,
                                                                            int32,
                                                                            int32)
    IL_006b:  stloc.1
    IL_006c:  ldloc.1
    IL_006d:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0072:  ldloc.0
    IL_0073:  beq        IL_01c7

    IL_0078:  ldarg.1
    IL_0079:  ldc.i4.0
    IL_007a:  ldarg.2
    IL_007b:  ldloc.1
    IL_007c:  callvirt   instance bool Game.Block::ShouldGenerateFace(int32,
                                                                      int32,
                                                                      int32)
    IL_0081:  brfalse    IL_01c7

    IL_0086:  ldarg.s    subsetsByFace
    IL_0088:  ldc.i4.0
    IL_0089:  ldelem.ref
    IL_008a:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_008f:  stloc.s    V_5
    IL_0091:  ldarg.s    subsetsByFace
    IL_0093:  ldc.i4.0
    IL_0094:  ldelem.ref
    IL_0095:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_009a:  ldarg.1
    IL_009b:  ldc.i4.0
    IL_009c:  ldarg.2
    IL_009d:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_00a2:  stloc.s    V_6
    IL_00a4:  ldloc.s    V_5
    IL_00a6:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_00ab:  stloc.s    V_7
    IL_00ad:  ldloc.s    V_5
    IL_00af:  dup
    IL_00b0:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_00b5:  ldc.i4.4
    IL_00b6:  add
    IL_00b7:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
    IL_00bc:  ldarg.0
    IL_00bd:  ldarg.3
    IL_00be:  ldarg.s    y
    IL_00c0:  ldarg.s    z
    IL_00c2:  ldc.i4.1
    IL_00c3:  add
    IL_00c4:  ldc.r4     1.
    IL_00c9:  ldc.i4.0
    IL_00ca:  ldloc.s    V_6
    IL_00cc:  ldarg.s    sideColor
    IL_00ce:  ldloc.s    V_5
    IL_00d0:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_00d5:  ldloc.s    V_7
    IL_00d7:  ldelema    Game.TerrainVertex
    IL_00dc:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace0(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_00e1:  ldarg.0
    IL_00e2:  ldarg.3
    IL_00e3:  ldc.i4.1
    IL_00e4:  add
    IL_00e5:  ldarg.s    y
    IL_00e7:  ldarg.s    z
    IL_00e9:  ldc.i4.1
    IL_00ea:  add
    IL_00eb:  ldc.r4     1.
    IL_00f0:  ldc.i4.1
    IL_00f1:  ldloc.s    V_6
    IL_00f3:  ldarg.s    sideColor
    IL_00f5:  ldloc.s    V_5
    IL_00f7:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_00fc:  ldloc.s    V_7
    IL_00fe:  ldc.i4.1
    IL_00ff:  add
    IL_0100:  ldelema    Game.TerrainVertex
    IL_0105:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace0(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_010a:  ldarg.0
    IL_010b:  ldarg.3
    IL_010c:  ldc.i4.1
    IL_010d:  add
    IL_010e:  ldarg.s    y
    IL_0110:  ldc.i4.1
    IL_0111:  add
    IL_0112:  ldarg.s    z
    IL_0114:  ldc.i4.1
    IL_0115:  add
    IL_0116:  ldarg.s    height22
    IL_0118:  ldc.i4.2
    IL_0119:  ldloc.s    V_6
    IL_011b:  ldarg.s    sideColor
    IL_011d:  ldloc.s    V_5
    IL_011f:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0124:  ldloc.s    V_7
    IL_0126:  ldc.i4.2
    IL_0127:  add
    IL_0128:  ldelema    Game.TerrainVertex
    IL_012d:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace0(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_0132:  ldarg.0
    IL_0133:  ldarg.3
    IL_0134:  ldarg.s    y
    IL_0136:  ldc.i4.1
    IL_0137:  add
    IL_0138:  ldarg.s    z
    IL_013a:  ldc.i4.1
    IL_013b:  add
    IL_013c:  ldarg.s    height12
    IL_013e:  ldc.i4.3
    IL_013f:  ldloc.s    V_6
    IL_0141:  ldarg.s    sideColor
    IL_0143:  ldloc.s    V_5
    IL_0145:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_014a:  ldloc.s    V_7
    IL_014c:  ldc.i4.3
    IL_014d:  add
    IL_014e:  ldelema    Game.TerrainVertex
    IL_0153:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace0(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_0158:  dup
    IL_0159:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_015e:  stloc.s    V_8
    IL_0160:  dup
    IL_0161:  dup
    IL_0162:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_0167:  ldc.i4.6
    IL_0168:  add
    IL_0169:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::set_Count(int32)
    IL_016e:  dup
    IL_016f:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0174:  ldloc.s    V_8
    IL_0176:  ldloc.s    V_7
    IL_0178:  conv.u2
    IL_0179:  stelem.i2
    IL_017a:  dup
    IL_017b:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0180:  ldloc.s    V_8
    IL_0182:  ldc.i4.1
    IL_0183:  add
    IL_0184:  ldloc.s    V_7
    IL_0186:  ldc.i4.2
    IL_0187:  add
    IL_0188:  conv.u2
    IL_0189:  stelem.i2
    IL_018a:  dup
    IL_018b:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0190:  ldloc.s    V_8
    IL_0192:  ldc.i4.2
    IL_0193:  add
    IL_0194:  ldloc.s    V_7
    IL_0196:  ldc.i4.1
    IL_0197:  add
    IL_0198:  conv.u2
    IL_0199:  stelem.i2
    IL_019a:  dup
    IL_019b:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_01a0:  ldloc.s    V_8
    IL_01a2:  ldc.i4.3
    IL_01a3:  add
    IL_01a4:  ldloc.s    V_7
    IL_01a6:  ldc.i4.2
    IL_01a7:  add
    IL_01a8:  conv.u2
    IL_01a9:  stelem.i2
    IL_01aa:  dup
    IL_01ab:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_01b0:  ldloc.s    V_8
    IL_01b2:  ldc.i4.4
    IL_01b3:  add
    IL_01b4:  ldloc.s    V_7
    IL_01b6:  conv.u2
    IL_01b7:  stelem.i2
    IL_01b8:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_01bd:  ldloc.s    V_8
    IL_01bf:  ldc.i4.5
    IL_01c0:  add
    IL_01c1:  ldloc.s    V_7
    IL_01c3:  ldc.i4.3
    IL_01c4:  add
    IL_01c5:  conv.u2
    IL_01c6:  stelem.i2
    IL_01c7:  ldloc.2
    IL_01c8:  ldarg.3
    IL_01c9:  ldc.i4.1
    IL_01ca:  add
    IL_01cb:  ldc.i4.s   15
    IL_01cd:  and
    IL_01ce:  ldarg.s    y
    IL_01d0:  ldarg.s    z
    IL_01d2:  ldc.i4.s   15
    IL_01d4:  and
    IL_01d5:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32,
                                                                            int32,
                                                                            int32)
    IL_01da:  stloc.1
    IL_01db:  ldloc.1
    IL_01dc:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_01e1:  ldloc.0
    IL_01e2:  beq        IL_0336

    IL_01e7:  ldarg.1
    IL_01e8:  ldc.i4.1
    IL_01e9:  ldarg.2
    IL_01ea:  ldloc.1
    IL_01eb:  callvirt   instance bool Game.Block::ShouldGenerateFace(int32,
                                                                      int32,
                                                                      int32)
    IL_01f0:  brfalse    IL_0336

    IL_01f5:  ldarg.s    subsetsByFace
    IL_01f7:  ldc.i4.1
    IL_01f8:  ldelem.ref
    IL_01f9:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_01fe:  stloc.s    V_9
    IL_0200:  ldarg.s    subsetsByFace
    IL_0202:  ldc.i4.1
    IL_0203:  ldelem.ref
    IL_0204:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_0209:  ldarg.1
    IL_020a:  ldc.i4.1
    IL_020b:  ldarg.2
    IL_020c:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_0211:  stloc.s    V_10
    IL_0213:  ldloc.s    V_9
    IL_0215:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_021a:  stloc.s    V_11
    IL_021c:  ldloc.s    V_9
    IL_021e:  dup
    IL_021f:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_0224:  ldc.i4.4
    IL_0225:  add
    IL_0226:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
    IL_022b:  ldarg.0
    IL_022c:  ldarg.3
    IL_022d:  ldc.i4.1
    IL_022e:  add
    IL_022f:  ldarg.s    y
    IL_0231:  ldarg.s    z
    IL_0233:  ldc.r4     1.
    IL_0238:  ldc.i4.1
    IL_0239:  ldloc.s    V_10
    IL_023b:  ldarg.s    sideColor
    IL_023d:  ldloc.s    V_9
    IL_023f:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0244:  ldloc.s    V_11
    IL_0246:  ldelema    Game.TerrainVertex
    IL_024b:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace1(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_0250:  ldarg.0
    IL_0251:  ldarg.3
    IL_0252:  ldc.i4.1
    IL_0253:  add
    IL_0254:  ldarg.s    y
    IL_0256:  ldc.i4.1
    IL_0257:  add
    IL_0258:  ldarg.s    z
    IL_025a:  ldarg.s    height21
    IL_025c:  ldc.i4.2
    IL_025d:  ldloc.s    V_10
    IL_025f:  ldarg.s    sideColor
    IL_0261:  ldloc.s    V_9
    IL_0263:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0268:  ldloc.s    V_11
    IL_026a:  ldc.i4.1
    IL_026b:  add
    IL_026c:  ldelema    Game.TerrainVertex
    IL_0271:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace1(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_0276:  ldarg.0
    IL_0277:  ldarg.3
    IL_0278:  ldc.i4.1
    IL_0279:  add
    IL_027a:  ldarg.s    y
    IL_027c:  ldc.i4.1
    IL_027d:  add
    IL_027e:  ldarg.s    z
    IL_0280:  ldc.i4.1
    IL_0281:  add
    IL_0282:  ldarg.s    height22
    IL_0284:  ldc.i4.3
    IL_0285:  ldloc.s    V_10
    IL_0287:  ldarg.s    sideColor
    IL_0289:  ldloc.s    V_9
    IL_028b:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0290:  ldloc.s    V_11
    IL_0292:  ldc.i4.2
    IL_0293:  add
    IL_0294:  ldelema    Game.TerrainVertex
    IL_0299:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace1(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_029e:  ldarg.0
    IL_029f:  ldarg.3
    IL_02a0:  ldc.i4.1
    IL_02a1:  add
    IL_02a2:  ldarg.s    y
    IL_02a4:  ldarg.s    z
    IL_02a6:  ldc.i4.1
    IL_02a7:  add
    IL_02a8:  ldc.r4     1.
    IL_02ad:  ldc.i4.0
    IL_02ae:  ldloc.s    V_10
    IL_02b0:  ldarg.s    sideColor
    IL_02b2:  ldloc.s    V_9
    IL_02b4:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_02b9:  ldloc.s    V_11
    IL_02bb:  ldc.i4.3
    IL_02bc:  add
    IL_02bd:  ldelema    Game.TerrainVertex
    IL_02c2:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace1(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_02c7:  dup
    IL_02c8:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_02cd:  stloc.s    V_12
    IL_02cf:  dup
    IL_02d0:  dup
    IL_02d1:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_02d6:  ldc.i4.6
    IL_02d7:  add
    IL_02d8:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::set_Count(int32)
    IL_02dd:  dup
    IL_02de:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_02e3:  ldloc.s    V_12
    IL_02e5:  ldloc.s    V_11
    IL_02e7:  conv.u2
    IL_02e8:  stelem.i2
    IL_02e9:  dup
    IL_02ea:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_02ef:  ldloc.s    V_12
    IL_02f1:  ldc.i4.1
    IL_02f2:  add
    IL_02f3:  ldloc.s    V_11
    IL_02f5:  ldc.i4.2
    IL_02f6:  add
    IL_02f7:  conv.u2
    IL_02f8:  stelem.i2
    IL_02f9:  dup
    IL_02fa:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_02ff:  ldloc.s    V_12
    IL_0301:  ldc.i4.2
    IL_0302:  add
    IL_0303:  ldloc.s    V_11
    IL_0305:  ldc.i4.1
    IL_0306:  add
    IL_0307:  conv.u2
    IL_0308:  stelem.i2
    IL_0309:  dup
    IL_030a:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_030f:  ldloc.s    V_12
    IL_0311:  ldc.i4.3
    IL_0312:  add
    IL_0313:  ldloc.s    V_11
    IL_0315:  ldc.i4.2
    IL_0316:  add
    IL_0317:  conv.u2
    IL_0318:  stelem.i2
    IL_0319:  dup
    IL_031a:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_031f:  ldloc.s    V_12
    IL_0321:  ldc.i4.4
    IL_0322:  add
    IL_0323:  ldloc.s    V_11
    IL_0325:  conv.u2
    IL_0326:  stelem.i2
    IL_0327:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_032c:  ldloc.s    V_12
    IL_032e:  ldc.i4.5
    IL_032f:  add
    IL_0330:  ldloc.s    V_11
    IL_0332:  ldc.i4.3
    IL_0333:  add
    IL_0334:  conv.u2
    IL_0335:  stelem.i2
    IL_0336:  ldloc.3
    IL_0337:  ldarg.3
    IL_0338:  ldc.i4.s   15
    IL_033a:  and
    IL_033b:  ldarg.s    y
    IL_033d:  ldarg.s    z
    IL_033f:  ldc.i4.1
    IL_0340:  sub
    IL_0341:  ldc.i4.s   15
    IL_0343:  and
    IL_0344:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32,
                                                                            int32,
                                                                            int32)
    IL_0349:  stloc.1
    IL_034a:  ldloc.1
    IL_034b:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0350:  ldloc.0
    IL_0351:  beq        IL_049d

    IL_0356:  ldarg.1
    IL_0357:  ldc.i4.2
    IL_0358:  ldarg.2
    IL_0359:  ldloc.1
    IL_035a:  callvirt   instance bool Game.Block::ShouldGenerateFace(int32,
                                                                      int32,
                                                                      int32)
    IL_035f:  brfalse    IL_049d

    IL_0364:  ldarg.s    subsetsByFace
    IL_0366:  ldc.i4.2
    IL_0367:  ldelem.ref
    IL_0368:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_036d:  stloc.s    V_13
    IL_036f:  ldarg.s    subsetsByFace
    IL_0371:  ldc.i4.2
    IL_0372:  ldelem.ref
    IL_0373:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_0378:  ldarg.1
    IL_0379:  ldc.i4.2
    IL_037a:  ldarg.2
    IL_037b:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_0380:  stloc.s    V_14
    IL_0382:  ldloc.s    V_13
    IL_0384:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_0389:  stloc.s    V_15
    IL_038b:  ldloc.s    V_13
    IL_038d:  dup
    IL_038e:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_0393:  ldc.i4.4
    IL_0394:  add
    IL_0395:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
    IL_039a:  ldarg.0
    IL_039b:  ldarg.3
    IL_039c:  ldarg.s    y
    IL_039e:  ldarg.s    z
    IL_03a0:  ldc.r4     1.
    IL_03a5:  ldc.i4.1
    IL_03a6:  ldloc.s    V_14
    IL_03a8:  ldarg.s    sideColor
    IL_03aa:  ldloc.s    V_13
    IL_03ac:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_03b1:  ldloc.s    V_15
    IL_03b3:  ldelema    Game.TerrainVertex
    IL_03b8:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace2(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_03bd:  ldarg.0
    IL_03be:  ldarg.3
    IL_03bf:  ldc.i4.1
    IL_03c0:  add
    IL_03c1:  ldarg.s    y
    IL_03c3:  ldarg.s    z
    IL_03c5:  ldc.r4     1.
    IL_03ca:  ldc.i4.0
    IL_03cb:  ldloc.s    V_14
    IL_03cd:  ldarg.s    sideColor
    IL_03cf:  ldloc.s    V_13
    IL_03d1:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_03d6:  ldloc.s    V_15
    IL_03d8:  ldc.i4.1
    IL_03d9:  add
    IL_03da:  ldelema    Game.TerrainVertex
    IL_03df:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace2(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_03e4:  ldarg.0
    IL_03e5:  ldarg.3
    IL_03e6:  ldc.i4.1
    IL_03e7:  add
    IL_03e8:  ldarg.s    y
    IL_03ea:  ldc.i4.1
    IL_03eb:  add
    IL_03ec:  ldarg.s    z
    IL_03ee:  ldarg.s    height21
    IL_03f0:  ldc.i4.3
    IL_03f1:  ldloc.s    V_14
    IL_03f3:  ldarg.s    sideColor
    IL_03f5:  ldloc.s    V_13
    IL_03f7:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_03fc:  ldloc.s    V_15
    IL_03fe:  ldc.i4.2
    IL_03ff:  add
    IL_0400:  ldelema    Game.TerrainVertex
    IL_0405:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace2(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_040a:  ldarg.0
    IL_040b:  ldarg.3
    IL_040c:  ldarg.s    y
    IL_040e:  ldc.i4.1
    IL_040f:  add
    IL_0410:  ldarg.s    z
    IL_0412:  ldarg.s    height11
    IL_0414:  ldc.i4.2
    IL_0415:  ldloc.s    V_14
    IL_0417:  ldarg.s    sideColor
    IL_0419:  ldloc.s    V_13
    IL_041b:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0420:  ldloc.s    V_15
    IL_0422:  ldc.i4.3
    IL_0423:  add
    IL_0424:  ldelema    Game.TerrainVertex
    IL_0429:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace2(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_042e:  dup
    IL_042f:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_0434:  stloc.s    V_16
    IL_0436:  dup
    IL_0437:  dup
    IL_0438:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_043d:  ldc.i4.6
    IL_043e:  add
    IL_043f:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::set_Count(int32)
    IL_0444:  dup
    IL_0445:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_044a:  ldloc.s    V_16
    IL_044c:  ldloc.s    V_15
    IL_044e:  conv.u2
    IL_044f:  stelem.i2
    IL_0450:  dup
    IL_0451:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0456:  ldloc.s    V_16
    IL_0458:  ldc.i4.1
    IL_0459:  add
    IL_045a:  ldloc.s    V_15
    IL_045c:  ldc.i4.1
    IL_045d:  add
    IL_045e:  conv.u2
    IL_045f:  stelem.i2
    IL_0460:  dup
    IL_0461:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0466:  ldloc.s    V_16
    IL_0468:  ldc.i4.2
    IL_0469:  add
    IL_046a:  ldloc.s    V_15
    IL_046c:  ldc.i4.2
    IL_046d:  add
    IL_046e:  conv.u2
    IL_046f:  stelem.i2
    IL_0470:  dup
    IL_0471:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0476:  ldloc.s    V_16
    IL_0478:  ldc.i4.3
    IL_0479:  add
    IL_047a:  ldloc.s    V_15
    IL_047c:  ldc.i4.2
    IL_047d:  add
    IL_047e:  conv.u2
    IL_047f:  stelem.i2
    IL_0480:  dup
    IL_0481:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0486:  ldloc.s    V_16
    IL_0488:  ldc.i4.4
    IL_0489:  add
    IL_048a:  ldloc.s    V_15
    IL_048c:  ldc.i4.3
    IL_048d:  add
    IL_048e:  conv.u2
    IL_048f:  stelem.i2
    IL_0490:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0495:  ldloc.s    V_16
    IL_0497:  ldc.i4.5
    IL_0498:  add
    IL_0499:  ldloc.s    V_15
    IL_049b:  conv.u2
    IL_049c:  stelem.i2
    IL_049d:  ldloc.s    V_4
    IL_049f:  ldarg.3
    IL_04a0:  ldc.i4.1
    IL_04a1:  sub
    IL_04a2:  ldc.i4.s   15
    IL_04a4:  and
    IL_04a5:  ldarg.s    y
    IL_04a7:  ldarg.s    z
    IL_04a9:  ldc.i4.s   15
    IL_04ab:  and
    IL_04ac:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32,
                                                                            int32,
                                                                            int32)
    IL_04b1:  stloc.1
    IL_04b2:  ldloc.1
    IL_04b3:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_04b8:  ldloc.0
    IL_04b9:  beq        IL_0605

    IL_04be:  ldarg.1
    IL_04bf:  ldc.i4.3
    IL_04c0:  ldarg.2
    IL_04c1:  ldloc.1
    IL_04c2:  callvirt   instance bool Game.Block::ShouldGenerateFace(int32,
                                                                      int32,
                                                                      int32)
    IL_04c7:  brfalse    IL_0605

    IL_04cc:  ldarg.s    subsetsByFace
    IL_04ce:  ldc.i4.3
    IL_04cf:  ldelem.ref
    IL_04d0:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_04d5:  stloc.s    V_17
    IL_04d7:  ldarg.s    subsetsByFace
    IL_04d9:  ldc.i4.3
    IL_04da:  ldelem.ref
    IL_04db:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_04e0:  ldarg.1
    IL_04e1:  ldc.i4.3
    IL_04e2:  ldarg.2
    IL_04e3:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_04e8:  stloc.s    V_18
    IL_04ea:  ldloc.s    V_17
    IL_04ec:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_04f1:  stloc.s    V_19
    IL_04f3:  ldloc.s    V_17
    IL_04f5:  dup
    IL_04f6:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_04fb:  ldc.i4.4
    IL_04fc:  add
    IL_04fd:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
    IL_0502:  ldarg.0
    IL_0503:  ldarg.3
    IL_0504:  ldarg.s    y
    IL_0506:  ldarg.s    z
    IL_0508:  ldc.r4     1.
    IL_050d:  ldc.i4.0
    IL_050e:  ldloc.s    V_18
    IL_0510:  ldarg.s    sideColor
    IL_0512:  ldloc.s    V_17
    IL_0514:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0519:  ldloc.s    V_19
    IL_051b:  ldelema    Game.TerrainVertex
    IL_0520:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace3(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_0525:  ldarg.0
    IL_0526:  ldarg.3
    IL_0527:  ldarg.s    y
    IL_0529:  ldc.i4.1
    IL_052a:  add
    IL_052b:  ldarg.s    z
    IL_052d:  ldarg.s    height11
    IL_052f:  ldc.i4.3
    IL_0530:  ldloc.s    V_18
    IL_0532:  ldarg.s    sideColor
    IL_0534:  ldloc.s    V_17
    IL_0536:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_053b:  ldloc.s    V_19
    IL_053d:  ldc.i4.1
    IL_053e:  add
    IL_053f:  ldelema    Game.TerrainVertex
    IL_0544:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace3(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_0549:  ldarg.0
    IL_054a:  ldarg.3
    IL_054b:  ldarg.s    y
    IL_054d:  ldc.i4.1
    IL_054e:  add
    IL_054f:  ldarg.s    z
    IL_0551:  ldc.i4.1
    IL_0552:  add
    IL_0553:  ldarg.s    height12
    IL_0555:  ldc.i4.2
    IL_0556:  ldloc.s    V_18
    IL_0558:  ldarg.s    sideColor
    IL_055a:  ldloc.s    V_17
    IL_055c:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0561:  ldloc.s    V_19
    IL_0563:  ldc.i4.2
    IL_0564:  add
    IL_0565:  ldelema    Game.TerrainVertex
    IL_056a:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace3(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_056f:  ldarg.0
    IL_0570:  ldarg.3
    IL_0571:  ldarg.s    y
    IL_0573:  ldarg.s    z
    IL_0575:  ldc.i4.1
    IL_0576:  add
    IL_0577:  ldc.r4     1.
    IL_057c:  ldc.i4.1
    IL_057d:  ldloc.s    V_18
    IL_057f:  ldarg.s    sideColor
    IL_0581:  ldloc.s    V_17
    IL_0583:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0588:  ldloc.s    V_19
    IL_058a:  ldc.i4.3
    IL_058b:  add
    IL_058c:  ldelema    Game.TerrainVertex
    IL_0591:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace3(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_0596:  dup
    IL_0597:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_059c:  stloc.s    V_20
    IL_059e:  dup
    IL_059f:  dup
    IL_05a0:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_05a5:  ldc.i4.6
    IL_05a6:  add
    IL_05a7:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::set_Count(int32)
    IL_05ac:  dup
    IL_05ad:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_05b2:  ldloc.s    V_20
    IL_05b4:  ldloc.s    V_19
    IL_05b6:  conv.u2
    IL_05b7:  stelem.i2
    IL_05b8:  dup
    IL_05b9:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_05be:  ldloc.s    V_20
    IL_05c0:  ldc.i4.1
    IL_05c1:  add
    IL_05c2:  ldloc.s    V_19
    IL_05c4:  ldc.i4.1
    IL_05c5:  add
    IL_05c6:  conv.u2
    IL_05c7:  stelem.i2
    IL_05c8:  dup
    IL_05c9:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_05ce:  ldloc.s    V_20
    IL_05d0:  ldc.i4.2
    IL_05d1:  add
    IL_05d2:  ldloc.s    V_19
    IL_05d4:  ldc.i4.2
    IL_05d5:  add
    IL_05d6:  conv.u2
    IL_05d7:  stelem.i2
    IL_05d8:  dup
    IL_05d9:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_05de:  ldloc.s    V_20
    IL_05e0:  ldc.i4.3
    IL_05e1:  add
    IL_05e2:  ldloc.s    V_19
    IL_05e4:  ldc.i4.2
    IL_05e5:  add
    IL_05e6:  conv.u2
    IL_05e7:  stelem.i2
    IL_05e8:  dup
    IL_05e9:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_05ee:  ldloc.s    V_20
    IL_05f0:  ldc.i4.4
    IL_05f1:  add
    IL_05f2:  ldloc.s    V_19
    IL_05f4:  ldc.i4.3
    IL_05f5:  add
    IL_05f6:  conv.u2
    IL_05f7:  stelem.i2
    IL_05f8:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_05fd:  ldloc.s    V_20
    IL_05ff:  ldc.i4.5
    IL_0600:  add
    IL_0601:  ldloc.s    V_19
    IL_0603:  conv.u2
    IL_0604:  stelem.i2
    IL_0605:  dup
    IL_0606:  ldarg.3
    IL_0607:  ldc.i4.s   15
    IL_0609:  and
    IL_060a:  ldarg.s    y
    IL_060c:  ldc.i4.1
    IL_060d:  add
    IL_060e:  ldarg.s    z
    IL_0610:  ldc.i4.s   15
    IL_0612:  and
    IL_0613:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32,
                                                                            int32,
                                                                            int32)
    IL_0618:  stloc.1
    IL_0619:  ldloc.1
    IL_061a:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_061f:  ldloc.0
    IL_0620:  beq.s      IL_062d

    IL_0622:  ldarg.1
    IL_0623:  ldc.i4.4
    IL_0624:  ldarg.2
    IL_0625:  ldloc.1
    IL_0626:  callvirt   instance bool Game.Block::ShouldGenerateFace(int32,
                                                                      int32,
                                                                      int32)
    IL_062b:  brtrue.s   IL_0654

    IL_062d:  ldarg.s    height11
    IL_062f:  ldc.r4     1.
    IL_0634:  blt.s      IL_0654

    IL_0636:  ldarg.s    height12
    IL_0638:  ldc.r4     1.
    IL_063d:  blt.s      IL_0654

    IL_063f:  ldarg.s    height21
    IL_0641:  ldc.r4     1.
    IL_0646:  blt.s      IL_0654

    IL_0648:  ldarg.s    height22
    IL_064a:  ldc.r4     1.
    IL_064f:  bge.un     IL_078f

    IL_0654:  ldarg.s    subsetsByFace
    IL_0656:  ldc.i4.4
    IL_0657:  ldelem.ref
    IL_0658:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_065d:  stloc.s    V_21
    IL_065f:  ldarg.s    subsetsByFace
    IL_0661:  ldc.i4.4
    IL_0662:  ldelem.ref
    IL_0663:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_0668:  ldarg.1
    IL_0669:  ldc.i4.4
    IL_066a:  ldarg.2
    IL_066b:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_0670:  stloc.s    V_22
    IL_0672:  ldloc.s    V_21
    IL_0674:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_0679:  stloc.s    V_23
    IL_067b:  ldloc.s    V_21
    IL_067d:  dup
    IL_067e:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_0683:  ldc.i4.4
    IL_0684:  add
    IL_0685:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
    IL_068a:  ldarg.0
    IL_068b:  ldarg.3
    IL_068c:  ldarg.s    y
    IL_068e:  ldc.i4.1
    IL_068f:  add
    IL_0690:  ldarg.s    z
    IL_0692:  ldarg.s    height11
    IL_0694:  ldc.i4.0
    IL_0695:  ldloc.s    V_22
    IL_0697:  ldarg.s    topColor11
    IL_0699:  ldloc.s    V_21
    IL_069b:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_06a0:  ldloc.s    V_23
    IL_06a2:  ldelema    Game.TerrainVertex
    IL_06a7:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace4(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_06ac:  ldarg.0
    IL_06ad:  ldarg.3
    IL_06ae:  ldc.i4.1
    IL_06af:  add
    IL_06b0:  ldarg.s    y
    IL_06b2:  ldc.i4.1
    IL_06b3:  add
    IL_06b4:  ldarg.s    z
    IL_06b6:  ldarg.s    height21
    IL_06b8:  ldc.i4.1
    IL_06b9:  ldloc.s    V_22
    IL_06bb:  ldarg.s    topColor21
    IL_06bd:  ldloc.s    V_21
    IL_06bf:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_06c4:  ldloc.s    V_23
    IL_06c6:  ldc.i4.1
    IL_06c7:  add
    IL_06c8:  ldelema    Game.TerrainVertex
    IL_06cd:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace4(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_06d2:  ldarg.0
    IL_06d3:  ldarg.3
    IL_06d4:  ldc.i4.1
    IL_06d5:  add
    IL_06d6:  ldarg.s    y
    IL_06d8:  ldc.i4.1
    IL_06d9:  add
    IL_06da:  ldarg.s    z
    IL_06dc:  ldc.i4.1
    IL_06dd:  add
    IL_06de:  ldarg.s    height22
    IL_06e0:  ldc.i4.2
    IL_06e1:  ldloc.s    V_22
    IL_06e3:  ldarg.s    topColor22
    IL_06e5:  ldloc.s    V_21
    IL_06e7:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_06ec:  ldloc.s    V_23
    IL_06ee:  ldc.i4.2
    IL_06ef:  add
    IL_06f0:  ldelema    Game.TerrainVertex
    IL_06f5:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace4(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_06fa:  ldarg.0
    IL_06fb:  ldarg.3
    IL_06fc:  ldarg.s    y
    IL_06fe:  ldc.i4.1
    IL_06ff:  add
    IL_0700:  ldarg.s    z
    IL_0702:  ldc.i4.1
    IL_0703:  add
    IL_0704:  ldarg.s    height12
    IL_0706:  ldc.i4.3
    IL_0707:  ldloc.s    V_22
    IL_0709:  ldarg.s    topColor12
    IL_070b:  ldloc.s    V_21
    IL_070d:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0712:  ldloc.s    V_23
    IL_0714:  ldc.i4.3
    IL_0715:  add
    IL_0716:  ldelema    Game.TerrainVertex
    IL_071b:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace4(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_0720:  dup
    IL_0721:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_0726:  stloc.s    V_24
    IL_0728:  dup
    IL_0729:  dup
    IL_072a:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_072f:  ldc.i4.6
    IL_0730:  add
    IL_0731:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::set_Count(int32)
    IL_0736:  dup
    IL_0737:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_073c:  ldloc.s    V_24
    IL_073e:  ldloc.s    V_23
    IL_0740:  conv.u2
    IL_0741:  stelem.i2
    IL_0742:  dup
    IL_0743:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0748:  ldloc.s    V_24
    IL_074a:  ldc.i4.1
    IL_074b:  add
    IL_074c:  ldloc.s    V_23
    IL_074e:  ldc.i4.1
    IL_074f:  add
    IL_0750:  conv.u2
    IL_0751:  stelem.i2
    IL_0752:  dup
    IL_0753:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0758:  ldloc.s    V_24
    IL_075a:  ldc.i4.2
    IL_075b:  add
    IL_075c:  ldloc.s    V_23
    IL_075e:  ldc.i4.2
    IL_075f:  add
    IL_0760:  conv.u2
    IL_0761:  stelem.i2
    IL_0762:  dup
    IL_0763:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0768:  ldloc.s    V_24
    IL_076a:  ldc.i4.3
    IL_076b:  add
    IL_076c:  ldloc.s    V_23
    IL_076e:  ldc.i4.2
    IL_076f:  add
    IL_0770:  conv.u2
    IL_0771:  stelem.i2
    IL_0772:  dup
    IL_0773:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0778:  ldloc.s    V_24
    IL_077a:  ldc.i4.4
    IL_077b:  add
    IL_077c:  ldloc.s    V_23
    IL_077e:  ldc.i4.3
    IL_077f:  add
    IL_0780:  conv.u2
    IL_0781:  stelem.i2
    IL_0782:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0787:  ldloc.s    V_24
    IL_0789:  ldc.i4.5
    IL_078a:  add
    IL_078b:  ldloc.s    V_23
    IL_078d:  conv.u2
    IL_078e:  stelem.i2
    IL_078f:  ldarg.3
    IL_0790:  ldc.i4.s   15
    IL_0792:  and
    IL_0793:  ldarg.s    y
    IL_0795:  ldc.i4.1
    IL_0796:  sub
    IL_0797:  ldarg.s    z
    IL_0799:  ldc.i4.s   15
    IL_079b:  and
    IL_079c:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32,
                                                                            int32,
                                                                            int32)
    IL_07a1:  stloc.1
    IL_07a2:  ldloc.1
    IL_07a3:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_07a8:  ldloc.0
    IL_07a9:  beq        IL_08fb

    IL_07ae:  ldarg.1
    IL_07af:  ldc.i4.5
    IL_07b0:  ldarg.2
    IL_07b1:  ldloc.1
    IL_07b2:  callvirt   instance bool Game.Block::ShouldGenerateFace(int32,
                                                                      int32,
                                                                      int32)
    IL_07b7:  brfalse    IL_08fb

    IL_07bc:  ldarg.s    subsetsByFace
    IL_07be:  ldc.i4.5
    IL_07bf:  ldelem.ref
    IL_07c0:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_07c5:  stloc.s    V_25
    IL_07c7:  ldarg.s    subsetsByFace
    IL_07c9:  ldc.i4.5
    IL_07ca:  ldelem.ref
    IL_07cb:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_07d0:  ldarg.1
    IL_07d1:  ldc.i4.5
    IL_07d2:  ldarg.2
    IL_07d3:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_07d8:  stloc.s    V_26
    IL_07da:  ldloc.s    V_25
    IL_07dc:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_07e1:  stloc.s    V_27
    IL_07e3:  ldloc.s    V_25
    IL_07e5:  dup
    IL_07e6:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_07eb:  ldc.i4.4
    IL_07ec:  add
    IL_07ed:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
    IL_07f2:  ldarg.0
    IL_07f3:  ldarg.3
    IL_07f4:  ldarg.s    y
    IL_07f6:  ldarg.s    z
    IL_07f8:  ldc.r4     1.
    IL_07fd:  ldc.i4.0
    IL_07fe:  ldloc.s    V_26
    IL_0800:  ldarg.s    sideColor
    IL_0802:  ldloc.s    V_25
    IL_0804:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0809:  ldloc.s    V_27
    IL_080b:  ldelema    Game.TerrainVertex
    IL_0810:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace5(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_0815:  ldarg.0
    IL_0816:  ldarg.3
    IL_0817:  ldc.i4.1
    IL_0818:  add
    IL_0819:  ldarg.s    y
    IL_081b:  ldarg.s    z
    IL_081d:  ldc.r4     1.
    IL_0822:  ldc.i4.1
    IL_0823:  ldloc.s    V_26
    IL_0825:  ldarg.s    sideColor
    IL_0827:  ldloc.s    V_25
    IL_0829:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_082e:  ldloc.s    V_27
    IL_0830:  ldc.i4.1
    IL_0831:  add
    IL_0832:  ldelema    Game.TerrainVertex
    IL_0837:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace5(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_083c:  ldarg.0
    IL_083d:  ldarg.3
    IL_083e:  ldc.i4.1
    IL_083f:  add
    IL_0840:  ldarg.s    y
    IL_0842:  ldarg.s    z
    IL_0844:  ldc.i4.1
    IL_0845:  add
    IL_0846:  ldc.r4     1.
    IL_084b:  ldc.i4.2
    IL_084c:  ldloc.s    V_26
    IL_084e:  ldarg.s    sideColor
    IL_0850:  ldloc.s    V_25
    IL_0852:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0857:  ldloc.s    V_27
    IL_0859:  ldc.i4.2
    IL_085a:  add
    IL_085b:  ldelema    Game.TerrainVertex
    IL_0860:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace5(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_0865:  ldarg.0
    IL_0866:  ldarg.3
    IL_0867:  ldarg.s    y
    IL_0869:  ldarg.s    z
    IL_086b:  ldc.i4.1
    IL_086c:  add
    IL_086d:  ldc.r4     1.
    IL_0872:  ldc.i4.3
    IL_0873:  ldloc.s    V_26
    IL_0875:  ldarg.s    sideColor
    IL_0877:  ldloc.s    V_25
    IL_0879:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_087e:  ldloc.s    V_27
    IL_0880:  ldc.i4.3
    IL_0881:  add
    IL_0882:  ldelema    Game.TerrainVertex
    IL_0887:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace5(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_088c:  dup
    IL_088d:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_0892:  stloc.s    V_28
    IL_0894:  dup
    IL_0895:  dup
    IL_0896:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_089b:  ldc.i4.6
    IL_089c:  add
    IL_089d:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::set_Count(int32)
    IL_08a2:  dup
    IL_08a3:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_08a8:  ldloc.s    V_28
    IL_08aa:  ldloc.s    V_27
    IL_08ac:  conv.u2
    IL_08ad:  stelem.i2
    IL_08ae:  dup
    IL_08af:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_08b4:  ldloc.s    V_28
    IL_08b6:  ldc.i4.1
    IL_08b7:  add
    IL_08b8:  ldloc.s    V_27
    IL_08ba:  ldc.i4.2
    IL_08bb:  add
    IL_08bc:  conv.u2
    IL_08bd:  stelem.i2
    IL_08be:  dup
    IL_08bf:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_08c4:  ldloc.s    V_28
    IL_08c6:  ldc.i4.2
    IL_08c7:  add
    IL_08c8:  ldloc.s    V_27
    IL_08ca:  ldc.i4.1
    IL_08cb:  add
    IL_08cc:  conv.u2
    IL_08cd:  stelem.i2
    IL_08ce:  dup
    IL_08cf:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_08d4:  ldloc.s    V_28
    IL_08d6:  ldc.i4.3
    IL_08d7:  add
    IL_08d8:  ldloc.s    V_27
    IL_08da:  ldc.i4.2
    IL_08db:  add
    IL_08dc:  conv.u2
    IL_08dd:  stelem.i2
    IL_08de:  dup
    IL_08df:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_08e4:  ldloc.s    V_28
    IL_08e6:  ldc.i4.4
    IL_08e7:  add
    IL_08e8:  ldloc.s    V_27
    IL_08ea:  conv.u2
    IL_08eb:  stelem.i2
    IL_08ec:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_08f1:  ldloc.s    V_28
    IL_08f3:  ldc.i4.5
    IL_08f4:  add
    IL_08f5:  ldloc.s    V_27
    IL_08f7:  ldc.i4.3
    IL_08f8:  add
    IL_08f9:  conv.u2
    IL_08fa:  stelem.i2
    IL_08fb:  ret
  } // end of method BlockGeometryGenerator::GenerateCubeVertices

  .method public hidebysig instance void 
          GenerateCubeVertices(class Game.Block block,
                               int32 'value',
                               int32 x,
                               int32 y,
                               int32 z,
                               int32 rotationX,
                               int32 rotationY,
                               int32 rotationZ,
                               valuetype [Engine]Engine.Color color,
                               class Game.TerrainGeometrySubset[] subsetsByFace) cil managed
  {
    // 代码大小       2363 (0x93b)
    .maxstack  13
    .locals init (int32 V_0,
             int32 V_1,
             class Game.TerrainChunk V_2,
             class Game.TerrainChunk V_3,
             class Game.TerrainChunk V_4,
             class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> V_9,
             int32 V_10,
             int32 V_11,
             int32 V_12,
             class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> V_13,
             int32 V_14,
             int32 V_15,
             int32 V_16,
             class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> V_17,
             int32 V_18,
             int32 V_19,
             int32 V_20,
             class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> V_21,
             int32 V_22,
             int32 V_23,
             int32 V_24,
             class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> V_25,
             int32 V_26,
             int32 V_27,
             int32 V_28)
    IL_0000:  ldarg.1
    IL_0001:  ldfld      int32 Game.Block::BlockIndex
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_000d:  ldarg.3
    IL_000e:  ldarg.s    z
    IL_0010:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                       int32)
    IL_0015:  ldarg.0
    IL_0016:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_001b:  ldarg.3
    IL_001c:  ldarg.s    z
    IL_001e:  ldc.i4.1
    IL_001f:  add
    IL_0020:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                       int32)
    IL_0025:  ldarg.0
    IL_0026:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_002b:  ldarg.3
    IL_002c:  ldc.i4.1
    IL_002d:  add
    IL_002e:  ldarg.s    z
    IL_0030:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                       int32)
    IL_0035:  stloc.2
    IL_0036:  ldarg.0
    IL_0037:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_003c:  ldarg.3
    IL_003d:  ldarg.s    z
    IL_003f:  ldc.i4.1
    IL_0040:  sub
    IL_0041:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                       int32)
    IL_0046:  stloc.3
    IL_0047:  ldarg.0
    IL_0048:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_004d:  ldarg.3
    IL_004e:  ldc.i4.1
    IL_004f:  sub
    IL_0050:  ldarg.s    z
    IL_0052:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                       int32)
    IL_0057:  stloc.s    V_4
    IL_0059:  ldarg.3
    IL_005a:  ldc.i4.s   15
    IL_005c:  and
    IL_005d:  ldarg.s    y
    IL_005f:  ldarg.s    z
    IL_0061:  ldc.i4.1
    IL_0062:  add
    IL_0063:  ldc.i4.s   15
    IL_0065:  and
    IL_0066:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32,
                                                                            int32,
                                                                            int32)
    IL_006b:  stloc.1
    IL_006c:  ldloc.1
    IL_006d:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0072:  ldloc.0
    IL_0073:  beq        IL_01d7

    IL_0078:  ldarg.1
    IL_0079:  ldc.i4.0
    IL_007a:  ldarg.2
    IL_007b:  ldloc.1
    IL_007c:  callvirt   instance bool Game.Block::ShouldGenerateFace(int32,
                                                                      int32,
                                                                      int32)
    IL_0081:  brfalse    IL_01d7

    IL_0086:  ldarg.s    subsetsByFace
    IL_0088:  ldc.i4.0
    IL_0089:  ldelem.ref
    IL_008a:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_008f:  stloc.s    V_5
    IL_0091:  ldarg.s    subsetsByFace
    IL_0093:  ldc.i4.0
    IL_0094:  ldelem.ref
    IL_0095:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_009a:  ldarg.1
    IL_009b:  ldc.i4.0
    IL_009c:  ldarg.2
    IL_009d:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_00a2:  stloc.s    V_6
    IL_00a4:  ldloc.s    V_5
    IL_00a6:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_00ab:  stloc.s    V_7
    IL_00ad:  ldloc.s    V_5
    IL_00af:  dup
    IL_00b0:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_00b5:  ldc.i4.4
    IL_00b6:  add
    IL_00b7:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
    IL_00bc:  ldarg.0
    IL_00bd:  ldarg.3
    IL_00be:  ldarg.s    y
    IL_00c0:  ldarg.s    z
    IL_00c2:  ldc.i4.1
    IL_00c3:  add
    IL_00c4:  ldc.r4     1.
    IL_00c9:  ldarg.s    rotationZ
    IL_00cb:  ldloc.s    V_6
    IL_00cd:  ldarg.s    color
    IL_00cf:  ldloc.s    V_5
    IL_00d1:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_00d6:  ldloc.s    V_7
    IL_00d8:  ldelema    Game.TerrainVertex
    IL_00dd:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace0(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_00e2:  ldarg.0
    IL_00e3:  ldarg.3
    IL_00e4:  ldc.i4.1
    IL_00e5:  add
    IL_00e6:  ldarg.s    y
    IL_00e8:  ldarg.s    z
    IL_00ea:  ldc.i4.1
    IL_00eb:  add
    IL_00ec:  ldc.r4     1.
    IL_00f1:  ldc.i4.1
    IL_00f2:  ldarg.s    rotationZ
    IL_00f4:  add
    IL_00f5:  ldloc.s    V_6
    IL_00f7:  ldarg.s    color
    IL_00f9:  ldloc.s    V_5
    IL_00fb:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0100:  ldloc.s    V_7
    IL_0102:  ldc.i4.1
    IL_0103:  add
    IL_0104:  ldelema    Game.TerrainVertex
    IL_0109:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace0(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_010e:  ldarg.0
    IL_010f:  ldarg.3
    IL_0110:  ldc.i4.1
    IL_0111:  add
    IL_0112:  ldarg.s    y
    IL_0114:  ldc.i4.1
    IL_0115:  add
    IL_0116:  ldarg.s    z
    IL_0118:  ldc.i4.1
    IL_0119:  add
    IL_011a:  ldc.r4     1.
    IL_011f:  ldc.i4.2
    IL_0120:  ldarg.s    rotationZ
    IL_0122:  add
    IL_0123:  ldloc.s    V_6
    IL_0125:  ldarg.s    color
    IL_0127:  ldloc.s    V_5
    IL_0129:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_012e:  ldloc.s    V_7
    IL_0130:  ldc.i4.2
    IL_0131:  add
    IL_0132:  ldelema    Game.TerrainVertex
    IL_0137:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace0(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_013c:  ldarg.0
    IL_013d:  ldarg.3
    IL_013e:  ldarg.s    y
    IL_0140:  ldc.i4.1
    IL_0141:  add
    IL_0142:  ldarg.s    z
    IL_0144:  ldc.i4.1
    IL_0145:  add
    IL_0146:  ldc.r4     1.
    IL_014b:  ldc.i4.3
    IL_014c:  ldarg.s    rotationZ
    IL_014e:  add
    IL_014f:  ldloc.s    V_6
    IL_0151:  ldarg.s    color
    IL_0153:  ldloc.s    V_5
    IL_0155:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_015a:  ldloc.s    V_7
    IL_015c:  ldc.i4.3
    IL_015d:  add
    IL_015e:  ldelema    Game.TerrainVertex
    IL_0163:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace0(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_0168:  dup
    IL_0169:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_016e:  stloc.s    V_8
    IL_0170:  dup
    IL_0171:  dup
    IL_0172:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_0177:  ldc.i4.6
    IL_0178:  add
    IL_0179:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::set_Count(int32)
    IL_017e:  dup
    IL_017f:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0184:  ldloc.s    V_8
    IL_0186:  ldloc.s    V_7
    IL_0188:  conv.u2
    IL_0189:  stelem.i2
    IL_018a:  dup
    IL_018b:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0190:  ldloc.s    V_8
    IL_0192:  ldc.i4.1
    IL_0193:  add
    IL_0194:  ldloc.s    V_7
    IL_0196:  ldc.i4.2
    IL_0197:  add
    IL_0198:  conv.u2
    IL_0199:  stelem.i2
    IL_019a:  dup
    IL_019b:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_01a0:  ldloc.s    V_8
    IL_01a2:  ldc.i4.2
    IL_01a3:  add
    IL_01a4:  ldloc.s    V_7
    IL_01a6:  ldc.i4.1
    IL_01a7:  add
    IL_01a8:  conv.u2
    IL_01a9:  stelem.i2
    IL_01aa:  dup
    IL_01ab:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_01b0:  ldloc.s    V_8
    IL_01b2:  ldc.i4.3
    IL_01b3:  add
    IL_01b4:  ldloc.s    V_7
    IL_01b6:  ldc.i4.2
    IL_01b7:  add
    IL_01b8:  conv.u2
    IL_01b9:  stelem.i2
    IL_01ba:  dup
    IL_01bb:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_01c0:  ldloc.s    V_8
    IL_01c2:  ldc.i4.4
    IL_01c3:  add
    IL_01c4:  ldloc.s    V_7
    IL_01c6:  conv.u2
    IL_01c7:  stelem.i2
    IL_01c8:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_01cd:  ldloc.s    V_8
    IL_01cf:  ldc.i4.5
    IL_01d0:  add
    IL_01d1:  ldloc.s    V_7
    IL_01d3:  ldc.i4.3
    IL_01d4:  add
    IL_01d5:  conv.u2
    IL_01d6:  stelem.i2
    IL_01d7:  ldloc.2
    IL_01d8:  ldarg.3
    IL_01d9:  ldc.i4.1
    IL_01da:  add
    IL_01db:  ldc.i4.s   15
    IL_01dd:  and
    IL_01de:  ldarg.s    y
    IL_01e0:  ldarg.s    z
    IL_01e2:  ldc.i4.s   15
    IL_01e4:  and
    IL_01e5:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32,
                                                                            int32,
                                                                            int32)
    IL_01ea:  stloc.1
    IL_01eb:  ldloc.1
    IL_01ec:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_01f1:  ldloc.0
    IL_01f2:  beq        IL_0356

    IL_01f7:  ldarg.1
    IL_01f8:  ldc.i4.1
    IL_01f9:  ldarg.2
    IL_01fa:  ldloc.1
    IL_01fb:  callvirt   instance bool Game.Block::ShouldGenerateFace(int32,
                                                                      int32,
                                                                      int32)
    IL_0200:  brfalse    IL_0356

    IL_0205:  ldarg.s    subsetsByFace
    IL_0207:  ldc.i4.1
    IL_0208:  ldelem.ref
    IL_0209:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_020e:  stloc.s    V_9
    IL_0210:  ldarg.s    subsetsByFace
    IL_0212:  ldc.i4.1
    IL_0213:  ldelem.ref
    IL_0214:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_0219:  ldarg.1
    IL_021a:  ldc.i4.1
    IL_021b:  ldarg.2
    IL_021c:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_0221:  stloc.s    V_10
    IL_0223:  ldloc.s    V_9
    IL_0225:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_022a:  stloc.s    V_11
    IL_022c:  ldloc.s    V_9
    IL_022e:  dup
    IL_022f:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_0234:  ldc.i4.4
    IL_0235:  add
    IL_0236:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
    IL_023b:  ldarg.0
    IL_023c:  ldarg.3
    IL_023d:  ldc.i4.1
    IL_023e:  add
    IL_023f:  ldarg.s    y
    IL_0241:  ldarg.s    z
    IL_0243:  ldc.r4     1.
    IL_0248:  ldc.i4.1
    IL_0249:  ldarg.s    rotationX
    IL_024b:  add
    IL_024c:  ldloc.s    V_10
    IL_024e:  ldarg.s    color
    IL_0250:  ldloc.s    V_9
    IL_0252:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0257:  ldloc.s    V_11
    IL_0259:  ldelema    Game.TerrainVertex
    IL_025e:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace1(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_0263:  ldarg.0
    IL_0264:  ldarg.3
    IL_0265:  ldc.i4.1
    IL_0266:  add
    IL_0267:  ldarg.s    y
    IL_0269:  ldc.i4.1
    IL_026a:  add
    IL_026b:  ldarg.s    z
    IL_026d:  ldc.r4     1.
    IL_0272:  ldc.i4.2
    IL_0273:  ldarg.s    rotationX
    IL_0275:  add
    IL_0276:  ldloc.s    V_10
    IL_0278:  ldarg.s    color
    IL_027a:  ldloc.s    V_9
    IL_027c:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0281:  ldloc.s    V_11
    IL_0283:  ldc.i4.1
    IL_0284:  add
    IL_0285:  ldelema    Game.TerrainVertex
    IL_028a:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace1(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_028f:  ldarg.0
    IL_0290:  ldarg.3
    IL_0291:  ldc.i4.1
    IL_0292:  add
    IL_0293:  ldarg.s    y
    IL_0295:  ldc.i4.1
    IL_0296:  add
    IL_0297:  ldarg.s    z
    IL_0299:  ldc.i4.1
    IL_029a:  add
    IL_029b:  ldc.r4     1.
    IL_02a0:  ldc.i4.3
    IL_02a1:  ldarg.s    rotationX
    IL_02a3:  add
    IL_02a4:  ldloc.s    V_10
    IL_02a6:  ldarg.s    color
    IL_02a8:  ldloc.s    V_9
    IL_02aa:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_02af:  ldloc.s    V_11
    IL_02b1:  ldc.i4.2
    IL_02b2:  add
    IL_02b3:  ldelema    Game.TerrainVertex
    IL_02b8:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace1(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_02bd:  ldarg.0
    IL_02be:  ldarg.3
    IL_02bf:  ldc.i4.1
    IL_02c0:  add
    IL_02c1:  ldarg.s    y
    IL_02c3:  ldarg.s    z
    IL_02c5:  ldc.i4.1
    IL_02c6:  add
    IL_02c7:  ldc.r4     1.
    IL_02cc:  ldarg.s    rotationX
    IL_02ce:  ldloc.s    V_10
    IL_02d0:  ldarg.s    color
    IL_02d2:  ldloc.s    V_9
    IL_02d4:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_02d9:  ldloc.s    V_11
    IL_02db:  ldc.i4.3
    IL_02dc:  add
    IL_02dd:  ldelema    Game.TerrainVertex
    IL_02e2:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace1(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_02e7:  dup
    IL_02e8:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_02ed:  stloc.s    V_12
    IL_02ef:  dup
    IL_02f0:  dup
    IL_02f1:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_02f6:  ldc.i4.6
    IL_02f7:  add
    IL_02f8:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::set_Count(int32)
    IL_02fd:  dup
    IL_02fe:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0303:  ldloc.s    V_12
    IL_0305:  ldloc.s    V_11
    IL_0307:  conv.u2
    IL_0308:  stelem.i2
    IL_0309:  dup
    IL_030a:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_030f:  ldloc.s    V_12
    IL_0311:  ldc.i4.1
    IL_0312:  add
    IL_0313:  ldloc.s    V_11
    IL_0315:  ldc.i4.2
    IL_0316:  add
    IL_0317:  conv.u2
    IL_0318:  stelem.i2
    IL_0319:  dup
    IL_031a:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_031f:  ldloc.s    V_12
    IL_0321:  ldc.i4.2
    IL_0322:  add
    IL_0323:  ldloc.s    V_11
    IL_0325:  ldc.i4.1
    IL_0326:  add
    IL_0327:  conv.u2
    IL_0328:  stelem.i2
    IL_0329:  dup
    IL_032a:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_032f:  ldloc.s    V_12
    IL_0331:  ldc.i4.3
    IL_0332:  add
    IL_0333:  ldloc.s    V_11
    IL_0335:  ldc.i4.2
    IL_0336:  add
    IL_0337:  conv.u2
    IL_0338:  stelem.i2
    IL_0339:  dup
    IL_033a:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_033f:  ldloc.s    V_12
    IL_0341:  ldc.i4.4
    IL_0342:  add
    IL_0343:  ldloc.s    V_11
    IL_0345:  conv.u2
    IL_0346:  stelem.i2
    IL_0347:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_034c:  ldloc.s    V_12
    IL_034e:  ldc.i4.5
    IL_034f:  add
    IL_0350:  ldloc.s    V_11
    IL_0352:  ldc.i4.3
    IL_0353:  add
    IL_0354:  conv.u2
    IL_0355:  stelem.i2
    IL_0356:  ldloc.3
    IL_0357:  ldarg.3
    IL_0358:  ldc.i4.s   15
    IL_035a:  and
    IL_035b:  ldarg.s    y
    IL_035d:  ldarg.s    z
    IL_035f:  ldc.i4.1
    IL_0360:  sub
    IL_0361:  ldc.i4.s   15
    IL_0363:  and
    IL_0364:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32,
                                                                            int32,
                                                                            int32)
    IL_0369:  stloc.1
    IL_036a:  ldloc.1
    IL_036b:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0370:  ldloc.0
    IL_0371:  beq        IL_04cd

    IL_0376:  ldarg.1
    IL_0377:  ldc.i4.2
    IL_0378:  ldarg.2
    IL_0379:  ldloc.1
    IL_037a:  callvirt   instance bool Game.Block::ShouldGenerateFace(int32,
                                                                      int32,
                                                                      int32)
    IL_037f:  brfalse    IL_04cd

    IL_0384:  ldarg.s    subsetsByFace
    IL_0386:  ldc.i4.2
    IL_0387:  ldelem.ref
    IL_0388:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_038d:  stloc.s    V_13
    IL_038f:  ldarg.s    subsetsByFace
    IL_0391:  ldc.i4.2
    IL_0392:  ldelem.ref
    IL_0393:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_0398:  ldarg.1
    IL_0399:  ldc.i4.2
    IL_039a:  ldarg.2
    IL_039b:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_03a0:  stloc.s    V_14
    IL_03a2:  ldloc.s    V_13
    IL_03a4:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_03a9:  stloc.s    V_15
    IL_03ab:  ldloc.s    V_13
    IL_03ad:  dup
    IL_03ae:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_03b3:  ldc.i4.4
    IL_03b4:  add
    IL_03b5:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
    IL_03ba:  ldarg.0
    IL_03bb:  ldarg.3
    IL_03bc:  ldarg.s    y
    IL_03be:  ldarg.s    z
    IL_03c0:  ldc.r4     1.
    IL_03c5:  ldc.i4.1
    IL_03c6:  ldarg.s    rotationZ
    IL_03c8:  add
    IL_03c9:  ldloc.s    V_14
    IL_03cb:  ldarg.s    color
    IL_03cd:  ldloc.s    V_13
    IL_03cf:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_03d4:  ldloc.s    V_15
    IL_03d6:  ldelema    Game.TerrainVertex
    IL_03db:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace2(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_03e0:  ldarg.0
    IL_03e1:  ldarg.3
    IL_03e2:  ldc.i4.1
    IL_03e3:  add
    IL_03e4:  ldarg.s    y
    IL_03e6:  ldarg.s    z
    IL_03e8:  ldc.r4     1.
    IL_03ed:  ldarg.s    rotationZ
    IL_03ef:  ldloc.s    V_14
    IL_03f1:  ldarg.s    color
    IL_03f3:  ldloc.s    V_13
    IL_03f5:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_03fa:  ldloc.s    V_15
    IL_03fc:  ldc.i4.1
    IL_03fd:  add
    IL_03fe:  ldelema    Game.TerrainVertex
    IL_0403:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace2(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_0408:  ldarg.0
    IL_0409:  ldarg.3
    IL_040a:  ldc.i4.1
    IL_040b:  add
    IL_040c:  ldarg.s    y
    IL_040e:  ldc.i4.1
    IL_040f:  add
    IL_0410:  ldarg.s    z
    IL_0412:  ldc.r4     1.
    IL_0417:  ldc.i4.3
    IL_0418:  ldarg.s    rotationZ
    IL_041a:  add
    IL_041b:  ldloc.s    V_14
    IL_041d:  ldarg.s    color
    IL_041f:  ldloc.s    V_13
    IL_0421:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0426:  ldloc.s    V_15
    IL_0428:  ldc.i4.2
    IL_0429:  add
    IL_042a:  ldelema    Game.TerrainVertex
    IL_042f:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace2(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_0434:  ldarg.0
    IL_0435:  ldarg.3
    IL_0436:  ldarg.s    y
    IL_0438:  ldc.i4.1
    IL_0439:  add
    IL_043a:  ldarg.s    z
    IL_043c:  ldc.r4     1.
    IL_0441:  ldc.i4.2
    IL_0442:  ldarg.s    rotationZ
    IL_0444:  add
    IL_0445:  ldloc.s    V_14
    IL_0447:  ldarg.s    color
    IL_0449:  ldloc.s    V_13
    IL_044b:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0450:  ldloc.s    V_15
    IL_0452:  ldc.i4.3
    IL_0453:  add
    IL_0454:  ldelema    Game.TerrainVertex
    IL_0459:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace2(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_045e:  dup
    IL_045f:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_0464:  stloc.s    V_16
    IL_0466:  dup
    IL_0467:  dup
    IL_0468:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_046d:  ldc.i4.6
    IL_046e:  add
    IL_046f:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::set_Count(int32)
    IL_0474:  dup
    IL_0475:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_047a:  ldloc.s    V_16
    IL_047c:  ldloc.s    V_15
    IL_047e:  conv.u2
    IL_047f:  stelem.i2
    IL_0480:  dup
    IL_0481:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0486:  ldloc.s    V_16
    IL_0488:  ldc.i4.1
    IL_0489:  add
    IL_048a:  ldloc.s    V_15
    IL_048c:  ldc.i4.1
    IL_048d:  add
    IL_048e:  conv.u2
    IL_048f:  stelem.i2
    IL_0490:  dup
    IL_0491:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0496:  ldloc.s    V_16
    IL_0498:  ldc.i4.2
    IL_0499:  add
    IL_049a:  ldloc.s    V_15
    IL_049c:  ldc.i4.2
    IL_049d:  add
    IL_049e:  conv.u2
    IL_049f:  stelem.i2
    IL_04a0:  dup
    IL_04a1:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_04a6:  ldloc.s    V_16
    IL_04a8:  ldc.i4.3
    IL_04a9:  add
    IL_04aa:  ldloc.s    V_15
    IL_04ac:  ldc.i4.2
    IL_04ad:  add
    IL_04ae:  conv.u2
    IL_04af:  stelem.i2
    IL_04b0:  dup
    IL_04b1:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_04b6:  ldloc.s    V_16
    IL_04b8:  ldc.i4.4
    IL_04b9:  add
    IL_04ba:  ldloc.s    V_15
    IL_04bc:  ldc.i4.3
    IL_04bd:  add
    IL_04be:  conv.u2
    IL_04bf:  stelem.i2
    IL_04c0:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_04c5:  ldloc.s    V_16
    IL_04c7:  ldc.i4.5
    IL_04c8:  add
    IL_04c9:  ldloc.s    V_15
    IL_04cb:  conv.u2
    IL_04cc:  stelem.i2
    IL_04cd:  ldloc.s    V_4
    IL_04cf:  ldarg.3
    IL_04d0:  ldc.i4.1
    IL_04d1:  sub
    IL_04d2:  ldc.i4.s   15
    IL_04d4:  and
    IL_04d5:  ldarg.s    y
    IL_04d7:  ldarg.s    z
    IL_04d9:  ldc.i4.s   15
    IL_04db:  and
    IL_04dc:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32,
                                                                            int32,
                                                                            int32)
    IL_04e1:  stloc.1
    IL_04e2:  ldloc.1
    IL_04e3:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_04e8:  ldloc.0
    IL_04e9:  beq        IL_0645

    IL_04ee:  ldarg.1
    IL_04ef:  ldc.i4.3
    IL_04f0:  ldarg.2
    IL_04f1:  ldloc.1
    IL_04f2:  callvirt   instance bool Game.Block::ShouldGenerateFace(int32,
                                                                      int32,
                                                                      int32)
    IL_04f7:  brfalse    IL_0645

    IL_04fc:  ldarg.s    subsetsByFace
    IL_04fe:  ldc.i4.3
    IL_04ff:  ldelem.ref
    IL_0500:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_0505:  stloc.s    V_17
    IL_0507:  ldarg.s    subsetsByFace
    IL_0509:  ldc.i4.3
    IL_050a:  ldelem.ref
    IL_050b:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_0510:  ldarg.1
    IL_0511:  ldc.i4.3
    IL_0512:  ldarg.2
    IL_0513:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_0518:  stloc.s    V_18
    IL_051a:  ldloc.s    V_17
    IL_051c:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_0521:  stloc.s    V_19
    IL_0523:  ldloc.s    V_17
    IL_0525:  dup
    IL_0526:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_052b:  ldc.i4.4
    IL_052c:  add
    IL_052d:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
    IL_0532:  ldarg.0
    IL_0533:  ldarg.3
    IL_0534:  ldarg.s    y
    IL_0536:  ldarg.s    z
    IL_0538:  ldc.r4     1.
    IL_053d:  ldarg.s    rotationX
    IL_053f:  ldloc.s    V_18
    IL_0541:  ldarg.s    color
    IL_0543:  ldloc.s    V_17
    IL_0545:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_054a:  ldloc.s    V_19
    IL_054c:  ldelema    Game.TerrainVertex
    IL_0551:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace3(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_0556:  ldarg.0
    IL_0557:  ldarg.3
    IL_0558:  ldarg.s    y
    IL_055a:  ldc.i4.1
    IL_055b:  add
    IL_055c:  ldarg.s    z
    IL_055e:  ldc.r4     1.
    IL_0563:  ldc.i4.3
    IL_0564:  ldarg.s    rotationX
    IL_0566:  add
    IL_0567:  ldloc.s    V_18
    IL_0569:  ldarg.s    color
    IL_056b:  ldloc.s    V_17
    IL_056d:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0572:  ldloc.s    V_19
    IL_0574:  ldc.i4.1
    IL_0575:  add
    IL_0576:  ldelema    Game.TerrainVertex
    IL_057b:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace3(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_0580:  ldarg.0
    IL_0581:  ldarg.3
    IL_0582:  ldarg.s    y
    IL_0584:  ldc.i4.1
    IL_0585:  add
    IL_0586:  ldarg.s    z
    IL_0588:  ldc.i4.1
    IL_0589:  add
    IL_058a:  ldc.r4     1.
    IL_058f:  ldc.i4.2
    IL_0590:  ldarg.s    rotationX
    IL_0592:  add
    IL_0593:  ldloc.s    V_18
    IL_0595:  ldarg.s    color
    IL_0597:  ldloc.s    V_17
    IL_0599:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_059e:  ldloc.s    V_19
    IL_05a0:  ldc.i4.2
    IL_05a1:  add
    IL_05a2:  ldelema    Game.TerrainVertex
    IL_05a7:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace3(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_05ac:  ldarg.0
    IL_05ad:  ldarg.3
    IL_05ae:  ldarg.s    y
    IL_05b0:  ldarg.s    z
    IL_05b2:  ldc.i4.1
    IL_05b3:  add
    IL_05b4:  ldc.r4     1.
    IL_05b9:  ldc.i4.1
    IL_05ba:  ldarg.s    rotationX
    IL_05bc:  add
    IL_05bd:  ldloc.s    V_18
    IL_05bf:  ldarg.s    color
    IL_05c1:  ldloc.s    V_17
    IL_05c3:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_05c8:  ldloc.s    V_19
    IL_05ca:  ldc.i4.3
    IL_05cb:  add
    IL_05cc:  ldelema    Game.TerrainVertex
    IL_05d1:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace3(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_05d6:  dup
    IL_05d7:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_05dc:  stloc.s    V_20
    IL_05de:  dup
    IL_05df:  dup
    IL_05e0:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_05e5:  ldc.i4.6
    IL_05e6:  add
    IL_05e7:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::set_Count(int32)
    IL_05ec:  dup
    IL_05ed:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_05f2:  ldloc.s    V_20
    IL_05f4:  ldloc.s    V_19
    IL_05f6:  conv.u2
    IL_05f7:  stelem.i2
    IL_05f8:  dup
    IL_05f9:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_05fe:  ldloc.s    V_20
    IL_0600:  ldc.i4.1
    IL_0601:  add
    IL_0602:  ldloc.s    V_19
    IL_0604:  ldc.i4.1
    IL_0605:  add
    IL_0606:  conv.u2
    IL_0607:  stelem.i2
    IL_0608:  dup
    IL_0609:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_060e:  ldloc.s    V_20
    IL_0610:  ldc.i4.2
    IL_0611:  add
    IL_0612:  ldloc.s    V_19
    IL_0614:  ldc.i4.2
    IL_0615:  add
    IL_0616:  conv.u2
    IL_0617:  stelem.i2
    IL_0618:  dup
    IL_0619:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_061e:  ldloc.s    V_20
    IL_0620:  ldc.i4.3
    IL_0621:  add
    IL_0622:  ldloc.s    V_19
    IL_0624:  ldc.i4.2
    IL_0625:  add
    IL_0626:  conv.u2
    IL_0627:  stelem.i2
    IL_0628:  dup
    IL_0629:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_062e:  ldloc.s    V_20
    IL_0630:  ldc.i4.4
    IL_0631:  add
    IL_0632:  ldloc.s    V_19
    IL_0634:  ldc.i4.3
    IL_0635:  add
    IL_0636:  conv.u2
    IL_0637:  stelem.i2
    IL_0638:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_063d:  ldloc.s    V_20
    IL_063f:  ldc.i4.5
    IL_0640:  add
    IL_0641:  ldloc.s    V_19
    IL_0643:  conv.u2
    IL_0644:  stelem.i2
    IL_0645:  dup
    IL_0646:  ldarg.3
    IL_0647:  ldc.i4.s   15
    IL_0649:  and
    IL_064a:  ldarg.s    y
    IL_064c:  ldc.i4.1
    IL_064d:  add
    IL_064e:  ldarg.s    z
    IL_0650:  ldc.i4.s   15
    IL_0652:  and
    IL_0653:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32,
                                                                            int32,
                                                                            int32)
    IL_0658:  stloc.1
    IL_0659:  ldloc.1
    IL_065a:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_065f:  ldloc.0
    IL_0660:  beq        IL_07c4

    IL_0665:  ldarg.1
    IL_0666:  ldc.i4.4
    IL_0667:  ldarg.2
    IL_0668:  ldloc.1
    IL_0669:  callvirt   instance bool Game.Block::ShouldGenerateFace(int32,
                                                                      int32,
                                                                      int32)
    IL_066e:  brfalse    IL_07c4

    IL_0673:  ldarg.s    subsetsByFace
    IL_0675:  ldc.i4.4
    IL_0676:  ldelem.ref
    IL_0677:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_067c:  stloc.s    V_21
    IL_067e:  ldarg.s    subsetsByFace
    IL_0680:  ldc.i4.4
    IL_0681:  ldelem.ref
    IL_0682:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_0687:  ldarg.1
    IL_0688:  ldc.i4.4
    IL_0689:  ldarg.2
    IL_068a:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_068f:  stloc.s    V_22
    IL_0691:  ldloc.s    V_21
    IL_0693:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_0698:  stloc.s    V_23
    IL_069a:  ldloc.s    V_21
    IL_069c:  dup
    IL_069d:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_06a2:  ldc.i4.4
    IL_06a3:  add
    IL_06a4:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
    IL_06a9:  ldarg.0
    IL_06aa:  ldarg.3
    IL_06ab:  ldarg.s    y
    IL_06ad:  ldc.i4.1
    IL_06ae:  add
    IL_06af:  ldarg.s    z
    IL_06b1:  ldc.r4     1.
    IL_06b6:  ldarg.s    rotationY
    IL_06b8:  ldloc.s    V_22
    IL_06ba:  ldarg.s    color
    IL_06bc:  ldloc.s    V_21
    IL_06be:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_06c3:  ldloc.s    V_23
    IL_06c5:  ldelema    Game.TerrainVertex
    IL_06ca:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace4(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_06cf:  ldarg.0
    IL_06d0:  ldarg.3
    IL_06d1:  ldc.i4.1
    IL_06d2:  add
    IL_06d3:  ldarg.s    y
    IL_06d5:  ldc.i4.1
    IL_06d6:  add
    IL_06d7:  ldarg.s    z
    IL_06d9:  ldc.r4     1.
    IL_06de:  ldc.i4.1
    IL_06df:  ldarg.s    rotationY
    IL_06e1:  add
    IL_06e2:  ldloc.s    V_22
    IL_06e4:  ldarg.s    color
    IL_06e6:  ldloc.s    V_21
    IL_06e8:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_06ed:  ldloc.s    V_23
    IL_06ef:  ldc.i4.1
    IL_06f0:  add
    IL_06f1:  ldelema    Game.TerrainVertex
    IL_06f6:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace4(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_06fb:  ldarg.0
    IL_06fc:  ldarg.3
    IL_06fd:  ldc.i4.1
    IL_06fe:  add
    IL_06ff:  ldarg.s    y
    IL_0701:  ldc.i4.1
    IL_0702:  add
    IL_0703:  ldarg.s    z
    IL_0705:  ldc.i4.1
    IL_0706:  add
    IL_0707:  ldc.r4     1.
    IL_070c:  ldc.i4.2
    IL_070d:  ldarg.s    rotationY
    IL_070f:  add
    IL_0710:  ldloc.s    V_22
    IL_0712:  ldarg.s    color
    IL_0714:  ldloc.s    V_21
    IL_0716:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_071b:  ldloc.s    V_23
    IL_071d:  ldc.i4.2
    IL_071e:  add
    IL_071f:  ldelema    Game.TerrainVertex
    IL_0724:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace4(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_0729:  ldarg.0
    IL_072a:  ldarg.3
    IL_072b:  ldarg.s    y
    IL_072d:  ldc.i4.1
    IL_072e:  add
    IL_072f:  ldarg.s    z
    IL_0731:  ldc.i4.1
    IL_0732:  add
    IL_0733:  ldc.r4     1.
    IL_0738:  ldc.i4.3
    IL_0739:  ldarg.s    rotationY
    IL_073b:  add
    IL_073c:  ldloc.s    V_22
    IL_073e:  ldarg.s    color
    IL_0740:  ldloc.s    V_21
    IL_0742:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0747:  ldloc.s    V_23
    IL_0749:  ldc.i4.3
    IL_074a:  add
    IL_074b:  ldelema    Game.TerrainVertex
    IL_0750:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace4(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_0755:  dup
    IL_0756:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_075b:  stloc.s    V_24
    IL_075d:  dup
    IL_075e:  dup
    IL_075f:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_0764:  ldc.i4.6
    IL_0765:  add
    IL_0766:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::set_Count(int32)
    IL_076b:  dup
    IL_076c:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0771:  ldloc.s    V_24
    IL_0773:  ldloc.s    V_23
    IL_0775:  conv.u2
    IL_0776:  stelem.i2
    IL_0777:  dup
    IL_0778:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_077d:  ldloc.s    V_24
    IL_077f:  ldc.i4.1
    IL_0780:  add
    IL_0781:  ldloc.s    V_23
    IL_0783:  ldc.i4.1
    IL_0784:  add
    IL_0785:  conv.u2
    IL_0786:  stelem.i2
    IL_0787:  dup
    IL_0788:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_078d:  ldloc.s    V_24
    IL_078f:  ldc.i4.2
    IL_0790:  add
    IL_0791:  ldloc.s    V_23
    IL_0793:  ldc.i4.2
    IL_0794:  add
    IL_0795:  conv.u2
    IL_0796:  stelem.i2
    IL_0797:  dup
    IL_0798:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_079d:  ldloc.s    V_24
    IL_079f:  ldc.i4.3
    IL_07a0:  add
    IL_07a1:  ldloc.s    V_23
    IL_07a3:  ldc.i4.2
    IL_07a4:  add
    IL_07a5:  conv.u2
    IL_07a6:  stelem.i2
    IL_07a7:  dup
    IL_07a8:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_07ad:  ldloc.s    V_24
    IL_07af:  ldc.i4.4
    IL_07b0:  add
    IL_07b1:  ldloc.s    V_23
    IL_07b3:  ldc.i4.3
    IL_07b4:  add
    IL_07b5:  conv.u2
    IL_07b6:  stelem.i2
    IL_07b7:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_07bc:  ldloc.s    V_24
    IL_07be:  ldc.i4.5
    IL_07bf:  add
    IL_07c0:  ldloc.s    V_23
    IL_07c2:  conv.u2
    IL_07c3:  stelem.i2
    IL_07c4:  ldarg.3
    IL_07c5:  ldc.i4.s   15
    IL_07c7:  and
    IL_07c8:  ldarg.s    y
    IL_07ca:  ldc.i4.1
    IL_07cb:  sub
    IL_07cc:  ldarg.s    z
    IL_07ce:  ldc.i4.s   15
    IL_07d0:  and
    IL_07d1:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32,
                                                                            int32,
                                                                            int32)
    IL_07d6:  stloc.1
    IL_07d7:  ldloc.1
    IL_07d8:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_07dd:  ldloc.0
    IL_07de:  beq        IL_093a

    IL_07e3:  ldarg.1
    IL_07e4:  ldc.i4.5
    IL_07e5:  ldarg.2
    IL_07e6:  ldloc.1
    IL_07e7:  callvirt   instance bool Game.Block::ShouldGenerateFace(int32,
                                                                      int32,
                                                                      int32)
    IL_07ec:  brfalse    IL_093a

    IL_07f1:  ldarg.s    subsetsByFace
    IL_07f3:  ldc.i4.5
    IL_07f4:  ldelem.ref
    IL_07f5:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_07fa:  stloc.s    V_25
    IL_07fc:  ldarg.s    subsetsByFace
    IL_07fe:  ldc.i4.5
    IL_07ff:  ldelem.ref
    IL_0800:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_0805:  ldarg.1
    IL_0806:  ldc.i4.5
    IL_0807:  ldarg.2
    IL_0808:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_080d:  stloc.s    V_26
    IL_080f:  ldloc.s    V_25
    IL_0811:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_0816:  stloc.s    V_27
    IL_0818:  ldloc.s    V_25
    IL_081a:  dup
    IL_081b:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_0820:  ldc.i4.4
    IL_0821:  add
    IL_0822:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
    IL_0827:  ldarg.0
    IL_0828:  ldarg.3
    IL_0829:  ldarg.s    y
    IL_082b:  ldarg.s    z
    IL_082d:  ldc.r4     1.
    IL_0832:  ldarg.s    rotationY
    IL_0834:  ldloc.s    V_26
    IL_0836:  ldarg.s    color
    IL_0838:  ldloc.s    V_25
    IL_083a:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_083f:  ldloc.s    V_27
    IL_0841:  ldelema    Game.TerrainVertex
    IL_0846:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace5(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_084b:  ldarg.0
    IL_084c:  ldarg.3
    IL_084d:  ldc.i4.1
    IL_084e:  add
    IL_084f:  ldarg.s    y
    IL_0851:  ldarg.s    z
    IL_0853:  ldc.r4     1.
    IL_0858:  ldc.i4.1
    IL_0859:  ldarg.s    rotationY
    IL_085b:  add
    IL_085c:  ldloc.s    V_26
    IL_085e:  ldarg.s    color
    IL_0860:  ldloc.s    V_25
    IL_0862:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0867:  ldloc.s    V_27
    IL_0869:  ldc.i4.1
    IL_086a:  add
    IL_086b:  ldelema    Game.TerrainVertex
    IL_0870:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace5(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_0875:  ldarg.0
    IL_0876:  ldarg.3
    IL_0877:  ldc.i4.1
    IL_0878:  add
    IL_0879:  ldarg.s    y
    IL_087b:  ldarg.s    z
    IL_087d:  ldc.i4.1
    IL_087e:  add
    IL_087f:  ldc.r4     1.
    IL_0884:  ldc.i4.2
    IL_0885:  ldarg.s    rotationY
    IL_0887:  add
    IL_0888:  ldloc.s    V_26
    IL_088a:  ldarg.s    color
    IL_088c:  ldloc.s    V_25
    IL_088e:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0893:  ldloc.s    V_27
    IL_0895:  ldc.i4.2
    IL_0896:  add
    IL_0897:  ldelema    Game.TerrainVertex
    IL_089c:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace5(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_08a1:  ldarg.0
    IL_08a2:  ldarg.3
    IL_08a3:  ldarg.s    y
    IL_08a5:  ldarg.s    z
    IL_08a7:  ldc.i4.1
    IL_08a8:  add
    IL_08a9:  ldc.r4     1.
    IL_08ae:  ldc.i4.3
    IL_08af:  ldarg.s    rotationY
    IL_08b1:  add
    IL_08b2:  ldloc.s    V_26
    IL_08b4:  ldarg.s    color
    IL_08b6:  ldloc.s    V_25
    IL_08b8:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_08bd:  ldloc.s    V_27
    IL_08bf:  ldc.i4.3
    IL_08c0:  add
    IL_08c1:  ldelema    Game.TerrainVertex
    IL_08c6:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace5(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_08cb:  dup
    IL_08cc:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_08d1:  stloc.s    V_28
    IL_08d3:  dup
    IL_08d4:  dup
    IL_08d5:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_08da:  ldc.i4.6
    IL_08db:  add
    IL_08dc:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::set_Count(int32)
    IL_08e1:  dup
    IL_08e2:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_08e7:  ldloc.s    V_28
    IL_08e9:  ldloc.s    V_27
    IL_08eb:  conv.u2
    IL_08ec:  stelem.i2
    IL_08ed:  dup
    IL_08ee:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_08f3:  ldloc.s    V_28
    IL_08f5:  ldc.i4.1
    IL_08f6:  add
    IL_08f7:  ldloc.s    V_27
    IL_08f9:  ldc.i4.2
    IL_08fa:  add
    IL_08fb:  conv.u2
    IL_08fc:  stelem.i2
    IL_08fd:  dup
    IL_08fe:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0903:  ldloc.s    V_28
    IL_0905:  ldc.i4.2
    IL_0906:  add
    IL_0907:  ldloc.s    V_27
    IL_0909:  ldc.i4.1
    IL_090a:  add
    IL_090b:  conv.u2
    IL_090c:  stelem.i2
    IL_090d:  dup
    IL_090e:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0913:  ldloc.s    V_28
    IL_0915:  ldc.i4.3
    IL_0916:  add
    IL_0917:  ldloc.s    V_27
    IL_0919:  ldc.i4.2
    IL_091a:  add
    IL_091b:  conv.u2
    IL_091c:  stelem.i2
    IL_091d:  dup
    IL_091e:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0923:  ldloc.s    V_28
    IL_0925:  ldc.i4.4
    IL_0926:  add
    IL_0927:  ldloc.s    V_27
    IL_0929:  conv.u2
    IL_092a:  stelem.i2
    IL_092b:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0930:  ldloc.s    V_28
    IL_0932:  ldc.i4.5
    IL_0933:  add
    IL_0934:  ldloc.s    V_27
    IL_0936:  ldc.i4.3
    IL_0937:  add
    IL_0938:  conv.u2
    IL_0939:  stelem.i2
    IL_093a:  ret
  } // end of method BlockGeometryGenerator::GenerateCubeVertices

  .method public hidebysig instance void 
          GenerateMeshVertices(class Game.Block block,
                               int32 x,
                               int32 y,
                               int32 z,
                               class Game.BlockMesh blockMesh,
                               valuetype [Engine]Engine.Color color,
                               valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> matrix,
                               class Game.TerrainGeometrySubset subset) cil managed
  {
    // 代码大小       486 (0x1e6)
    .maxstack  9
    .locals init (class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> V_0,
             class [Engine]Engine.DynamicArray`1<uint16> V_1,
             int32 V_2,
             int32 V_3,
             float32 V_4,
             int32 V_5,
             valuetype Game.BlockMeshVertex V_6,
             valuetype [Engine]Engine.Vector3 V_7,
             valuetype [Engine]Engine.Color V_8,
             float32 V_9,
             int32 V_10)
    IL_0000:  ldarg.s    subset
    IL_0002:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_0007:  stloc.0
    IL_0008:  ldarg.s    subset
    IL_000a:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_000f:  stloc.1
    IL_0010:  ldloc.0
    IL_0011:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_0016:  stloc.2
    IL_0017:  ldarg.0
    IL_0018:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_001d:  ldarg.2
    IL_001e:  ldarg.3
    IL_001f:  ldarg.s    z
    IL_0021:  callvirt   instance int32 Game.Terrain::GetCellLightFast(int32,
                                                                       int32,
                                                                       int32)
    IL_0026:  stloc.3
    IL_0027:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_002c:  ldloc.3
    IL_002d:  ldelem.r4
    IL_002e:  stloc.s    V_4
    IL_0030:  ldloc.0
    IL_0031:  dup
    IL_0032:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_0037:  ldarg.s    blockMesh
    IL_0039:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
    IL_003e:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_0043:  add
    IL_0044:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
    IL_0049:  ldc.i4.0
    IL_004a:  stloc.s    V_5
    IL_004c:  br         IL_019f

    IL_0051:  ldarg.s    blockMesh
    IL_0053:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
    IL_0058:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Array()
    IL_005d:  ldloc.s    V_5
    IL_005f:  ldelem     Game.BlockMeshVertex
    IL_0064:  stloc.s    V_6
    IL_0066:  ldloc.s    V_6
    IL_0068:  ldfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_006d:  stloc.s    V_7
    IL_006f:  ldarga.s   matrix
    IL_0071:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_HasValue()
    IL_0076:  brfalse.s  IL_008d

    IL_0078:  ldloc.s    V_6
    IL_007a:  ldfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_007f:  ldarga.s   matrix
    IL_0081:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_Value()
    IL_0086:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_008b:  stloc.s    V_7
    IL_008d:  ldloc.s    V_6
    IL_008f:  ldfld      bool Game.BlockMeshVertex::IsEmissive
    IL_0094:  brfalse.s  IL_00f0

    IL_0096:  ldloca.s   V_8
    IL_0098:  ldarga.s   color
    IL_009a:  call       instance uint8 [Engine]Engine.Color::get_R()
    IL_009f:  ldloca.s   V_6
    IL_00a1:  ldflda     valuetype [Engine]Engine.Color Game.BlockMeshVertex::Color
    IL_00a6:  call       instance uint8 [Engine]Engine.Color::get_R()
    IL_00ab:  mul
    IL_00ac:  ldc.i4     0xff
    IL_00b1:  div
    IL_00b2:  conv.u1
    IL_00b3:  ldarga.s   color
    IL_00b5:  call       instance uint8 [Engine]Engine.Color::get_G()
    IL_00ba:  ldloca.s   V_6
    IL_00bc:  ldflda     valuetype [Engine]Engine.Color Game.BlockMeshVertex::Color
    IL_00c1:  call       instance uint8 [Engine]Engine.Color::get_G()
    IL_00c6:  mul
    IL_00c7:  ldc.i4     0xff
    IL_00cc:  div
    IL_00cd:  conv.u1
    IL_00ce:  ldarga.s   color
    IL_00d0:  call       instance uint8 [Engine]Engine.Color::get_B()
    IL_00d5:  ldloca.s   V_6
    IL_00d7:  ldflda     valuetype [Engine]Engine.Color Game.BlockMeshVertex::Color
    IL_00dc:  call       instance uint8 [Engine]Engine.Color::get_B()
    IL_00e1:  mul
    IL_00e2:  ldc.i4     0xff
    IL_00e7:  div
    IL_00e8:  conv.u1
    IL_00e9:  call       instance void [Engine]Engine.Color::.ctor(uint8,
                                                                   uint8,
                                                                   uint8)
    IL_00ee:  br.s       IL_014c

    IL_00f0:  ldloc.s    V_4
    IL_00f2:  ldc.r4     255.
    IL_00f7:  div
    IL_00f8:  stloc.s    V_9
    IL_00fa:  ldloca.s   V_8
    IL_00fc:  ldarga.s   color
    IL_00fe:  call       instance uint8 [Engine]Engine.Color::get_R()
    IL_0103:  ldloca.s   V_6
    IL_0105:  ldflda     valuetype [Engine]Engine.Color Game.BlockMeshVertex::Color
    IL_010a:  call       instance uint8 [Engine]Engine.Color::get_R()
    IL_010f:  mul
    IL_0110:  conv.r4
    IL_0111:  ldloc.s    V_9
    IL_0113:  mul
    IL_0114:  conv.u1
    IL_0115:  ldarga.s   color
    IL_0117:  call       instance uint8 [Engine]Engine.Color::get_G()
    IL_011c:  ldloca.s   V_6
    IL_011e:  ldflda     valuetype [Engine]Engine.Color Game.BlockMeshVertex::Color
    IL_0123:  call       instance uint8 [Engine]Engine.Color::get_G()
    IL_0128:  mul
    IL_0129:  conv.r4
    IL_012a:  ldloc.s    V_9
    IL_012c:  mul
    IL_012d:  conv.u1
    IL_012e:  ldarga.s   color
    IL_0130:  call       instance uint8 [Engine]Engine.Color::get_B()
    IL_0135:  ldloca.s   V_6
    IL_0137:  ldflda     valuetype [Engine]Engine.Color Game.BlockMeshVertex::Color
    IL_013c:  call       instance uint8 [Engine]Engine.Color::get_B()
    IL_0141:  mul
    IL_0142:  conv.r4
    IL_0143:  ldloc.s    V_9
    IL_0145:  mul
    IL_0146:  conv.u1
    IL_0147:  call       instance void [Engine]Engine.Color::.ctor(uint8,
                                                                   uint8,
                                                                   uint8)
    IL_014c:  ldarg.2
    IL_014d:  conv.r4
    IL_014e:  ldloc.s    V_7
    IL_0150:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0155:  add
    IL_0156:  ldarg.3
    IL_0157:  conv.r4
    IL_0158:  ldloc.s    V_7
    IL_015a:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_015f:  add
    IL_0160:  ldarg.s    z
    IL_0162:  conv.r4
    IL_0163:  ldloc.s    V_7
    IL_0165:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_016a:  add
    IL_016b:  ldloc.s    V_8
    IL_016d:  ldloc.s    V_6
    IL_016f:  ldfld      valuetype [Engine]Engine.Vector2 Game.BlockMeshVertex::TextureCoordinates
    IL_0174:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0179:  ldloc.s    V_6
    IL_017b:  ldfld      valuetype [Engine]Engine.Vector2 Game.BlockMeshVertex::TextureCoordinates
    IL_0180:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0185:  ldloc.0
    IL_0186:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_018b:  ldloc.2
    IL_018c:  ldloc.s    V_5
    IL_018e:  add
    IL_018f:  ldelema    Game.TerrainVertex
    IL_0194:  call       void Game.BlockGeometryGenerator::SetupVertex(float32,
                                                                       float32,
                                                                       float32,
                                                                       valuetype [Engine]Engine.Color,
                                                                       float32,
                                                                       float32,
                                                                       valuetype Game.TerrainVertex&)
    IL_0199:  ldloc.s    V_5
    IL_019b:  ldc.i4.1
    IL_019c:  add
    IL_019d:  stloc.s    V_5
    IL_019f:  ldloc.s    V_5
    IL_01a1:  ldarg.s    blockMesh
    IL_01a3:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
    IL_01a8:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_01ad:  blt        IL_0051

    IL_01b2:  ldc.i4.0
    IL_01b3:  stloc.s    V_10
    IL_01b5:  br.s       IL_01d5

    IL_01b7:  ldloc.1
    IL_01b8:  ldarg.s    blockMesh
    IL_01ba:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.BlockMesh::Indices
    IL_01bf:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_01c4:  ldloc.s    V_10
    IL_01c6:  ldelem.u2
    IL_01c7:  ldloc.2
    IL_01c8:  add
    IL_01c9:  conv.u2
    IL_01ca:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_01cf:  ldloc.s    V_10
    IL_01d1:  ldc.i4.1
    IL_01d2:  add
    IL_01d3:  stloc.s    V_10
    IL_01d5:  ldloc.s    V_10
    IL_01d7:  ldarg.s    blockMesh
    IL_01d9:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.BlockMesh::Indices
    IL_01de:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_01e3:  blt.s      IL_01b7

    IL_01e5:  ret
  } // end of method BlockGeometryGenerator::GenerateMeshVertices

  .method public hidebysig instance void 
          GenerateShadedMeshVertices(class Game.Block block,
                                     int32 x,
                                     int32 y,
                                     int32 z,
                                     class Game.BlockMesh blockMesh,
                                     valuetype [Engine]Engine.Color color,
                                     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> matrix,
                                     int32[] facesMap,
                                     class Game.TerrainGeometrySubset subset) cil managed
  {
    // 代码大小       498 (0x1f2)
    .maxstack  9
    .locals init (class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> V_0,
             class [Engine]Engine.DynamicArray`1<uint16> V_1,
             int32 V_2,
             int32 V_3,
             valuetype Game.BlockMeshVertex V_4,
             valuetype [Engine]Engine.Vector3 V_5,
             valuetype [Engine]Engine.Color V_6,
             int32 V_7,
             float32 V_8,
             int32 V_9)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.2
    IL_0002:  ldarg.3
    IL_0003:  ldarg.s    z
    IL_0005:  call       instance void Game.BlockGeometryGenerator::CalculateCornerLights(int32,
                                                                                          int32,
                                                                                          int32)
    IL_000a:  ldarg.s    subset
    IL_000c:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_0011:  stloc.0
    IL_0012:  ldarg.s    subset
    IL_0014:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_0019:  stloc.1
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_0020:  stloc.2
    IL_0021:  ldloc.0
    IL_0022:  dup
    IL_0023:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_0028:  ldarg.s    blockMesh
    IL_002a:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
    IL_002f:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_0034:  add
    IL_0035:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
    IL_003a:  ldc.i4.0
    IL_003b:  stloc.3
    IL_003c:  br         IL_01ac

    IL_0041:  ldarg.s    blockMesh
    IL_0043:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
    IL_0048:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Array()
    IL_004d:  ldloc.3
    IL_004e:  ldelem     Game.BlockMeshVertex
    IL_0053:  stloc.s    V_4
    IL_0055:  ldloc.s    V_4
    IL_0057:  ldfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_005c:  stloc.s    V_5
    IL_005e:  ldarga.s   matrix
    IL_0060:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_HasValue()
    IL_0065:  brfalse.s  IL_007c

    IL_0067:  ldloc.s    V_4
    IL_0069:  ldfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_006e:  ldarga.s   matrix
    IL_0070:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_Value()
    IL_0075:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_007a:  stloc.s    V_5
    IL_007c:  ldloc.s    V_4
    IL_007e:  ldfld      bool Game.BlockMeshVertex::IsEmissive
    IL_0083:  brfalse.s  IL_00df

    IL_0085:  ldloca.s   V_6
    IL_0087:  ldarga.s   color
    IL_0089:  call       instance uint8 [Engine]Engine.Color::get_R()
    IL_008e:  ldloca.s   V_4
    IL_0090:  ldflda     valuetype [Engine]Engine.Color Game.BlockMeshVertex::Color
    IL_0095:  call       instance uint8 [Engine]Engine.Color::get_R()
    IL_009a:  mul
    IL_009b:  ldc.i4     0xff
    IL_00a0:  div
    IL_00a1:  conv.u1
    IL_00a2:  ldarga.s   color
    IL_00a4:  call       instance uint8 [Engine]Engine.Color::get_G()
    IL_00a9:  ldloca.s   V_4
    IL_00ab:  ldflda     valuetype [Engine]Engine.Color Game.BlockMeshVertex::Color
    IL_00b0:  call       instance uint8 [Engine]Engine.Color::get_G()
    IL_00b5:  mul
    IL_00b6:  ldc.i4     0xff
    IL_00bb:  div
    IL_00bc:  conv.u1
    IL_00bd:  ldarga.s   color
    IL_00bf:  call       instance uint8 [Engine]Engine.Color::get_B()
    IL_00c4:  ldloca.s   V_4
    IL_00c6:  ldflda     valuetype [Engine]Engine.Color Game.BlockMeshVertex::Color
    IL_00cb:  call       instance uint8 [Engine]Engine.Color::get_B()
    IL_00d0:  mul
    IL_00d1:  ldc.i4     0xff
    IL_00d6:  div
    IL_00d7:  conv.u1
    IL_00d8:  call       instance void [Engine]Engine.Color::.ctor(uint8,
                                                                   uint8,
                                                                   uint8)
    IL_00dd:  br.s       IL_015c

    IL_00df:  ldarg.s    facesMap
    IL_00e1:  brtrue.s   IL_00ec

    IL_00e3:  ldloc.s    V_4
    IL_00e5:  ldfld      uint8 Game.BlockMeshVertex::Face
    IL_00ea:  br.s       IL_00f6

    IL_00ec:  ldarg.s    facesMap
    IL_00ee:  ldloc.s    V_4
    IL_00f0:  ldfld      uint8 Game.BlockMeshVertex::Face
    IL_00f5:  ldelem.i4
    IL_00f6:  stloc.s    V_7
    IL_00f8:  ldarg.0
    IL_00f9:  ldloc.s    V_7
    IL_00fb:  ldloc.s    V_5
    IL_00fd:  call       instance float32 Game.BlockGeometryGenerator::InterpolateCornerLights(int32,
                                                                                               valuetype [Engine]Engine.Vector3)
    IL_0102:  ldc.r4     255.
    IL_0107:  div
    IL_0108:  stloc.s    V_8
    IL_010a:  ldloca.s   V_6
    IL_010c:  ldarga.s   color
    IL_010e:  call       instance uint8 [Engine]Engine.Color::get_R()
    IL_0113:  ldloca.s   V_4
    IL_0115:  ldflda     valuetype [Engine]Engine.Color Game.BlockMeshVertex::Color
    IL_011a:  call       instance uint8 [Engine]Engine.Color::get_R()
    IL_011f:  mul
    IL_0120:  conv.r4
    IL_0121:  ldloc.s    V_8
    IL_0123:  mul
    IL_0124:  conv.u1
    IL_0125:  ldarga.s   color
    IL_0127:  call       instance uint8 [Engine]Engine.Color::get_G()
    IL_012c:  ldloca.s   V_4
    IL_012e:  ldflda     valuetype [Engine]Engine.Color Game.BlockMeshVertex::Color
    IL_0133:  call       instance uint8 [Engine]Engine.Color::get_G()
    IL_0138:  mul
    IL_0139:  conv.r4
    IL_013a:  ldloc.s    V_8
    IL_013c:  mul
    IL_013d:  conv.u1
    IL_013e:  ldarga.s   color
    IL_0140:  call       instance uint8 [Engine]Engine.Color::get_B()
    IL_0145:  ldloca.s   V_4
    IL_0147:  ldflda     valuetype [Engine]Engine.Color Game.BlockMeshVertex::Color
    IL_014c:  call       instance uint8 [Engine]Engine.Color::get_B()
    IL_0151:  mul
    IL_0152:  conv.r4
    IL_0153:  ldloc.s    V_8
    IL_0155:  mul
    IL_0156:  conv.u1
    IL_0157:  call       instance void [Engine]Engine.Color::.ctor(uint8,
                                                                   uint8,
                                                                   uint8)
    IL_015c:  ldarg.2
    IL_015d:  conv.r4
    IL_015e:  ldloc.s    V_5
    IL_0160:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0165:  add
    IL_0166:  ldarg.3
    IL_0167:  conv.r4
    IL_0168:  ldloc.s    V_5
    IL_016a:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_016f:  add
    IL_0170:  ldarg.s    z
    IL_0172:  conv.r4
    IL_0173:  ldloc.s    V_5
    IL_0175:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_017a:  add
    IL_017b:  ldloc.s    V_6
    IL_017d:  ldloc.s    V_4
    IL_017f:  ldfld      valuetype [Engine]Engine.Vector2 Game.BlockMeshVertex::TextureCoordinates
    IL_0184:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0189:  ldloc.s    V_4
    IL_018b:  ldfld      valuetype [Engine]Engine.Vector2 Game.BlockMeshVertex::TextureCoordinates
    IL_0190:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0195:  ldloc.0
    IL_0196:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_019b:  ldloc.2
    IL_019c:  ldloc.3
    IL_019d:  add
    IL_019e:  ldelema    Game.TerrainVertex
    IL_01a3:  call       void Game.BlockGeometryGenerator::SetupVertex(float32,
                                                                       float32,
                                                                       float32,
                                                                       valuetype [Engine]Engine.Color,
                                                                       float32,
                                                                       float32,
                                                                       valuetype Game.TerrainVertex&)
    IL_01a8:  ldloc.3
    IL_01a9:  ldc.i4.1
    IL_01aa:  add
    IL_01ab:  stloc.3
    IL_01ac:  ldloc.3
    IL_01ad:  ldarg.s    blockMesh
    IL_01af:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
    IL_01b4:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_01b9:  blt        IL_0041

    IL_01be:  ldc.i4.0
    IL_01bf:  stloc.s    V_9
    IL_01c1:  br.s       IL_01e1

    IL_01c3:  ldloc.1
    IL_01c4:  ldarg.s    blockMesh
    IL_01c6:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.BlockMesh::Indices
    IL_01cb:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_01d0:  ldloc.s    V_9
    IL_01d2:  ldelem.u2
    IL_01d3:  ldloc.2
    IL_01d4:  add
    IL_01d5:  conv.u2
    IL_01d6:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_01db:  ldloc.s    V_9
    IL_01dd:  ldc.i4.1
    IL_01de:  add
    IL_01df:  stloc.s    V_9
    IL_01e1:  ldloc.s    V_9
    IL_01e3:  ldarg.s    blockMesh
    IL_01e5:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.BlockMesh::Indices
    IL_01ea:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_01ef:  blt.s      IL_01c3

    IL_01f1:  ret
  } // end of method BlockGeometryGenerator::GenerateShadedMeshVertices

  .method public hidebysig instance void 
          GenerateWireVertices(int32 'value',
                               int32 x,
                               int32 y,
                               int32 z,
                               int32 mountingFace,
                               float32 centerBoxSize,
                               valuetype [Engine]Engine.Vector2 centerOffset,
                               class Game.TerrainGeometrySubset subset) cil managed
  {
    // 代码大小       3207 (0xc87)
    .maxstack  9
    .locals init (valuetype [Engine]Engine.Color V_0,
             int32 V_1,
             int32 V_2,
             float32 V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             valuetype [Engine]Engine.Vector3 V_5,
             valuetype [Engine]Engine.Vector2 V_6,
             valuetype [Engine]Engine.Vector2 V_7,
             valuetype [Engine]Engine.Point3 V_8,
             int32 V_9,
             bool V_10,
             valuetype [Engine]Engine.Vector3 V_11,
             valuetype [Engine]Engine.Vector3 V_12,
             int32 V_13,
             valuetype [System.Runtime]System.Nullable`1<int32> V_14,
             valuetype [Engine]Engine.DynamicArray`1/Enumerator<class Game.ElectricConnectionPath> V_15,
             class Game.ElectricConnectionPath V_16,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> V_17,
             valuetype [Engine]Engine.Color V_18,
             valuetype [Engine]Engine.Vector3 V_19,
             valuetype [Engine]Engine.Vector3 V_20,
             float32 V_21,
             float32 V_22,
             float32 V_23,
             valuetype [Engine]Engine.Vector3 V_24,
             valuetype [Engine]Engine.Vector3 V_25,
             valuetype [Engine]Engine.Vector3 V_26,
             valuetype [Engine]Engine.Vector3 V_27,
             valuetype [Engine]Engine.Vector3 V_28,
             valuetype [Engine]Engine.Vector3 V_29,
             valuetype [Engine]Engine.Vector2 V_30,
             valuetype [Engine]Engine.Vector2 V_31,
             valuetype [Engine]Engine.Vector2 V_32,
             valuetype [Engine]Engine.Vector2 V_33,
             valuetype [Engine]Engine.Vector2 V_34,
             valuetype [Engine]Engine.Vector2 V_35,
             int32 V_36,
             float32 V_37,
             float32 V_38,
             float32 V_39,
             float32 V_40,
             float32 V_41,
             float32 V_42,
             float32 V_43,
             float32 V_44,
             float32 V_45,
             float32 V_46,
             valuetype [Engine]Engine.Color V_47,
             valuetype [Engine]Engine.Color V_48,
             valuetype [Engine]Engine.Color V_49,
             valuetype [Engine]Engine.Color V_50,
             valuetype [Engine]Engine.Color V_51,
             valuetype [Engine]Engine.Color V_52,
             int32 V_53,
             valuetype Game.TerrainVertex[] V_54,
             int32 V_55,
             uint16[] V_56,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> V_57,
             valuetype Game.ElectricConnectorDirection V_58,
             int32 V_59,
             valuetype [System.Runtime]System.Nullable`1<int32> V_60,
             valuetype [Engine]Engine.Vector3 V_61,
             int32 V_62,
             valuetype [Engine]Engine.Vector3 V_63,
             valuetype [Engine]Engine.Vector3 V_64,
             valuetype [Engine]Engine.Vector3 V_65,
             valuetype [Engine]Engine.Vector3 V_66,
             valuetype [Engine]Engine.Vector3 V_67,
             valuetype [Engine]Engine.Vector2 V_68,
             valuetype [Engine]Engine.Vector2 V_69,
             valuetype [Engine]Engine.Vector2 V_70,
             float32 V_71,
             float32 V_72,
             valuetype [Engine]Engine.Color V_73,
             valuetype [Engine]Engine.Color V_74,
             int32 V_75,
             valuetype Game.TerrainVertex[] V_76,
             int32 V_77,
             valuetype [Engine]Engine.Vector3 V_78)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemElectricity Game.BlockGeometryGenerator::SubsystemElectricity
    IL_0006:  brtrue.s   IL_0009

    IL_0008:  ret

    IL_0009:  ldsfld     valuetype [Engine]Engine.Color Game.WireBlock::WireColor
    IL_000e:  stloc.0
    IL_000f:  ldarg.1
    IL_0010:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0015:  stloc.1
    IL_0016:  ldloc.1
    IL_0017:  ldc.i4     0x85
    IL_001c:  bne.un.s   IL_003d

    IL_001e:  ldarg.1
    IL_001f:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0024:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.WireBlock::GetColor(int32)
    IL_0029:  stloc.s    V_14
    IL_002b:  ldloca.s   V_14
    IL_002d:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0032:  brfalse.s  IL_003d

    IL_0034:  ldarg.0
    IL_0035:  ldloc.s    V_14
    IL_0037:  call       valuetype [Engine]Engine.Color Game.SubsystemPalette::GetColor(class Game.BlockGeometryGenerator,
                                                                                        valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_003c:  stloc.0
    IL_003d:  ldarg.1
    IL_003e:  call       int32 Game.Terrain::ExtractLight(int32)
    IL_0043:  stloc.2
    IL_0044:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_0049:  ldloc.2
    IL_004a:  ldelem.r4
    IL_004b:  stloc.3
    IL_004c:  ldarg.2
    IL_004d:  conv.r4
    IL_004e:  ldc.r4     0.5
    IL_0053:  add
    IL_0054:  ldarg.3
    IL_0055:  conv.r4
    IL_0056:  ldc.r4     0.5
    IL_005b:  add
    IL_005c:  ldarg.s    z
    IL_005e:  conv.r4
    IL_005f:  ldc.r4     0.5
    IL_0064:  add
    IL_0065:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_006a:  ldc.r4     0.5
    IL_006f:  ldarg.s    mountingFace
    IL_0071:  call       valuetype [Engine]Engine.Vector3 Game.CellFace::FaceToVector3(int32)
    IL_0076:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_007b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0080:  stloc.s    V_4
    IL_0082:  ldarg.s    mountingFace
    IL_0084:  call       valuetype [Engine]Engine.Vector3 Game.CellFace::FaceToVector3(int32)
    IL_0089:  stloc.s    V_5
    IL_008b:  ldloca.s   V_6
    IL_008d:  ldc.r4     0.93760002
    IL_0092:  ldc.r4     9.9999997e-005
    IL_0097:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_009c:  ldloca.s   V_7
    IL_009e:  ldc.r4     3.125e-002
    IL_00a3:  ldc.r4     5.5078124e-003
    IL_00a8:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00ad:  ldarg.s    mountingFace
    IL_00af:  call       valuetype [Engine]Engine.Point3 Game.CellFace::FaceToPoint3(int32)
    IL_00b4:  stloc.s    V_8
    IL_00b6:  ldarg.0
    IL_00b7:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_00bc:  ldarg.2
    IL_00bd:  ldloc.s    V_8
    IL_00bf:  ldfld      int32 [Engine]Engine.Point3::X
    IL_00c4:  sub
    IL_00c5:  ldarg.3
    IL_00c6:  ldloc.s    V_8
    IL_00c8:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_00cd:  sub
    IL_00ce:  ldarg.s    z
    IL_00d0:  ldloc.s    V_8
    IL_00d2:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_00d7:  sub
    IL_00d8:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                      int32,
                                                                      int32)
    IL_00dd:  stloc.s    V_9
    IL_00df:  ldloc.s    V_9
    IL_00e1:  ldc.i4.2
    IL_00e2:  beq.s      IL_0101

    IL_00e4:  ldloc.s    V_9
    IL_00e6:  ldc.i4.7
    IL_00e7:  beq.s      IL_0101

    IL_00e9:  ldloc.s    V_9
    IL_00eb:  ldc.i4.8
    IL_00ec:  beq.s      IL_0101

    IL_00ee:  ldloc.s    V_9
    IL_00f0:  ldc.i4.6
    IL_00f1:  beq.s      IL_0101

    IL_00f3:  ldloc.s    V_9
    IL_00f5:  ldc.i4.s   62
    IL_00f7:  beq.s      IL_0101

    IL_00f9:  ldloc.s    V_9
    IL_00fb:  ldc.i4.s   72
    IL_00fd:  ceq
    IL_00ff:  br.s       IL_0102

    IL_0101:  ldc.i4.1
    IL_0102:  stloc.s    V_10
    IL_0104:  ldarg.s    mountingFace
    IL_0106:  ldc.i4.0
    IL_0107:  call       int32 Game.SubsystemElectricity::GetConnectorFace(int32,
                                                                           valuetype Game.ElectricConnectorDirection)
    IL_010c:  call       valuetype [Engine]Engine.Vector3 Game.CellFace::FaceToVector3(int32)
    IL_0111:  stloc.s    V_11
    IL_0113:  ldarg.s    mountingFace
    IL_0115:  ldc.i4.1
    IL_0116:  call       int32 Game.SubsystemElectricity::GetConnectorFace(int32,
                                                                           valuetype Game.ElectricConnectorDirection)
    IL_011b:  call       valuetype [Engine]Engine.Vector3 Game.CellFace::FaceToVector3(int32)
    IL_0120:  ldarg.s    centerOffset
    IL_0122:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0127:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_012c:  ldloc.s    V_11
    IL_012e:  ldarg.s    centerOffset
    IL_0130:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0135:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_013a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_013f:  stloc.s    V_12
    IL_0141:  ldc.i4.0
    IL_0142:  stloc.s    V_13
    IL_0144:  ldarg.0
    IL_0145:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ElectricConnectionPath> Game.BlockGeometryGenerator::m_tmpConnectionPaths
    IL_014a:  callvirt   instance void class [Engine]Engine.DynamicArray`1<class Game.ElectricConnectionPath>::Clear()
    IL_014f:  ldarg.0
    IL_0150:  ldfld      class Game.SubsystemElectricity Game.BlockGeometryGenerator::SubsystemElectricity
    IL_0155:  ldarg.2
    IL_0156:  ldarg.3
    IL_0157:  ldarg.s    z
    IL_0159:  ldarg.s    mountingFace
    IL_015b:  ldarg.0
    IL_015c:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ElectricConnectionPath> Game.BlockGeometryGenerator::m_tmpConnectionPaths
    IL_0161:  callvirt   instance void Game.SubsystemElectricity::GetAllConnectedNeighbors(int32,
                                                                                           int32,
                                                                                           int32,
                                                                                           int32,
                                                                                           class [Engine]Engine.DynamicArray`1<class Game.ElectricConnectionPath>)
    IL_0166:  ldarg.0
    IL_0167:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ElectricConnectionPath> Game.BlockGeometryGenerator::m_tmpConnectionPaths
    IL_016c:  callvirt   instance valuetype [Engine]Engine.DynamicArray`1/Enumerator<!0> class [Engine]Engine.DynamicArray`1<class Game.ElectricConnectionPath>::GetEnumerator()
    IL_0171:  stloc.s    V_15
    .try
    {
      IL_0173:  br         IL_0973

      IL_0178:  ldloca.s   V_15
      IL_017a:  call       instance !0 valuetype [Engine]Engine.DynamicArray`1/Enumerator<class Game.ElectricConnectionPath>::get_Current()
      IL_017f:  stloc.s    V_16
      IL_0181:  ldloc.s    V_13
      IL_0183:  ldc.i4.1
      IL_0184:  ldloc.s    V_16
      IL_0186:  ldfld      int32 Game.ElectricConnectionPath::ConnectorFace
      IL_018b:  ldc.i4.s   31
      IL_018d:  and
      IL_018e:  shl
      IL_018f:  and
      IL_0190:  brtrue     IL_0973

      IL_0195:  ldarg.s    mountingFace
      IL_0197:  ldc.i4.0
      IL_0198:  ldloc.s    V_16
      IL_019a:  ldfld      int32 Game.ElectricConnectionPath::ConnectorFace
      IL_019f:  call       valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> Game.SubsystemElectricity::GetConnectorDirection(int32,
                                                                                                                                                                   int32,
                                                                                                                                                                   int32)
      IL_01a4:  stloc.s    V_17
      IL_01a6:  ldarg.s    centerOffset
      IL_01a8:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
      IL_01ad:  call       bool [Engine]Engine.Vector2::op_Equality(valuetype [Engine]Engine.Vector2,
                                                                    valuetype [Engine]Engine.Vector2)
      IL_01b2:  brfalse.s  IL_01d5

      IL_01b4:  ldloc.s    V_17
      IL_01b6:  stloc.s    V_57
      IL_01b8:  ldc.i4.4
      IL_01b9:  stloc.s    V_58
      IL_01bb:  ldloca.s   V_57
      IL_01bd:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::GetValueOrDefault()
      IL_01c2:  ldloc.s    V_58
      IL_01c4:  beq.s      IL_01c9

      IL_01c6:  ldc.i4.0
      IL_01c7:  br.s       IL_01d0

      IL_01c9:  ldloca.s   V_57
      IL_01cb:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
      IL_01d0:  brtrue     IL_0973

      IL_01d5:  ldloc.s    V_13
      IL_01d7:  ldc.i4.1
      IL_01d8:  ldloc.s    V_16
      IL_01da:  ldfld      int32 Game.ElectricConnectionPath::ConnectorFace
      IL_01df:  ldc.i4.s   31
      IL_01e1:  and
      IL_01e2:  shl
      IL_01e3:  or
      IL_01e4:  stloc.s    V_13
      IL_01e6:  ldloc.0
      IL_01e7:  stloc.s    V_18
      IL_01e9:  ldloc.1
      IL_01ea:  ldc.i4     0x85
      IL_01ef:  beq.s      IL_0249

      IL_01f1:  ldarg.0
      IL_01f2:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
      IL_01f7:  ldarg.2
      IL_01f8:  ldloc.s    V_16
      IL_01fa:  ldfld      int32 Game.ElectricConnectionPath::NeighborOffsetX
      IL_01ff:  add
      IL_0200:  ldarg.3
      IL_0201:  ldloc.s    V_16
      IL_0203:  ldfld      int32 Game.ElectricConnectionPath::NeighborOffsetY
      IL_0208:  add
      IL_0209:  ldarg.s    z
      IL_020b:  ldloc.s    V_16
      IL_020d:  ldfld      int32 Game.ElectricConnectionPath::NeighborOffsetZ
      IL_0212:  add
      IL_0213:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                     int32,
                                                                     int32)
      IL_0218:  stloc.s    V_59
      IL_021a:  ldloc.s    V_59
      IL_021c:  call       int32 Game.Terrain::ExtractContents(int32)
      IL_0221:  ldc.i4     0x85
      IL_0226:  bne.un.s   IL_0249

      IL_0228:  ldloc.s    V_59
      IL_022a:  call       int32 Game.Terrain::ExtractData(int32)
      IL_022f:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.WireBlock::GetColor(int32)
      IL_0234:  stloc.s    V_60
      IL_0236:  ldloca.s   V_60
      IL_0238:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
      IL_023d:  brfalse.s  IL_0249

      IL_023f:  ldarg.0
      IL_0240:  ldloc.s    V_60
      IL_0242:  call       valuetype [Engine]Engine.Color Game.SubsystemPalette::GetColor(class Game.BlockGeometryGenerator,
                                                                                          valuetype [System.Runtime]System.Nullable`1<int32>)
      IL_0247:  stloc.s    V_18
      IL_0249:  ldloc.s    V_17
      IL_024b:  stloc.s    V_57
      IL_024d:  ldc.i4.4
      IL_024e:  stloc.s    V_58
      IL_0250:  ldloca.s   V_57
      IL_0252:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::GetValueOrDefault()
      IL_0257:  ldloc.s    V_58
      IL_0259:  beq.s      IL_025e

      IL_025b:  ldc.i4.0
      IL_025c:  br.s       IL_0265

      IL_025e:  ldloca.s   V_57
      IL_0260:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
      IL_0265:  brfalse.s  IL_0277

      IL_0267:  ldloc.s    V_12
      IL_0269:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
      IL_026e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
      IL_0273:  stloc.s    V_19
      IL_0275:  br.s       IL_0285

      IL_0277:  ldloc.s    V_16
      IL_0279:  ldfld      int32 Game.ElectricConnectionPath::ConnectorFace
      IL_027e:  call       valuetype [Engine]Engine.Vector3 Game.CellFace::FaceToVector3(int32)
      IL_0283:  stloc.s    V_19
      IL_0285:  ldloc.s    V_5
      IL_0287:  ldloc.s    V_19
      IL_0289:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3)
      IL_028e:  stloc.s    V_20
      IL_0290:  ldarg.s    centerBoxSize
      IL_0292:  ldc.r4     0.0
      IL_0297:  bge.s      IL_02a3

      IL_0299:  ldarg.s    centerBoxSize
      IL_029b:  ldc.r4     2.
      IL_02a0:  div
      IL_02a1:  br.s       IL_02b5

      IL_02a3:  ldc.r4     3.125e-002
      IL_02a8:  ldarg.s    centerBoxSize
      IL_02aa:  ldc.r4     2.
      IL_02af:  div
      IL_02b0:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_02b5:  stloc.s    V_21
      IL_02b7:  ldloc.s    V_17
      IL_02b9:  stloc.s    V_57
      IL_02bb:  ldc.i4.4
      IL_02bc:  stloc.s    V_58
      IL_02be:  ldloca.s   V_57
      IL_02c0:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::GetValueOrDefault()
      IL_02c5:  ldloc.s    V_58
      IL_02c7:  beq.s      IL_02cc

      IL_02c9:  ldc.i4.0
      IL_02ca:  br.s       IL_02d3

      IL_02cc:  ldloca.s   V_57
      IL_02ce:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
      IL_02d3:  brtrue.s   IL_02dc

      IL_02d5:  ldc.r4     0.5
      IL_02da:  br.s       IL_02e1

      IL_02dc:  ldc.r4     3.125e-002
      IL_02e1:  stloc.s    V_22
      IL_02e3:  ldloc.s    V_17
      IL_02e5:  stloc.s    V_57
      IL_02e7:  ldc.i4.4
      IL_02e8:  stloc.s    V_58
      IL_02ea:  ldloca.s   V_57
      IL_02ec:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::GetValueOrDefault()
      IL_02f1:  ldloc.s    V_58
      IL_02f3:  beq.s      IL_02f8

      IL_02f5:  ldc.i4.0
      IL_02f6:  br.s       IL_02ff

      IL_02f8:  ldloca.s   V_57
      IL_02fa:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
      IL_02ff:  brfalse.s  IL_030a

      IL_0301:  ldc.r4     0.0
      IL_0306:  stloc.s    V_23
      IL_0308:  br.s       IL_034b

      IL_030a:  ldloc.s    V_16
      IL_030c:  ldfld      int32 Game.ElectricConnectionPath::ConnectorFace
      IL_0311:  ldloc.s    V_16
      IL_0313:  ldfld      int32 Game.ElectricConnectionPath::NeighborFace
      IL_0318:  bne.un.s   IL_0326

      IL_031a:  ldloc.s    V_22
      IL_031c:  ldc.r4     3.125e-002
      IL_0321:  add
      IL_0322:  stloc.s    V_23
      IL_0324:  br.s       IL_034b

      IL_0326:  ldloc.s    V_16
      IL_0328:  ldfld      int32 Game.ElectricConnectionPath::ConnectorFace
      IL_032d:  ldloc.s    V_16
      IL_032f:  ldfld      int32 Game.ElectricConnectionPath::NeighborFace
      IL_0334:  call       int32 Game.CellFace::OppositeFace(int32)
      IL_0339:  bne.un.s   IL_0347

      IL_033b:  ldloc.s    V_22
      IL_033d:  ldc.r4     3.125e-002
      IL_0342:  sub
      IL_0343:  stloc.s    V_23
      IL_0345:  br.s       IL_034b

      IL_0347:  ldloc.s    V_22
      IL_0349:  stloc.s    V_23
      IL_034b:  ldloc.s    V_4
      IL_034d:  ldloc.s    V_20
      IL_034f:  ldc.r4     3.125e-002
      IL_0354:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_0359:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                   valuetype [Engine]Engine.Vector3)
      IL_035e:  ldloc.s    V_19
      IL_0360:  ldloc.s    V_21
      IL_0362:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_0367:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_036c:  ldloc.s    V_12
      IL_036e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0373:  stloc.s    V_24
      IL_0375:  ldloc.s    V_4
      IL_0377:  ldloc.s    V_20
      IL_0379:  ldc.r4     3.125e-002
      IL_037e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_0383:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                   valuetype [Engine]Engine.Vector3)
      IL_0388:  ldloc.s    V_19
      IL_038a:  ldloc.s    V_22
      IL_038c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_0391:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0396:  stloc.s    V_25
      IL_0398:  ldloc.s    V_4
      IL_039a:  ldloc.s    V_20
      IL_039c:  ldc.r4     3.125e-002
      IL_03a1:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_03a6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_03ab:  ldloc.s    V_19
      IL_03ad:  ldloc.s    V_22
      IL_03af:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_03b4:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_03b9:  stloc.s    V_26
      IL_03bb:  ldloc.s    V_4
      IL_03bd:  ldloc.s    V_20
      IL_03bf:  ldc.r4     3.125e-002
      IL_03c4:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_03c9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_03ce:  ldloc.s    V_19
      IL_03d0:  ldloc.s    V_21
      IL_03d2:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_03d7:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_03dc:  ldloc.s    V_12
      IL_03de:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_03e3:  stloc.s    V_27
      IL_03e5:  ldloc.s    V_4
      IL_03e7:  ldloc.s    V_5
      IL_03e9:  ldc.r4     3.125e-002
      IL_03ee:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_03f3:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_03f8:  ldloc.s    V_19
      IL_03fa:  ldarg.s    centerBoxSize
      IL_03fc:  ldc.r4     2.
      IL_0401:  div
      IL_0402:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_0407:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_040c:  ldloc.s    V_12
      IL_040e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0413:  stloc.s    V_28
      IL_0415:  ldloc.s    V_4
      IL_0417:  ldloc.s    V_5
      IL_0419:  ldc.r4     3.125e-002
      IL_041e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_0423:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0428:  ldloc.s    V_19
      IL_042a:  ldloc.s    V_23
      IL_042c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_0431:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0436:  stloc.s    V_29
      IL_0438:  ldloc.s    V_10
      IL_043a:  brfalse.s  IL_048c

      IL_043c:  ldarg.s    centerBoxSize
      IL_043e:  ldc.r4     0.0
      IL_0443:  bne.un.s   IL_048c

      IL_0445:  ldc.r4     0.25
      IL_044a:  ldc.r4     0.5
      IL_044f:  ldloc.s    V_24
      IL_0451:  ldloc.s    V_27
      IL_0453:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0458:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_045d:  ldloc.s    V_5
      IL_045f:  call       valuetype [Engine]Engine.Vector3 Game.BlockGeometryGenerator::GetRandomWireOffset(valuetype [Engine]Engine.Vector3,
                                                                                                             valuetype [Engine]Engine.Vector3)
      IL_0464:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0469:  stloc.s    V_61
      IL_046b:  ldloc.s    V_24
      IL_046d:  ldloc.s    V_61
      IL_046f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0474:  stloc.s    V_24
      IL_0476:  ldloc.s    V_27
      IL_0478:  ldloc.s    V_61
      IL_047a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_047f:  stloc.s    V_27
      IL_0481:  ldloc.s    V_28
      IL_0483:  ldloc.s    V_61
      IL_0485:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_048a:  stloc.s    V_28
      IL_048c:  ldloc.s    V_6
      IL_048e:  ldloc.s    V_7
      IL_0490:  ldc.r4     6.25e-002
      IL_0495:  ldarg.s    centerBoxSize
      IL_0497:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_049c:  ldc.r4     0.0
      IL_04a1:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_04a6:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_04ab:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_04b0:  stloc.s    V_30
      IL_04b2:  ldloc.s    V_6
      IL_04b4:  ldloc.s    V_7
      IL_04b6:  ldloc.s    V_22
      IL_04b8:  ldc.r4     2.
      IL_04bd:  mul
      IL_04be:  ldc.r4     0.0
      IL_04c3:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_04c8:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_04cd:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_04d2:  stloc.s    V_31
      IL_04d4:  ldloc.s    V_6
      IL_04d6:  ldloc.s    V_7
      IL_04d8:  ldloc.s    V_22
      IL_04da:  ldc.r4     2.
      IL_04df:  mul
      IL_04e0:  ldc.r4     1.
      IL_04e5:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_04ea:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_04ef:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_04f4:  stloc.s    V_32
      IL_04f6:  ldloc.s    V_6
      IL_04f8:  ldloc.s    V_7
      IL_04fa:  ldc.r4     6.25e-002
      IL_04ff:  ldarg.s    centerBoxSize
      IL_0501:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_0506:  ldc.r4     1.
      IL_050b:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_0510:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_0515:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_051a:  stloc.s    V_33
      IL_051c:  ldloc.s    V_6
      IL_051e:  ldloc.s    V_7
      IL_0520:  ldarg.s    centerBoxSize
      IL_0522:  ldc.r4     0.5
      IL_0527:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_052c:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_0531:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_0536:  stloc.s    V_34
      IL_0538:  ldloc.s    V_6
      IL_053a:  ldloc.s    V_7
      IL_053c:  ldloc.s    V_23
      IL_053e:  ldc.r4     2.
      IL_0543:  mul
      IL_0544:  ldc.r4     0.5
      IL_0549:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_054e:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_0553:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_0558:  stloc.s    V_35
      IL_055a:  ldarg.0
      IL_055b:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
      IL_0560:  ldarg.2
      IL_0561:  ldloc.s    V_16
      IL_0563:  ldfld      int32 Game.ElectricConnectionPath::NeighborOffsetX
      IL_0568:  add
      IL_0569:  ldarg.3
      IL_056a:  ldloc.s    V_16
      IL_056c:  ldfld      int32 Game.ElectricConnectionPath::NeighborOffsetY
      IL_0571:  add
      IL_0572:  ldarg.s    z
      IL_0574:  ldloc.s    V_16
      IL_0576:  ldfld      int32 Game.ElectricConnectionPath::NeighborOffsetZ
      IL_057b:  add
      IL_057c:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                     int32,
                                                                     int32)
      IL_0581:  call       int32 Game.Terrain::ExtractLight(int32)
      IL_0586:  stloc.s    V_36
      IL_0588:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
      IL_058d:  ldloc.s    V_36
      IL_058f:  ldelem.r4
      IL_0590:  stloc.s    V_37
      IL_0592:  ldc.r4     0.5
      IL_0597:  ldloc.3
      IL_0598:  ldloc.s    V_37
      IL_059a:  add
      IL_059b:  mul
      IL_059c:  stloc.s    V_38
      IL_059e:  ldloc.s    V_20
      IL_05a0:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
      IL_05a5:  call       float32 Game.LightingManager::CalculateLighting(valuetype [Engine]Engine.Vector3)
      IL_05aa:  ldloc.s    V_20
      IL_05ac:  call       float32 Game.LightingManager::CalculateLighting(valuetype [Engine]Engine.Vector3)
      IL_05b1:  stloc.s    V_39
      IL_05b3:  ldloc.s    V_5
      IL_05b5:  call       float32 Game.LightingManager::CalculateLighting(valuetype [Engine]Engine.Vector3)
      IL_05ba:  stloc.s    V_40
      IL_05bc:  dup
      IL_05bd:  ldloc.3
      IL_05be:  mul
      IL_05bf:  stloc.s    V_41
      IL_05c1:  ldloc.s    V_38
      IL_05c3:  mul
      IL_05c4:  stloc.s    V_42
      IL_05c6:  ldloc.s    V_39
      IL_05c8:  ldloc.s    V_38
      IL_05ca:  mul
      IL_05cb:  stloc.s    V_43
      IL_05cd:  ldloc.s    V_39
      IL_05cf:  ldloc.3
      IL_05d0:  mul
      IL_05d1:  stloc.s    V_44
      IL_05d3:  ldloc.s    V_40
      IL_05d5:  ldloc.3
      IL_05d6:  mul
      IL_05d7:  stloc.s    V_45
      IL_05d9:  ldloc.s    V_40
      IL_05db:  ldloc.s    V_38
      IL_05dd:  mul
      IL_05de:  stloc.s    V_46
      IL_05e0:  ldloca.s   V_47
      IL_05e2:  ldloca.s   V_18
      IL_05e4:  call       instance uint8 [Engine]Engine.Color::get_R()
      IL_05e9:  conv.r4
      IL_05ea:  ldloc.s    V_41
      IL_05ec:  mul
      IL_05ed:  conv.u1
      IL_05ee:  ldloca.s   V_18
      IL_05f0:  call       instance uint8 [Engine]Engine.Color::get_G()
      IL_05f5:  conv.r4
      IL_05f6:  ldloc.s    V_41
      IL_05f8:  mul
      IL_05f9:  conv.u1
      IL_05fa:  ldloca.s   V_18
      IL_05fc:  call       instance uint8 [Engine]Engine.Color::get_B()
      IL_0601:  conv.r4
      IL_0602:  ldloc.s    V_41
      IL_0604:  mul
      IL_0605:  conv.u1
      IL_0606:  call       instance void [Engine]Engine.Color::.ctor(uint8,
                                                                     uint8,
                                                                     uint8)
      IL_060b:  ldloca.s   V_48
      IL_060d:  ldloca.s   V_18
      IL_060f:  call       instance uint8 [Engine]Engine.Color::get_R()
      IL_0614:  conv.r4
      IL_0615:  ldloc.s    V_42
      IL_0617:  mul
      IL_0618:  conv.u1
      IL_0619:  ldloca.s   V_18
      IL_061b:  call       instance uint8 [Engine]Engine.Color::get_G()
      IL_0620:  conv.r4
      IL_0621:  ldloc.s    V_42
      IL_0623:  mul
      IL_0624:  conv.u1
      IL_0625:  ldloca.s   V_18
      IL_0627:  call       instance uint8 [Engine]Engine.Color::get_B()
      IL_062c:  conv.r4
      IL_062d:  ldloc.s    V_42
      IL_062f:  mul
      IL_0630:  conv.u1
      IL_0631:  call       instance void [Engine]Engine.Color::.ctor(uint8,
                                                                     uint8,
                                                                     uint8)
      IL_0636:  ldloca.s   V_49
      IL_0638:  ldloca.s   V_18
      IL_063a:  call       instance uint8 [Engine]Engine.Color::get_R()
      IL_063f:  conv.r4
      IL_0640:  ldloc.s    V_43
      IL_0642:  mul
      IL_0643:  conv.u1
      IL_0644:  ldloca.s   V_18
      IL_0646:  call       instance uint8 [Engine]Engine.Color::get_G()
      IL_064b:  conv.r4
      IL_064c:  ldloc.s    V_43
      IL_064e:  mul
      IL_064f:  conv.u1
      IL_0650:  ldloca.s   V_18
      IL_0652:  call       instance uint8 [Engine]Engine.Color::get_B()
      IL_0657:  conv.r4
      IL_0658:  ldloc.s    V_43
      IL_065a:  mul
      IL_065b:  conv.u1
      IL_065c:  call       instance void [Engine]Engine.Color::.ctor(uint8,
                                                                     uint8,
                                                                     uint8)
      IL_0661:  ldloca.s   V_50
      IL_0663:  ldloca.s   V_18
      IL_0665:  call       instance uint8 [Engine]Engine.Color::get_R()
      IL_066a:  conv.r4
      IL_066b:  ldloc.s    V_44
      IL_066d:  mul
      IL_066e:  conv.u1
      IL_066f:  ldloca.s   V_18
      IL_0671:  call       instance uint8 [Engine]Engine.Color::get_G()
      IL_0676:  conv.r4
      IL_0677:  ldloc.s    V_44
      IL_0679:  mul
      IL_067a:  conv.u1
      IL_067b:  ldloca.s   V_18
      IL_067d:  call       instance uint8 [Engine]Engine.Color::get_B()
      IL_0682:  conv.r4
      IL_0683:  ldloc.s    V_44
      IL_0685:  mul
      IL_0686:  conv.u1
      IL_0687:  call       instance void [Engine]Engine.Color::.ctor(uint8,
                                                                     uint8,
                                                                     uint8)
      IL_068c:  ldloca.s   V_51
      IL_068e:  ldloca.s   V_18
      IL_0690:  call       instance uint8 [Engine]Engine.Color::get_R()
      IL_0695:  conv.r4
      IL_0696:  ldloc.s    V_45
      IL_0698:  mul
      IL_0699:  conv.u1
      IL_069a:  ldloca.s   V_18
      IL_069c:  call       instance uint8 [Engine]Engine.Color::get_G()
      IL_06a1:  conv.r4
      IL_06a2:  ldloc.s    V_45
      IL_06a4:  mul
      IL_06a5:  conv.u1
      IL_06a6:  ldloca.s   V_18
      IL_06a8:  call       instance uint8 [Engine]Engine.Color::get_B()
      IL_06ad:  conv.r4
      IL_06ae:  ldloc.s    V_45
      IL_06b0:  mul
      IL_06b1:  conv.u1
      IL_06b2:  call       instance void [Engine]Engine.Color::.ctor(uint8,
                                                                     uint8,
                                                                     uint8)
      IL_06b7:  ldloca.s   V_52
      IL_06b9:  ldloca.s   V_18
      IL_06bb:  call       instance uint8 [Engine]Engine.Color::get_R()
      IL_06c0:  conv.r4
      IL_06c1:  ldloc.s    V_46
      IL_06c3:  mul
      IL_06c4:  conv.u1
      IL_06c5:  ldloca.s   V_18
      IL_06c7:  call       instance uint8 [Engine]Engine.Color::get_G()
      IL_06cc:  conv.r4
      IL_06cd:  ldloc.s    V_46
      IL_06cf:  mul
      IL_06d0:  conv.u1
      IL_06d1:  ldloca.s   V_18
      IL_06d3:  call       instance uint8 [Engine]Engine.Color::get_B()
      IL_06d8:  conv.r4
      IL_06d9:  ldloc.s    V_46
      IL_06db:  mul
      IL_06dc:  conv.u1
      IL_06dd:  call       instance void [Engine]Engine.Color::.ctor(uint8,
                                                                     uint8,
                                                                     uint8)
      IL_06e2:  ldarg.s    subset
      IL_06e4:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
      IL_06e9:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
      IL_06ee:  stloc.s    V_53
      IL_06f0:  ldarg.s    subset
      IL_06f2:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
      IL_06f7:  dup
      IL_06f8:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
      IL_06fd:  ldc.i4.6
      IL_06fe:  add
      IL_06ff:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
      IL_0704:  ldarg.s    subset
      IL_0706:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
      IL_070b:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
      IL_0710:  stloc.s    V_54
      IL_0712:  ldloc.s    V_24
      IL_0714:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0719:  ldloc.s    V_24
      IL_071b:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_0720:  ldloc.s    V_24
      IL_0722:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0727:  ldloc.s    V_47
      IL_0729:  ldloc.s    V_30
      IL_072b:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0730:  ldloc.s    V_30
      IL_0732:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0737:  ldloc.s    V_54
      IL_0739:  ldloc.s    V_53
      IL_073b:  ldelema    Game.TerrainVertex
      IL_0740:  call       void Game.BlockGeometryGenerator::SetupVertex(float32,
                                                                         float32,
                                                                         float32,
                                                                         valuetype [Engine]Engine.Color,
                                                                         float32,
                                                                         float32,
                                                                         valuetype Game.TerrainVertex&)
      IL_0745:  ldloc.s    V_25
      IL_0747:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_074c:  ldloc.s    V_25
      IL_074e:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_0753:  ldloc.s    V_25
      IL_0755:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_075a:  ldloc.s    V_48
      IL_075c:  ldloc.s    V_31
      IL_075e:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0763:  ldloc.s    V_31
      IL_0765:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_076a:  ldloc.s    V_54
      IL_076c:  ldloc.s    V_53
      IL_076e:  ldc.i4.1
      IL_076f:  add
      IL_0770:  ldelema    Game.TerrainVertex
      IL_0775:  call       void Game.BlockGeometryGenerator::SetupVertex(float32,
                                                                         float32,
                                                                         float32,
                                                                         valuetype [Engine]Engine.Color,
                                                                         float32,
                                                                         float32,
                                                                         valuetype Game.TerrainVertex&)
      IL_077a:  ldloc.s    V_26
      IL_077c:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0781:  ldloc.s    V_26
      IL_0783:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_0788:  ldloc.s    V_26
      IL_078a:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_078f:  ldloc.s    V_49
      IL_0791:  ldloc.s    V_32
      IL_0793:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0798:  ldloc.s    V_32
      IL_079a:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_079f:  ldloc.s    V_54
      IL_07a1:  ldloc.s    V_53
      IL_07a3:  ldc.i4.2
      IL_07a4:  add
      IL_07a5:  ldelema    Game.TerrainVertex
      IL_07aa:  call       void Game.BlockGeometryGenerator::SetupVertex(float32,
                                                                         float32,
                                                                         float32,
                                                                         valuetype [Engine]Engine.Color,
                                                                         float32,
                                                                         float32,
                                                                         valuetype Game.TerrainVertex&)
      IL_07af:  ldloc.s    V_27
      IL_07b1:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_07b6:  ldloc.s    V_27
      IL_07b8:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_07bd:  ldloc.s    V_27
      IL_07bf:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_07c4:  ldloc.s    V_50
      IL_07c6:  ldloc.s    V_33
      IL_07c8:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_07cd:  ldloc.s    V_33
      IL_07cf:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_07d4:  ldloc.s    V_54
      IL_07d6:  ldloc.s    V_53
      IL_07d8:  ldc.i4.3
      IL_07d9:  add
      IL_07da:  ldelema    Game.TerrainVertex
      IL_07df:  call       void Game.BlockGeometryGenerator::SetupVertex(float32,
                                                                         float32,
                                                                         float32,
                                                                         valuetype [Engine]Engine.Color,
                                                                         float32,
                                                                         float32,
                                                                         valuetype Game.TerrainVertex&)
      IL_07e4:  ldloc.s    V_28
      IL_07e6:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_07eb:  ldloc.s    V_28
      IL_07ed:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_07f2:  ldloc.s    V_28
      IL_07f4:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_07f9:  ldloc.s    V_51
      IL_07fb:  ldloc.s    V_34
      IL_07fd:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0802:  ldloc.s    V_34
      IL_0804:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0809:  ldloc.s    V_54
      IL_080b:  ldloc.s    V_53
      IL_080d:  ldc.i4.4
      IL_080e:  add
      IL_080f:  ldelema    Game.TerrainVertex
      IL_0814:  call       void Game.BlockGeometryGenerator::SetupVertex(float32,
                                                                         float32,
                                                                         float32,
                                                                         valuetype [Engine]Engine.Color,
                                                                         float32,
                                                                         float32,
                                                                         valuetype Game.TerrainVertex&)
      IL_0819:  ldloc.s    V_29
      IL_081b:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0820:  ldloc.s    V_29
      IL_0822:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_0827:  ldloc.s    V_29
      IL_0829:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_082e:  ldloc.s    V_52
      IL_0830:  ldloc.s    V_35
      IL_0832:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0837:  ldloc.s    V_35
      IL_0839:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_083e:  ldloc.s    V_54
      IL_0840:  ldloc.s    V_53
      IL_0842:  ldc.i4.5
      IL_0843:  add
      IL_0844:  ldelema    Game.TerrainVertex
      IL_0849:  call       void Game.BlockGeometryGenerator::SetupVertex(float32,
                                                                         float32,
                                                                         float32,
                                                                         valuetype [Engine]Engine.Color,
                                                                         float32,
                                                                         float32,
                                                                         valuetype Game.TerrainVertex&)
      IL_084e:  ldarg.s    subset
      IL_0850:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
      IL_0855:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
      IL_085a:  stloc.s    V_55
      IL_085c:  ldarg.s    subset
      IL_085e:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
      IL_0863:  dup
      IL_0864:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
      IL_0869:  ldloc.s    V_17
      IL_086b:  stloc.s    V_57
      IL_086d:  ldc.i4.4
      IL_086e:  stloc.s    V_58
      IL_0870:  ldloca.s   V_57
      IL_0872:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::GetValueOrDefault()
      IL_0877:  ldloc.s    V_58
      IL_0879:  beq.s      IL_087e

      IL_087b:  ldc.i4.0
      IL_087c:  br.s       IL_0885

      IL_087e:  ldloca.s   V_57
      IL_0880:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
      IL_0885:  brtrue.s   IL_088b

      IL_0887:  ldc.i4.s   12
      IL_0889:  br.s       IL_088d

      IL_088b:  ldc.i4.s   15
      IL_088d:  add
      IL_088e:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::set_Count(int32)
      IL_0893:  ldarg.s    subset
      IL_0895:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
      IL_089a:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
      IL_089f:  stloc.s    V_56
      IL_08a1:  ldloc.s    V_56
      IL_08a3:  ldloc.s    V_55
      IL_08a5:  ldloc.s    V_53
      IL_08a7:  conv.u2
      IL_08a8:  stelem.i2
      IL_08a9:  ldloc.s    V_56
      IL_08ab:  ldloc.s    V_55
      IL_08ad:  ldc.i4.1
      IL_08ae:  add
      IL_08af:  ldloc.s    V_53
      IL_08b1:  ldc.i4.5
      IL_08b2:  add
      IL_08b3:  conv.u2
      IL_08b4:  stelem.i2
      IL_08b5:  ldloc.s    V_56
      IL_08b7:  ldloc.s    V_55
      IL_08b9:  ldc.i4.2
      IL_08ba:  add
      IL_08bb:  ldloc.s    V_53
      IL_08bd:  ldc.i4.1
      IL_08be:  add
      IL_08bf:  conv.u2
      IL_08c0:  stelem.i2
      IL_08c1:  ldloc.s    V_56
      IL_08c3:  ldloc.s    V_55
      IL_08c5:  ldc.i4.3
      IL_08c6:  add
      IL_08c7:  ldloc.s    V_53
      IL_08c9:  ldc.i4.5
      IL_08ca:  add
      IL_08cb:  conv.u2
      IL_08cc:  stelem.i2
      IL_08cd:  ldloc.s    V_56
      IL_08cf:  ldloc.s    V_55
      IL_08d1:  ldc.i4.4
      IL_08d2:  add
      IL_08d3:  ldloc.s    V_53
      IL_08d5:  conv.u2
      IL_08d6:  stelem.i2
      IL_08d7:  ldloc.s    V_56
      IL_08d9:  ldloc.s    V_55
      IL_08db:  ldc.i4.5
      IL_08dc:  add
      IL_08dd:  ldloc.s    V_53
      IL_08df:  ldc.i4.4
      IL_08e0:  add
      IL_08e1:  conv.u2
      IL_08e2:  stelem.i2
      IL_08e3:  ldloc.s    V_56
      IL_08e5:  ldloc.s    V_55
      IL_08e7:  ldc.i4.6
      IL_08e8:  add
      IL_08e9:  ldloc.s    V_53
      IL_08eb:  ldc.i4.4
      IL_08ec:  add
      IL_08ed:  conv.u2
      IL_08ee:  stelem.i2
      IL_08ef:  ldloc.s    V_56
      IL_08f1:  ldloc.s    V_55
      IL_08f3:  ldc.i4.7
      IL_08f4:  add
      IL_08f5:  ldloc.s    V_53
      IL_08f7:  ldc.i4.2
      IL_08f8:  add
      IL_08f9:  conv.u2
      IL_08fa:  stelem.i2
      IL_08fb:  ldloc.s    V_56
      IL_08fd:  ldloc.s    V_55
      IL_08ff:  ldc.i4.8
      IL_0900:  add
      IL_0901:  ldloc.s    V_53
      IL_0903:  ldc.i4.5
      IL_0904:  add
      IL_0905:  conv.u2
      IL_0906:  stelem.i2
      IL_0907:  ldloc.s    V_56
      IL_0909:  ldloc.s    V_55
      IL_090b:  ldc.i4.s   9
      IL_090d:  add
      IL_090e:  ldloc.s    V_53
      IL_0910:  ldc.i4.2
      IL_0911:  add
      IL_0912:  conv.u2
      IL_0913:  stelem.i2
      IL_0914:  ldloc.s    V_56
      IL_0916:  ldloc.s    V_55
      IL_0918:  ldc.i4.s   10
      IL_091a:  add
      IL_091b:  ldloc.s    V_53
      IL_091d:  ldc.i4.4
      IL_091e:  add
      IL_091f:  conv.u2
      IL_0920:  stelem.i2
      IL_0921:  ldloc.s    V_56
      IL_0923:  ldloc.s    V_55
      IL_0925:  ldc.i4.s   11
      IL_0927:  add
      IL_0928:  ldloc.s    V_53
      IL_092a:  ldc.i4.3
      IL_092b:  add
      IL_092c:  conv.u2
      IL_092d:  stelem.i2
      IL_092e:  ldloc.s    V_17
      IL_0930:  stloc.s    V_57
      IL_0932:  ldc.i4.4
      IL_0933:  stloc.s    V_58
      IL_0935:  ldloca.s   V_57
      IL_0937:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::GetValueOrDefault()
      IL_093c:  ldloc.s    V_58
      IL_093e:  beq.s      IL_0943

      IL_0940:  ldc.i4.0
      IL_0941:  br.s       IL_094a

      IL_0943:  ldloca.s   V_57
      IL_0945:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
      IL_094a:  brfalse.s  IL_0973

      IL_094c:  ldloc.s    V_56
      IL_094e:  ldloc.s    V_55
      IL_0950:  ldc.i4.s   12
      IL_0952:  add
      IL_0953:  ldloc.s    V_53
      IL_0955:  ldc.i4.2
      IL_0956:  add
      IL_0957:  conv.u2
      IL_0958:  stelem.i2
      IL_0959:  ldloc.s    V_56
      IL_095b:  ldloc.s    V_55
      IL_095d:  ldc.i4.s   13
      IL_095f:  add
      IL_0960:  ldloc.s    V_53
      IL_0962:  ldc.i4.1
      IL_0963:  add
      IL_0964:  conv.u2
      IL_0965:  stelem.i2
      IL_0966:  ldloc.s    V_56
      IL_0968:  ldloc.s    V_55
      IL_096a:  ldc.i4.s   14
      IL_096c:  add
      IL_096d:  ldloc.s    V_53
      IL_096f:  ldc.i4.5
      IL_0970:  add
      IL_0971:  conv.u2
      IL_0972:  stelem.i2
      IL_0973:  ldloca.s   V_15
      IL_0975:  call       instance bool valuetype [Engine]Engine.DynamicArray`1/Enumerator<class Game.ElectricConnectionPath>::MoveNext()
      IL_097a:  brtrue     IL_0178

      IL_097f:  leave.s    IL_098f

    }  // end .try
    finally
    {
      IL_0981:  ldloca.s   V_15
      IL_0983:  constrained. valuetype [Engine]Engine.DynamicArray`1/Enumerator<class Game.ElectricConnectionPath>
      IL_0989:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_098e:  endfinally
    }  // end handler
    IL_098f:  ldarg.s    centerBoxSize
    IL_0991:  ldc.r4     0.0
    IL_0996:  bne.un     IL_0c86

    IL_099b:  ldloc.s    V_13
    IL_099d:  brtrue.s   IL_09aa

    IL_099f:  ldloc.1
    IL_09a0:  ldc.i4     0x85
    IL_09a5:  bne.un     IL_0c86

    IL_09aa:  ldc.i4.0
    IL_09ab:  stloc.s    V_62
    IL_09ad:  br         IL_0c7e

    IL_09b2:  ldloc.s    V_62
    IL_09b4:  ldarg.s    mountingFace
    IL_09b6:  beq        IL_0c78

    IL_09bb:  ldloc.s    V_62
    IL_09bd:  ldarg.s    mountingFace
    IL_09bf:  call       int32 Game.CellFace::OppositeFace(int32)
    IL_09c4:  beq        IL_0c78

    IL_09c9:  ldloc.s    V_13
    IL_09cb:  ldc.i4.1
    IL_09cc:  ldloc.s    V_62
    IL_09ce:  ldc.i4.s   31
    IL_09d0:  and
    IL_09d1:  shl
    IL_09d2:  and
    IL_09d3:  brtrue     IL_0c78

    IL_09d8:  ldloc.s    V_62
    IL_09da:  call       valuetype [Engine]Engine.Vector3 Game.CellFace::FaceToVector3(int32)
    IL_09df:  stloc.s    V_63
    IL_09e1:  ldloc.s    V_5
    IL_09e3:  ldloc.s    V_63
    IL_09e5:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_09ea:  stloc.s    V_64
    IL_09ec:  ldloc.s    V_4
    IL_09ee:  ldloc.s    V_64
    IL_09f0:  ldc.r4     3.125e-002
    IL_09f5:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_09fa:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_09ff:  ldloc.s    V_63
    IL_0a01:  ldc.r4     3.125e-002
    IL_0a06:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0a0b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0a10:  stloc.s    V_65
    IL_0a12:  ldloc.s    V_4
    IL_0a14:  ldloc.s    V_64
    IL_0a16:  ldc.r4     3.125e-002
    IL_0a1b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0a20:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0a25:  ldloc.s    V_63
    IL_0a27:  ldc.r4     3.125e-002
    IL_0a2c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0a31:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0a36:  stloc.s    V_66
    IL_0a38:  ldloc.s    V_4
    IL_0a3a:  ldloc.s    V_5
    IL_0a3c:  ldc.r4     3.125e-002
    IL_0a41:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0a46:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0a4b:  stloc.s    V_67
    IL_0a4d:  ldloc.s    V_10
    IL_0a4f:  brfalse.s  IL_0a98

    IL_0a51:  ldc.r4     0.25
    IL_0a56:  ldc.r4     0.5
    IL_0a5b:  ldloc.s    V_65
    IL_0a5d:  ldloc.s    V_66
    IL_0a5f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0a64:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0a69:  ldloc.s    V_5
    IL_0a6b:  call       valuetype [Engine]Engine.Vector3 Game.BlockGeometryGenerator::GetRandomWireOffset(valuetype [Engine]Engine.Vector3,
                                                                                                           valuetype [Engine]Engine.Vector3)
    IL_0a70:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0a75:  stloc.s    V_78
    IL_0a77:  ldloc.s    V_65
    IL_0a79:  ldloc.s    V_78
    IL_0a7b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0a80:  stloc.s    V_65
    IL_0a82:  ldloc.s    V_66
    IL_0a84:  ldloc.s    V_78
    IL_0a86:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0a8b:  stloc.s    V_66
    IL_0a8d:  ldloc.s    V_67
    IL_0a8f:  ldloc.s    V_78
    IL_0a91:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0a96:  stloc.s    V_67
    IL_0a98:  ldloc.s    V_6
    IL_0a9a:  ldloc.s    V_7
    IL_0a9c:  ldc.r4     6.25e-002
    IL_0aa1:  ldc.r4     0.0
    IL_0aa6:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0aab:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0ab0:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0ab5:  stloc.s    V_68
    IL_0ab7:  ldloc.s    V_6
    IL_0ab9:  ldloc.s    V_7
    IL_0abb:  ldc.r4     6.25e-002
    IL_0ac0:  ldc.r4     1.
    IL_0ac5:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0aca:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0acf:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0ad4:  stloc.s    V_69
    IL_0ad6:  ldloc.s    V_6
    IL_0ad8:  ldloc.s    V_7
    IL_0ada:  ldc.r4     0.0
    IL_0adf:  ldc.r4     0.5
    IL_0ae4:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0ae9:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0aee:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0af3:  stloc.s    V_70
    IL_0af5:  ldloc.s    V_63
    IL_0af7:  call       float32 Game.LightingManager::CalculateLighting(valuetype [Engine]Engine.Vector3)
    IL_0afc:  ldloc.3
    IL_0afd:  mul
    IL_0afe:  stloc.s    V_71
    IL_0b00:  ldloc.s    V_5
    IL_0b02:  call       float32 Game.LightingManager::CalculateLighting(valuetype [Engine]Engine.Vector3)
    IL_0b07:  ldloc.3
    IL_0b08:  mul
    IL_0b09:  stloc.s    V_72
    IL_0b0b:  ldloca.s   V_73
    IL_0b0d:  ldloca.s   V_0
    IL_0b0f:  call       instance uint8 [Engine]Engine.Color::get_R()
    IL_0b14:  conv.r4
    IL_0b15:  ldloc.s    V_71
    IL_0b17:  mul
    IL_0b18:  conv.u1
    IL_0b19:  ldloca.s   V_0
    IL_0b1b:  call       instance uint8 [Engine]Engine.Color::get_G()
    IL_0b20:  conv.r4
    IL_0b21:  ldloc.s    V_71
    IL_0b23:  mul
    IL_0b24:  conv.u1
    IL_0b25:  ldloca.s   V_0
    IL_0b27:  call       instance uint8 [Engine]Engine.Color::get_B()
    IL_0b2c:  conv.r4
    IL_0b2d:  ldloc.s    V_71
    IL_0b2f:  mul
    IL_0b30:  conv.u1
    IL_0b31:  call       instance void [Engine]Engine.Color::.ctor(uint8,
                                                                   uint8,
                                                                   uint8)
    IL_0b36:  ldloca.s   V_74
    IL_0b38:  ldloca.s   V_0
    IL_0b3a:  call       instance uint8 [Engine]Engine.Color::get_R()
    IL_0b3f:  conv.r4
    IL_0b40:  ldloc.s    V_72
    IL_0b42:  mul
    IL_0b43:  conv.u1
    IL_0b44:  ldloca.s   V_0
    IL_0b46:  call       instance uint8 [Engine]Engine.Color::get_G()
    IL_0b4b:  conv.r4
    IL_0b4c:  ldloc.s    V_72
    IL_0b4e:  mul
    IL_0b4f:  conv.u1
    IL_0b50:  ldloca.s   V_0
    IL_0b52:  call       instance uint8 [Engine]Engine.Color::get_B()
    IL_0b57:  conv.r4
    IL_0b58:  ldloc.s    V_72
    IL_0b5a:  mul
    IL_0b5b:  conv.u1
    IL_0b5c:  call       instance void [Engine]Engine.Color::.ctor(uint8,
                                                                   uint8,
                                                                   uint8)
    IL_0b61:  ldarg.s    subset
    IL_0b63:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_0b68:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_0b6d:  stloc.s    V_75
    IL_0b6f:  ldarg.s    subset
    IL_0b71:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_0b76:  dup
    IL_0b77:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_0b7c:  ldc.i4.3
    IL_0b7d:  add
    IL_0b7e:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
    IL_0b83:  ldarg.s    subset
    IL_0b85:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_0b8a:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0b8f:  stloc.s    V_76
    IL_0b91:  ldloc.s    V_65
    IL_0b93:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0b98:  ldloc.s    V_65
    IL_0b9a:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0b9f:  ldloc.s    V_65
    IL_0ba1:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0ba6:  ldloc.s    V_73
    IL_0ba8:  ldloc.s    V_68
    IL_0baa:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0baf:  ldloc.s    V_68
    IL_0bb1:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0bb6:  ldloc.s    V_76
    IL_0bb8:  ldloc.s    V_75
    IL_0bba:  ldelema    Game.TerrainVertex
    IL_0bbf:  call       void Game.BlockGeometryGenerator::SetupVertex(float32,
                                                                       float32,
                                                                       float32,
                                                                       valuetype [Engine]Engine.Color,
                                                                       float32,
                                                                       float32,
                                                                       valuetype Game.TerrainVertex&)
    IL_0bc4:  ldloc.s    V_66
    IL_0bc6:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0bcb:  ldloc.s    V_66
    IL_0bcd:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0bd2:  ldloc.s    V_66
    IL_0bd4:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0bd9:  ldloc.s    V_73
    IL_0bdb:  ldloc.s    V_69
    IL_0bdd:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0be2:  ldloc.s    V_69
    IL_0be4:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0be9:  ldloc.s    V_76
    IL_0beb:  ldloc.s    V_75
    IL_0bed:  ldc.i4.1
    IL_0bee:  add
    IL_0bef:  ldelema    Game.TerrainVertex
    IL_0bf4:  call       void Game.BlockGeometryGenerator::SetupVertex(float32,
                                                                       float32,
                                                                       float32,
                                                                       valuetype [Engine]Engine.Color,
                                                                       float32,
                                                                       float32,
                                                                       valuetype Game.TerrainVertex&)
    IL_0bf9:  ldloc.s    V_67
    IL_0bfb:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0c00:  ldloc.s    V_67
    IL_0c02:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0c07:  ldloc.s    V_67
    IL_0c09:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0c0e:  ldloc.s    V_74
    IL_0c10:  ldloc.s    V_70
    IL_0c12:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0c17:  ldloc.s    V_70
    IL_0c19:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0c1e:  ldloc.s    V_76
    IL_0c20:  ldloc.s    V_75
    IL_0c22:  ldc.i4.2
    IL_0c23:  add
    IL_0c24:  ldelema    Game.TerrainVertex
    IL_0c29:  call       void Game.BlockGeometryGenerator::SetupVertex(float32,
                                                                       float32,
                                                                       float32,
                                                                       valuetype [Engine]Engine.Color,
                                                                       float32,
                                                                       float32,
                                                                       valuetype Game.TerrainVertex&)
    IL_0c2e:  ldarg.s    subset
    IL_0c30:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_0c35:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_0c3a:  stloc.s    V_77
    IL_0c3c:  ldarg.s    subset
    IL_0c3e:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_0c43:  dup
    IL_0c44:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_0c49:  ldc.i4.3
    IL_0c4a:  add
    IL_0c4b:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::set_Count(int32)
    IL_0c50:  ldarg.s    subset
    IL_0c52:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_0c57:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0c5c:  dup
    IL_0c5d:  ldloc.s    V_77
    IL_0c5f:  ldloc.s    V_75
    IL_0c61:  conv.u2
    IL_0c62:  stelem.i2
    IL_0c63:  dup
    IL_0c64:  ldloc.s    V_77
    IL_0c66:  ldc.i4.1
    IL_0c67:  add
    IL_0c68:  ldloc.s    V_75
    IL_0c6a:  ldc.i4.2
    IL_0c6b:  add
    IL_0c6c:  conv.u2
    IL_0c6d:  stelem.i2
    IL_0c6e:  ldloc.s    V_77
    IL_0c70:  ldc.i4.2
    IL_0c71:  add
    IL_0c72:  ldloc.s    V_75
    IL_0c74:  ldc.i4.1
    IL_0c75:  add
    IL_0c76:  conv.u2
    IL_0c77:  stelem.i2
    IL_0c78:  ldloc.s    V_62
    IL_0c7a:  ldc.i4.1
    IL_0c7b:  add
    IL_0c7c:  stloc.s    V_62
    IL_0c7e:  ldloc.s    V_62
    IL_0c80:  ldc.i4.6
    IL_0c81:  blt        IL_09b2

    IL_0c86:  ret
  } // end of method BlockGeometryGenerator::GenerateWireVertices

  .method private hidebysig instance int32 
          CalculateVertexLightFace0(int32 x,
                                    int32 y,
                                    int32 z) cil managed
  {
    // 代码大小       136 (0x88)
    .maxstack  6
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5)
    IL_0000:  ldc.i4.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_0007:  ldarg.1
    IL_0008:  ldc.i4.1
    IL_0009:  sub
    IL_000a:  ldarg.3
    IL_000b:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                       int32)
    IL_0010:  ldarg.1
    IL_0011:  ldc.i4.1
    IL_0012:  sub
    IL_0013:  ldc.i4.s   15
    IL_0015:  and
    IL_0016:  ldarg.2
    IL_0017:  ldarg.3
    IL_0018:  ldc.i4.s   15
    IL_001a:  and
    IL_001b:  call       int32 Game.TerrainChunk::CalculateCellIndex(int32,
                                                                     int32,
                                                                     int32)
    IL_0020:  stloc.0
    IL_0021:  dup
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.1
    IL_0024:  sub
    IL_0025:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32)
    IL_002a:  stloc.1
    IL_002b:  ldloc.0
    IL_002c:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32)
    IL_0031:  stloc.2
    IL_0032:  ldarg.0
    IL_0033:  ldloc.1
    IL_0034:  call       instance int32 Game.BlockGeometryGenerator::CalculateCubeVertexLight(int32)
    IL_0039:  add
    IL_003a:  ldarg.0
    IL_003b:  ldloc.2
    IL_003c:  call       instance int32 Game.BlockGeometryGenerator::CalculateCubeVertexLight(int32)
    IL_0041:  add
    IL_0042:  ldarg.0
    IL_0043:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_0048:  ldarg.1
    IL_0049:  ldarg.3
    IL_004a:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                       int32)
    IL_004f:  ldarg.1
    IL_0050:  ldc.i4.s   15
    IL_0052:  and
    IL_0053:  ldarg.2
    IL_0054:  ldarg.3
    IL_0055:  ldc.i4.s   15
    IL_0057:  and
    IL_0058:  call       int32 Game.TerrainChunk::CalculateCellIndex(int32,
                                                                     int32,
                                                                     int32)
    IL_005d:  stloc.3
    IL_005e:  dup
    IL_005f:  ldloc.3
    IL_0060:  ldc.i4.1
    IL_0061:  sub
    IL_0062:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32)
    IL_0067:  stloc.s    V_4
    IL_0069:  ldloc.3
    IL_006a:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32)
    IL_006f:  stloc.s    V_5
    IL_0071:  ldarg.0
    IL_0072:  ldloc.s    V_4
    IL_0074:  call       instance int32 Game.BlockGeometryGenerator::CalculateCubeVertexLight(int32)
    IL_0079:  add
    IL_007a:  ldarg.0
    IL_007b:  ldloc.s    V_5
    IL_007d:  call       instance int32 Game.BlockGeometryGenerator::CalculateCubeVertexLight(int32)
    IL_0082:  add
    IL_0083:  ldc.i4.3
    IL_0084:  add
    IL_0085:  ldc.i4.4
    IL_0086:  div
    IL_0087:  ret
  } // end of method BlockGeometryGenerator::CalculateVertexLightFace0

  .method private hidebysig instance int32 
          CalculateVertexLightFace1(int32 x,
                                    int32 y,
                                    int32 z) cil managed
  {
    // 代码大小       136 (0x88)
    .maxstack  6
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5)
    IL_0000:  ldc.i4.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_0007:  ldarg.1
    IL_0008:  ldarg.3
    IL_0009:  ldc.i4.1
    IL_000a:  sub
    IL_000b:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                       int32)
    IL_0010:  ldarg.1
    IL_0011:  ldc.i4.s   15
    IL_0013:  and
    IL_0014:  ldarg.2
    IL_0015:  ldarg.3
    IL_0016:  ldc.i4.1
    IL_0017:  sub
    IL_0018:  ldc.i4.s   15
    IL_001a:  and
    IL_001b:  call       int32 Game.TerrainChunk::CalculateCellIndex(int32,
                                                                     int32,
                                                                     int32)
    IL_0020:  stloc.0
    IL_0021:  dup
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.1
    IL_0024:  sub
    IL_0025:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32)
    IL_002a:  stloc.1
    IL_002b:  ldloc.0
    IL_002c:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32)
    IL_0031:  stloc.2
    IL_0032:  ldarg.0
    IL_0033:  ldloc.1
    IL_0034:  call       instance int32 Game.BlockGeometryGenerator::CalculateCubeVertexLight(int32)
    IL_0039:  add
    IL_003a:  ldarg.0
    IL_003b:  ldloc.2
    IL_003c:  call       instance int32 Game.BlockGeometryGenerator::CalculateCubeVertexLight(int32)
    IL_0041:  add
    IL_0042:  ldarg.0
    IL_0043:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_0048:  ldarg.1
    IL_0049:  ldarg.3
    IL_004a:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                       int32)
    IL_004f:  ldarg.1
    IL_0050:  ldc.i4.s   15
    IL_0052:  and
    IL_0053:  ldarg.2
    IL_0054:  ldarg.3
    IL_0055:  ldc.i4.s   15
    IL_0057:  and
    IL_0058:  call       int32 Game.TerrainChunk::CalculateCellIndex(int32,
                                                                     int32,
                                                                     int32)
    IL_005d:  stloc.3
    IL_005e:  dup
    IL_005f:  ldloc.3
    IL_0060:  ldc.i4.1
    IL_0061:  sub
    IL_0062:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32)
    IL_0067:  stloc.s    V_4
    IL_0069:  ldloc.3
    IL_006a:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32)
    IL_006f:  stloc.s    V_5
    IL_0071:  ldarg.0
    IL_0072:  ldloc.s    V_4
    IL_0074:  call       instance int32 Game.BlockGeometryGenerator::CalculateCubeVertexLight(int32)
    IL_0079:  add
    IL_007a:  ldarg.0
    IL_007b:  ldloc.s    V_5
    IL_007d:  call       instance int32 Game.BlockGeometryGenerator::CalculateCubeVertexLight(int32)
    IL_0082:  add
    IL_0083:  ldc.i4.3
    IL_0084:  add
    IL_0085:  ldc.i4.4
    IL_0086:  div
    IL_0087:  ret
  } // end of method BlockGeometryGenerator::CalculateVertexLightFace1

  .method private hidebysig instance int32 
          CalculateVertexLightFace2(int32 x,
                                    int32 y,
                                    int32 z) cil managed
  {
    // 代码大小       144 (0x90)
    .maxstack  6
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5)
    IL_0000:  ldc.i4.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_0007:  ldarg.1
    IL_0008:  ldc.i4.1
    IL_0009:  sub
    IL_000a:  ldarg.3
    IL_000b:  ldc.i4.1
    IL_000c:  sub
    IL_000d:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                       int32)
    IL_0012:  ldarg.1
    IL_0013:  ldc.i4.1
    IL_0014:  sub
    IL_0015:  ldc.i4.s   15
    IL_0017:  and
    IL_0018:  ldarg.2
    IL_0019:  ldarg.3
    IL_001a:  ldc.i4.1
    IL_001b:  sub
    IL_001c:  ldc.i4.s   15
    IL_001e:  and
    IL_001f:  call       int32 Game.TerrainChunk::CalculateCellIndex(int32,
                                                                     int32,
                                                                     int32)
    IL_0024:  stloc.0
    IL_0025:  dup
    IL_0026:  ldloc.0
    IL_0027:  ldc.i4.1
    IL_0028:  sub
    IL_0029:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32)
    IL_002e:  stloc.1
    IL_002f:  ldloc.0
    IL_0030:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32)
    IL_0035:  stloc.2
    IL_0036:  ldarg.0
    IL_0037:  ldloc.1
    IL_0038:  call       instance int32 Game.BlockGeometryGenerator::CalculateCubeVertexLight(int32)
    IL_003d:  add
    IL_003e:  ldarg.0
    IL_003f:  ldloc.2
    IL_0040:  call       instance int32 Game.BlockGeometryGenerator::CalculateCubeVertexLight(int32)
    IL_0045:  add
    IL_0046:  ldarg.0
    IL_0047:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_004c:  ldarg.1
    IL_004d:  ldarg.3
    IL_004e:  ldc.i4.1
    IL_004f:  sub
    IL_0050:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                       int32)
    IL_0055:  ldarg.1
    IL_0056:  ldc.i4.s   15
    IL_0058:  and
    IL_0059:  ldarg.2
    IL_005a:  ldarg.3
    IL_005b:  ldc.i4.1
    IL_005c:  sub
    IL_005d:  ldc.i4.s   15
    IL_005f:  and
    IL_0060:  call       int32 Game.TerrainChunk::CalculateCellIndex(int32,
                                                                     int32,
                                                                     int32)
    IL_0065:  stloc.3
    IL_0066:  dup
    IL_0067:  ldloc.3
    IL_0068:  ldc.i4.1
    IL_0069:  sub
    IL_006a:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32)
    IL_006f:  stloc.s    V_4
    IL_0071:  ldloc.3
    IL_0072:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32)
    IL_0077:  stloc.s    V_5
    IL_0079:  ldarg.0
    IL_007a:  ldloc.s    V_4
    IL_007c:  call       instance int32 Game.BlockGeometryGenerator::CalculateCubeVertexLight(int32)
    IL_0081:  add
    IL_0082:  ldarg.0
    IL_0083:  ldloc.s    V_5
    IL_0085:  call       instance int32 Game.BlockGeometryGenerator::CalculateCubeVertexLight(int32)
    IL_008a:  add
    IL_008b:  ldc.i4.3
    IL_008c:  add
    IL_008d:  ldc.i4.4
    IL_008e:  div
    IL_008f:  ret
  } // end of method BlockGeometryGenerator::CalculateVertexLightFace2

  .method private hidebysig instance int32 
          CalculateVertexLightFace3(int32 x,
                                    int32 y,
                                    int32 z) cil managed
  {
    // 代码大小       144 (0x90)
    .maxstack  6
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5)
    IL_0000:  ldc.i4.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_0007:  ldarg.1
    IL_0008:  ldc.i4.1
    IL_0009:  sub
    IL_000a:  ldarg.3
    IL_000b:  ldc.i4.1
    IL_000c:  sub
    IL_000d:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                       int32)
    IL_0012:  ldarg.1
    IL_0013:  ldc.i4.1
    IL_0014:  sub
    IL_0015:  ldc.i4.s   15
    IL_0017:  and
    IL_0018:  ldarg.2
    IL_0019:  ldarg.3
    IL_001a:  ldc.i4.1
    IL_001b:  sub
    IL_001c:  ldc.i4.s   15
    IL_001e:  and
    IL_001f:  call       int32 Game.TerrainChunk::CalculateCellIndex(int32,
                                                                     int32,
                                                                     int32)
    IL_0024:  stloc.0
    IL_0025:  dup
    IL_0026:  ldloc.0
    IL_0027:  ldc.i4.1
    IL_0028:  sub
    IL_0029:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32)
    IL_002e:  stloc.1
    IL_002f:  ldloc.0
    IL_0030:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32)
    IL_0035:  stloc.2
    IL_0036:  ldarg.0
    IL_0037:  ldloc.1
    IL_0038:  call       instance int32 Game.BlockGeometryGenerator::CalculateCubeVertexLight(int32)
    IL_003d:  add
    IL_003e:  ldarg.0
    IL_003f:  ldloc.2
    IL_0040:  call       instance int32 Game.BlockGeometryGenerator::CalculateCubeVertexLight(int32)
    IL_0045:  add
    IL_0046:  ldarg.0
    IL_0047:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_004c:  ldarg.1
    IL_004d:  ldc.i4.1
    IL_004e:  sub
    IL_004f:  ldarg.3
    IL_0050:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                       int32)
    IL_0055:  ldarg.1
    IL_0056:  ldc.i4.1
    IL_0057:  sub
    IL_0058:  ldc.i4.s   15
    IL_005a:  and
    IL_005b:  ldarg.2
    IL_005c:  ldarg.3
    IL_005d:  ldc.i4.s   15
    IL_005f:  and
    IL_0060:  call       int32 Game.TerrainChunk::CalculateCellIndex(int32,
                                                                     int32,
                                                                     int32)
    IL_0065:  stloc.3
    IL_0066:  dup
    IL_0067:  ldloc.3
    IL_0068:  ldc.i4.1
    IL_0069:  sub
    IL_006a:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32)
    IL_006f:  stloc.s    V_4
    IL_0071:  ldloc.3
    IL_0072:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32)
    IL_0077:  stloc.s    V_5
    IL_0079:  ldarg.0
    IL_007a:  ldloc.s    V_4
    IL_007c:  call       instance int32 Game.BlockGeometryGenerator::CalculateCubeVertexLight(int32)
    IL_0081:  add
    IL_0082:  ldarg.0
    IL_0083:  ldloc.s    V_5
    IL_0085:  call       instance int32 Game.BlockGeometryGenerator::CalculateCubeVertexLight(int32)
    IL_008a:  add
    IL_008b:  ldc.i4.3
    IL_008c:  add
    IL_008d:  ldc.i4.4
    IL_008e:  div
    IL_008f:  ret
  } // end of method BlockGeometryGenerator::CalculateVertexLightFace3

  .method private hidebysig instance int32 
          CalculateVertexLightFace4(int32 x,
                                    int32 y,
                                    int32 z) cil managed
  {
    // 代码大小       98 (0x62)
    .maxstack  7
    IL_0000:  ldc.i4.0
    IL_0001:  ldarg.0
    IL_0002:  ldarg.0
    IL_0003:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_0008:  ldarg.1
    IL_0009:  ldc.i4.1
    IL_000a:  sub
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  ldc.i4.1
    IL_000e:  sub
    IL_000f:  callvirt   instance int32 Game.Terrain::GetCellValueFastChunkExists(int32,
                                                                                  int32,
                                                                                  int32)
    IL_0014:  call       instance int32 Game.BlockGeometryGenerator::CalculateCubeVertexLight(int32)
    IL_0019:  add
    IL_001a:  ldarg.0
    IL_001b:  ldarg.0
    IL_001c:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_0021:  ldarg.1
    IL_0022:  ldarg.2
    IL_0023:  ldarg.3
    IL_0024:  ldc.i4.1
    IL_0025:  sub
    IL_0026:  callvirt   instance int32 Game.Terrain::GetCellValueFastChunkExists(int32,
                                                                                  int32,
                                                                                  int32)
    IL_002b:  call       instance int32 Game.BlockGeometryGenerator::CalculateCubeVertexLight(int32)
    IL_0030:  add
    IL_0031:  ldarg.0
    IL_0032:  ldarg.0
    IL_0033:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_0038:  ldarg.1
    IL_0039:  ldc.i4.1
    IL_003a:  sub
    IL_003b:  ldarg.2
    IL_003c:  ldarg.3
    IL_003d:  callvirt   instance int32 Game.Terrain::GetCellValueFastChunkExists(int32,
                                                                                  int32,
                                                                                  int32)
    IL_0042:  call       instance int32 Game.BlockGeometryGenerator::CalculateCubeVertexLight(int32)
    IL_0047:  add
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_004f:  ldarg.1
    IL_0050:  ldarg.2
    IL_0051:  ldarg.3
    IL_0052:  callvirt   instance int32 Game.Terrain::GetCellValueFastChunkExists(int32,
                                                                                  int32,
                                                                                  int32)
    IL_0057:  call       instance int32 Game.BlockGeometryGenerator::CalculateCubeVertexLight(int32)
    IL_005c:  add
    IL_005d:  ldc.i4.3
    IL_005e:  add
    IL_005f:  ldc.i4.4
    IL_0060:  div
    IL_0061:  ret
  } // end of method BlockGeometryGenerator::CalculateVertexLightFace4

  .method private hidebysig instance int32 
          CalculateVertexLightFace5(int32 x,
                                    int32 y,
                                    int32 z) cil managed
  {
    // 代码大小       106 (0x6a)
    .maxstack  7
    IL_0000:  ldc.i4.0
    IL_0001:  ldarg.0
    IL_0002:  ldarg.0
    IL_0003:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_0008:  ldarg.1
    IL_0009:  ldc.i4.1
    IL_000a:  sub
    IL_000b:  ldarg.2
    IL_000c:  ldc.i4.1
    IL_000d:  sub
    IL_000e:  ldarg.3
    IL_000f:  ldc.i4.1
    IL_0010:  sub
    IL_0011:  callvirt   instance int32 Game.Terrain::GetCellValueFastChunkExists(int32,
                                                                                  int32,
                                                                                  int32)
    IL_0016:  call       instance int32 Game.BlockGeometryGenerator::CalculateCubeVertexLight(int32)
    IL_001b:  add
    IL_001c:  ldarg.0
    IL_001d:  ldarg.0
    IL_001e:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_0023:  ldarg.1
    IL_0024:  ldarg.2
    IL_0025:  ldc.i4.1
    IL_0026:  sub
    IL_0027:  ldarg.3
    IL_0028:  ldc.i4.1
    IL_0029:  sub
    IL_002a:  callvirt   instance int32 Game.Terrain::GetCellValueFastChunkExists(int32,
                                                                                  int32,
                                                                                  int32)
    IL_002f:  call       instance int32 Game.BlockGeometryGenerator::CalculateCubeVertexLight(int32)
    IL_0034:  add
    IL_0035:  ldarg.0
    IL_0036:  ldarg.0
    IL_0037:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_003c:  ldarg.1
    IL_003d:  ldc.i4.1
    IL_003e:  sub
    IL_003f:  ldarg.2
    IL_0040:  ldc.i4.1
    IL_0041:  sub
    IL_0042:  ldarg.3
    IL_0043:  callvirt   instance int32 Game.Terrain::GetCellValueFastChunkExists(int32,
                                                                                  int32,
                                                                                  int32)
    IL_0048:  call       instance int32 Game.BlockGeometryGenerator::CalculateCubeVertexLight(int32)
    IL_004d:  add
    IL_004e:  ldarg.0
    IL_004f:  ldarg.0
    IL_0050:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_0055:  ldarg.1
    IL_0056:  ldarg.2
    IL_0057:  ldc.i4.1
    IL_0058:  sub
    IL_0059:  ldarg.3
    IL_005a:  callvirt   instance int32 Game.Terrain::GetCellValueFastChunkExists(int32,
                                                                                  int32,
                                                                                  int32)
    IL_005f:  call       instance int32 Game.BlockGeometryGenerator::CalculateCubeVertexLight(int32)
    IL_0064:  add
    IL_0065:  ldc.i4.3
    IL_0066:  add
    IL_0067:  ldc.i4.4
    IL_0068:  div
    IL_0069:  ret
  } // end of method BlockGeometryGenerator::CalculateVertexLightFace5

  .method private hidebysig instance void 
          SetupCubeVertexFace0(int32 x,
                               int32 y,
                               int32 z,
                               float32 height,
                               int32 corner,
                               int32 textureSlot,
                               valuetype [Engine]Engine.Color color,
                               valuetype Game.TerrainVertex& vertex) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  9
    .locals init (float32 V_0,
             int32 V_1)
    IL_0000:  ldarg.2
    IL_0001:  conv.r4
    IL_0002:  ldarg.s    height
    IL_0004:  add
    IL_0005:  ldc.r4     1.
    IL_000a:  sub
    IL_000b:  stloc.0
    IL_000c:  ldarg.0
    IL_000d:  ldarg.1
    IL_000e:  ldarg.2
    IL_000f:  ldarg.3
    IL_0010:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace0(int32,
                                                                                               int32,
                                                                                               int32)
    IL_0015:  stloc.1
    IL_0016:  ldarg.1
    IL_0017:  conv.r4
    IL_0018:  ldloc.0
    IL_0019:  ldarg.3
    IL_001a:  conv.r4
    IL_001b:  ldarg.s    color
    IL_001d:  ldloc.1
    IL_001e:  ldc.i4.0
    IL_001f:  ldarg.s    textureSlot
    IL_0021:  ldarg.s    corner
    IL_0023:  ldarg.s    vertex
    IL_0025:  call       void Game.BlockGeometryGenerator::SetupCornerVertex(float32,
                                                                             float32,
                                                                             float32,
                                                                             valuetype [Engine]Engine.Color,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             valuetype Game.TerrainVertex&)
    IL_002a:  ret
  } // end of method BlockGeometryGenerator::SetupCubeVertexFace0

  .method private hidebysig instance void 
          SetupCubeVertexFace1(int32 x,
                               int32 y,
                               int32 z,
                               float32 height,
                               int32 corner,
                               int32 textureSlot,
                               valuetype [Engine]Engine.Color color,
                               valuetype Game.TerrainVertex& vertex) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  9
    .locals init (float32 V_0,
             int32 V_1)
    IL_0000:  ldarg.2
    IL_0001:  conv.r4
    IL_0002:  ldarg.s    height
    IL_0004:  add
    IL_0005:  ldc.r4     1.
    IL_000a:  sub
    IL_000b:  stloc.0
    IL_000c:  ldarg.0
    IL_000d:  ldarg.1
    IL_000e:  ldarg.2
    IL_000f:  ldarg.3
    IL_0010:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace1(int32,
                                                                                               int32,
                                                                                               int32)
    IL_0015:  stloc.1
    IL_0016:  ldarg.1
    IL_0017:  conv.r4
    IL_0018:  ldloc.0
    IL_0019:  ldarg.3
    IL_001a:  conv.r4
    IL_001b:  ldarg.s    color
    IL_001d:  ldloc.1
    IL_001e:  ldc.i4.1
    IL_001f:  ldarg.s    textureSlot
    IL_0021:  ldarg.s    corner
    IL_0023:  ldarg.s    vertex
    IL_0025:  call       void Game.BlockGeometryGenerator::SetupCornerVertex(float32,
                                                                             float32,
                                                                             float32,
                                                                             valuetype [Engine]Engine.Color,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             valuetype Game.TerrainVertex&)
    IL_002a:  ret
  } // end of method BlockGeometryGenerator::SetupCubeVertexFace1

  .method private hidebysig instance void 
          SetupCubeVertexFace2(int32 x,
                               int32 y,
                               int32 z,
                               float32 height,
                               int32 corner,
                               int32 textureSlot,
                               valuetype [Engine]Engine.Color color,
                               valuetype Game.TerrainVertex& vertex) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  9
    .locals init (float32 V_0,
             int32 V_1)
    IL_0000:  ldarg.2
    IL_0001:  conv.r4
    IL_0002:  ldarg.s    height
    IL_0004:  add
    IL_0005:  ldc.r4     1.
    IL_000a:  sub
    IL_000b:  stloc.0
    IL_000c:  ldarg.0
    IL_000d:  ldarg.1
    IL_000e:  ldarg.2
    IL_000f:  ldarg.3
    IL_0010:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace2(int32,
                                                                                               int32,
                                                                                               int32)
    IL_0015:  stloc.1
    IL_0016:  ldarg.1
    IL_0017:  conv.r4
    IL_0018:  ldloc.0
    IL_0019:  ldarg.3
    IL_001a:  conv.r4
    IL_001b:  ldarg.s    color
    IL_001d:  ldloc.1
    IL_001e:  ldc.i4.2
    IL_001f:  ldarg.s    textureSlot
    IL_0021:  ldarg.s    corner
    IL_0023:  ldarg.s    vertex
    IL_0025:  call       void Game.BlockGeometryGenerator::SetupCornerVertex(float32,
                                                                             float32,
                                                                             float32,
                                                                             valuetype [Engine]Engine.Color,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             valuetype Game.TerrainVertex&)
    IL_002a:  ret
  } // end of method BlockGeometryGenerator::SetupCubeVertexFace2

  .method private hidebysig instance void 
          SetupCubeVertexFace3(int32 x,
                               int32 y,
                               int32 z,
                               float32 height,
                               int32 corner,
                               int32 textureSlot,
                               valuetype [Engine]Engine.Color color,
                               valuetype Game.TerrainVertex& vertex) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  9
    .locals init (float32 V_0,
             int32 V_1)
    IL_0000:  ldarg.2
    IL_0001:  conv.r4
    IL_0002:  ldarg.s    height
    IL_0004:  add
    IL_0005:  ldc.r4     1.
    IL_000a:  sub
    IL_000b:  stloc.0
    IL_000c:  ldarg.0
    IL_000d:  ldarg.1
    IL_000e:  ldarg.2
    IL_000f:  ldarg.3
    IL_0010:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace3(int32,
                                                                                               int32,
                                                                                               int32)
    IL_0015:  stloc.1
    IL_0016:  ldarg.1
    IL_0017:  conv.r4
    IL_0018:  ldloc.0
    IL_0019:  ldarg.3
    IL_001a:  conv.r4
    IL_001b:  ldarg.s    color
    IL_001d:  ldloc.1
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    textureSlot
    IL_0021:  ldarg.s    corner
    IL_0023:  ldarg.s    vertex
    IL_0025:  call       void Game.BlockGeometryGenerator::SetupCornerVertex(float32,
                                                                             float32,
                                                                             float32,
                                                                             valuetype [Engine]Engine.Color,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             valuetype Game.TerrainVertex&)
    IL_002a:  ret
  } // end of method BlockGeometryGenerator::SetupCubeVertexFace3

  .method private hidebysig instance void 
          SetupCubeVertexFace4(int32 x,
                               int32 y,
                               int32 z,
                               float32 height,
                               int32 corner,
                               int32 textureSlot,
                               valuetype [Engine]Engine.Color color,
                               valuetype Game.TerrainVertex& vertex) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  9
    .locals init (float32 V_0,
             int32 V_1)
    IL_0000:  ldarg.2
    IL_0001:  conv.r4
    IL_0002:  ldarg.s    height
    IL_0004:  add
    IL_0005:  ldc.r4     1.
    IL_000a:  sub
    IL_000b:  stloc.0
    IL_000c:  ldarg.0
    IL_000d:  ldarg.1
    IL_000e:  ldarg.2
    IL_000f:  ldarg.3
    IL_0010:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace4(int32,
                                                                                               int32,
                                                                                               int32)
    IL_0015:  stloc.1
    IL_0016:  ldarg.1
    IL_0017:  conv.r4
    IL_0018:  ldloc.0
    IL_0019:  ldarg.3
    IL_001a:  conv.r4
    IL_001b:  ldarg.s    color
    IL_001d:  ldloc.1
    IL_001e:  ldc.i4.4
    IL_001f:  ldarg.s    textureSlot
    IL_0021:  ldarg.s    corner
    IL_0023:  ldarg.s    vertex
    IL_0025:  call       void Game.BlockGeometryGenerator::SetupCornerVertex(float32,
                                                                             float32,
                                                                             float32,
                                                                             valuetype [Engine]Engine.Color,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             valuetype Game.TerrainVertex&)
    IL_002a:  ret
  } // end of method BlockGeometryGenerator::SetupCubeVertexFace4

  .method private hidebysig instance void 
          SetupCubeVertexFace5(int32 x,
                               int32 y,
                               int32 z,
                               float32 height,
                               int32 corner,
                               int32 textureSlot,
                               valuetype [Engine]Engine.Color color,
                               valuetype Game.TerrainVertex& vertex) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  9
    .locals init (float32 V_0,
             int32 V_1)
    IL_0000:  ldarg.2
    IL_0001:  conv.r4
    IL_0002:  ldarg.s    height
    IL_0004:  add
    IL_0005:  ldc.r4     1.
    IL_000a:  sub
    IL_000b:  stloc.0
    IL_000c:  ldarg.0
    IL_000d:  ldarg.1
    IL_000e:  ldarg.2
    IL_000f:  ldarg.3
    IL_0010:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace5(int32,
                                                                                               int32,
                                                                                               int32)
    IL_0015:  stloc.1
    IL_0016:  ldarg.1
    IL_0017:  conv.r4
    IL_0018:  ldloc.0
    IL_0019:  ldarg.3
    IL_001a:  conv.r4
    IL_001b:  ldarg.s    color
    IL_001d:  ldloc.1
    IL_001e:  ldc.i4.5
    IL_001f:  ldarg.s    textureSlot
    IL_0021:  ldarg.s    corner
    IL_0023:  ldarg.s    vertex
    IL_0025:  call       void Game.BlockGeometryGenerator::SetupCornerVertex(float32,
                                                                             float32,
                                                                             float32,
                                                                             valuetype [Engine]Engine.Color,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             valuetype Game.TerrainVertex&)
    IL_002a:  ret
  } // end of method BlockGeometryGenerator::SetupCubeVertexFace5

  .method private hidebysig instance int32 
          CalculateCubeVertexLight(int32 'value') cil managed
  {
    // 代码大小       52 (0x34)
    .maxstack  2
    .locals init (int32 V_0,
             int32 V_1)
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  brtrue.s   IL_0011

    IL_000a:  ldarg.1
    IL_000b:  call       int32 Game.Terrain::ExtractLight(int32)
    IL_0010:  ret

    IL_0011:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0016:  ldloc.0
    IL_0017:  ldelem.ref
    IL_0018:  ldarg.1
    IL_0019:  callvirt   instance int32 Game.Block::GetShadowStrength(int32)
    IL_001e:  stloc.1
    IL_001f:  ldloc.1
    IL_0020:  ldc.i4.0
    IL_0021:  blt.s      IL_0032

    IL_0023:  ldarg.1
    IL_0024:  call       int32 Game.Terrain::ExtractLight(int32)
    IL_0029:  ldloc.1
    IL_002a:  sub
    IL_002b:  ldc.i4.0
    IL_002c:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0031:  ret

    IL_0032:  ldc.i4.0
    IL_0033:  ret
  } // end of method BlockGeometryGenerator::CalculateCubeVertexLight

  .method private hidebysig static valuetype [Engine]Engine.Vector3 
          GetRandomWireOffset(valuetype [Engine]Engine.Vector3 position,
                              valuetype [Engine]Engine.Vector3 normal) cil managed
  {
    // 代码大小       204 (0xcc)
    .maxstack  3
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             int32 V_1,
             valuetype [Engine]Engine.Vector3 V_2)
    IL_0000:  ldc.r4     2.
    IL_0005:  ldarg.0
    IL_0006:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_000b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Round(valuetype [Engine]Engine.Vector3)
    IL_0010:  stloc.0
    IL_0011:  ldloca.s   V_0
    IL_0013:  constrained. [Engine]Engine.Vector3
    IL_0019:  callvirt   instance int32 [System.Runtime]System.Object::GetHashCode()
    IL_001e:  stloc.1
    IL_001f:  ldloca.s   V_2
    IL_0021:  initobj    [Engine]Engine.Vector3
    IL_0027:  ldloca.s   V_2
    IL_0029:  ldarg.1
    IL_002a:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_002f:  ldc.r4     0.0
    IL_0034:  beq.s      IL_003d

    IL_0036:  ldc.r4     0.0
    IL_003b:  br.s       IL_0057

    IL_003d:  ldloc.1
    IL_003e:  call       uint32 [Engine]Engine.MathUtils::Hash(uint32)
    IL_0043:  ldc.i4     0xff
    IL_0048:  rem.un
    IL_0049:  conv.r.un
    IL_004a:  conv.r4
    IL_004b:  ldc.r4     255.
    IL_0050:  div
    IL_0051:  ldc.r4     0.5
    IL_0056:  sub
    IL_0057:  stfld      float32 [Engine]Engine.Vector3::X
    IL_005c:  ldloca.s   V_2
    IL_005e:  ldarg.1
    IL_005f:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0064:  ldc.r4     0.0
    IL_0069:  beq.s      IL_0072

    IL_006b:  ldc.r4     0.0
    IL_0070:  br.s       IL_008e

    IL_0072:  ldloc.1
    IL_0073:  ldc.i4.1
    IL_0074:  add
    IL_0075:  call       uint32 [Engine]Engine.MathUtils::Hash(uint32)
    IL_007a:  ldc.i4     0xff
    IL_007f:  rem.un
    IL_0080:  conv.r.un
    IL_0081:  conv.r4
    IL_0082:  ldc.r4     255.
    IL_0087:  div
    IL_0088:  ldc.r4     0.5
    IL_008d:  sub
    IL_008e:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_0093:  ldloca.s   V_2
    IL_0095:  ldarg.1
    IL_0096:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_009b:  ldc.r4     0.0
    IL_00a0:  beq.s      IL_00a9

    IL_00a2:  ldc.r4     0.0
    IL_00a7:  br.s       IL_00c5

    IL_00a9:  ldloc.1
    IL_00aa:  ldc.i4.2
    IL_00ab:  add
    IL_00ac:  call       uint32 [Engine]Engine.MathUtils::Hash(uint32)
    IL_00b1:  ldc.i4     0xff
    IL_00b6:  rem.un
    IL_00b7:  conv.r.un
    IL_00b8:  conv.r4
    IL_00b9:  ldc.r4     255.
    IL_00be:  div
    IL_00bf:  ldc.r4     0.5
    IL_00c4:  sub
    IL_00c5:  stfld      float32 [Engine]Engine.Vector3::Z
    IL_00ca:  ldloc.2
    IL_00cb:  ret
  } // end of method BlockGeometryGenerator::GetRandomWireOffset

  .method private hidebysig instance void 
          CalculateCornerLights(int32 x,
                                int32 y,
                                int32 z) cil managed
  {
    // 代码大小       1717 (0x6b5)
    .maxstack  7
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Point3 Game.BlockGeometryGenerator::m_cornerLightsPosition
    IL_0006:  ldarg.1
    IL_0007:  ldarg.2
    IL_0008:  ldarg.3
    IL_0009:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_000e:  call       bool [Engine]Engine.Point3::op_Equality(valuetype [Engine]Engine.Point3,
                                                                 valuetype [Engine]Engine.Point3)
    IL_0013:  brfalse.s  IL_0016

    IL_0015:  ret

    IL_0016:  ldarg.0
    IL_0017:  ldarg.1
    IL_0018:  ldarg.2
    IL_0019:  ldarg.3
    IL_001a:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_001f:  stfld      valuetype [Engine]Engine.Point3 Game.BlockGeometryGenerator::m_cornerLightsPosition
    IL_0024:  ldarg.0
    IL_0025:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_002a:  ldc.i4.0
    IL_002b:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_0030:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_0035:  ldarg.0
    IL_0036:  ldarg.1
    IL_0037:  ldarg.2
    IL_0038:  ldarg.3
    IL_0039:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace0(int32,
                                                                                               int32,
                                                                                               int32)
    IL_003e:  ldelem.r4
    IL_003f:  stfld      float32 Game.BlockGeometryGenerator/CornerLights::L000
    IL_0044:  ldarg.0
    IL_0045:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_004a:  ldc.i4.0
    IL_004b:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_0050:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_0055:  ldarg.0
    IL_0056:  ldarg.1
    IL_0057:  ldarg.2
    IL_0058:  ldarg.3
    IL_0059:  ldc.i4.1
    IL_005a:  add
    IL_005b:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace0(int32,
                                                                                               int32,
                                                                                               int32)
    IL_0060:  ldelem.r4
    IL_0061:  stfld      float32 Game.BlockGeometryGenerator/CornerLights::L001
    IL_0066:  ldarg.0
    IL_0067:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_006c:  ldc.i4.0
    IL_006d:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_0072:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_0077:  ldarg.0
    IL_0078:  ldarg.1
    IL_0079:  ldarg.2
    IL_007a:  ldc.i4.1
    IL_007b:  add
    IL_007c:  ldarg.3
    IL_007d:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace0(int32,
                                                                                               int32,
                                                                                               int32)
    IL_0082:  ldelem.r4
    IL_0083:  stfld      float32 Game.BlockGeometryGenerator/CornerLights::L010
    IL_0088:  ldarg.0
    IL_0089:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_008e:  ldc.i4.0
    IL_008f:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_0094:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_0099:  ldarg.0
    IL_009a:  ldarg.1
    IL_009b:  ldarg.2
    IL_009c:  ldc.i4.1
    IL_009d:  add
    IL_009e:  ldarg.3
    IL_009f:  ldc.i4.1
    IL_00a0:  add
    IL_00a1:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace0(int32,
                                                                                               int32,
                                                                                               int32)
    IL_00a6:  ldelem.r4
    IL_00a7:  stfld      float32 Game.BlockGeometryGenerator/CornerLights::L011
    IL_00ac:  ldarg.0
    IL_00ad:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_00b2:  ldc.i4.0
    IL_00b3:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_00b8:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_00bd:  ldarg.0
    IL_00be:  ldarg.1
    IL_00bf:  ldc.i4.1
    IL_00c0:  add
    IL_00c1:  ldarg.2
    IL_00c2:  ldarg.3
    IL_00c3:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace0(int32,
                                                                                               int32,
                                                                                               int32)
    IL_00c8:  ldelem.r4
    IL_00c9:  stfld      float32 Game.BlockGeometryGenerator/CornerLights::L100
    IL_00ce:  ldarg.0
    IL_00cf:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_00d4:  ldc.i4.0
    IL_00d5:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_00da:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_00df:  ldarg.0
    IL_00e0:  ldarg.1
    IL_00e1:  ldc.i4.1
    IL_00e2:  add
    IL_00e3:  ldarg.2
    IL_00e4:  ldarg.3
    IL_00e5:  ldc.i4.1
    IL_00e6:  add
    IL_00e7:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace0(int32,
                                                                                               int32,
                                                                                               int32)
    IL_00ec:  ldelem.r4
    IL_00ed:  stfld      float32 Game.BlockGeometryGenerator/CornerLights::L101
    IL_00f2:  ldarg.0
    IL_00f3:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_00f8:  ldc.i4.0
    IL_00f9:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_00fe:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_0103:  ldarg.0
    IL_0104:  ldarg.1
    IL_0105:  ldc.i4.1
    IL_0106:  add
    IL_0107:  ldarg.2
    IL_0108:  ldc.i4.1
    IL_0109:  add
    IL_010a:  ldarg.3
    IL_010b:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace0(int32,
                                                                                               int32,
                                                                                               int32)
    IL_0110:  ldelem.r4
    IL_0111:  stfld      float32 Game.BlockGeometryGenerator/CornerLights::L110
    IL_0116:  ldarg.0
    IL_0117:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_011c:  ldc.i4.0
    IL_011d:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_0122:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_0127:  ldarg.0
    IL_0128:  ldarg.1
    IL_0129:  ldc.i4.1
    IL_012a:  add
    IL_012b:  ldarg.2
    IL_012c:  ldc.i4.1
    IL_012d:  add
    IL_012e:  ldarg.3
    IL_012f:  ldc.i4.1
    IL_0130:  add
    IL_0131:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace0(int32,
                                                                                               int32,
                                                                                               int32)
    IL_0136:  ldelem.r4
    IL_0137:  stfld      float32 Game.BlockGeometryGenerator/CornerLights::L111
    IL_013c:  ldarg.0
    IL_013d:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_0142:  ldc.i4.1
    IL_0143:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_0148:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_014d:  ldarg.0
    IL_014e:  ldarg.1
    IL_014f:  ldarg.2
    IL_0150:  ldarg.3
    IL_0151:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace1(int32,
                                                                                               int32,
                                                                                               int32)
    IL_0156:  ldelem.r4
    IL_0157:  stfld      float32 Game.BlockGeometryGenerator/CornerLights::L000
    IL_015c:  ldarg.0
    IL_015d:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_0162:  ldc.i4.1
    IL_0163:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_0168:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_016d:  ldarg.0
    IL_016e:  ldarg.1
    IL_016f:  ldarg.2
    IL_0170:  ldarg.3
    IL_0171:  ldc.i4.1
    IL_0172:  add
    IL_0173:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace1(int32,
                                                                                               int32,
                                                                                               int32)
    IL_0178:  ldelem.r4
    IL_0179:  stfld      float32 Game.BlockGeometryGenerator/CornerLights::L001
    IL_017e:  ldarg.0
    IL_017f:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_0184:  ldc.i4.1
    IL_0185:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_018a:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_018f:  ldarg.0
    IL_0190:  ldarg.1
    IL_0191:  ldarg.2
    IL_0192:  ldc.i4.1
    IL_0193:  add
    IL_0194:  ldarg.3
    IL_0195:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace1(int32,
                                                                                               int32,
                                                                                               int32)
    IL_019a:  ldelem.r4
    IL_019b:  stfld      float32 Game.BlockGeometryGenerator/CornerLights::L010
    IL_01a0:  ldarg.0
    IL_01a1:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_01a6:  ldc.i4.1
    IL_01a7:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_01ac:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_01b1:  ldarg.0
    IL_01b2:  ldarg.1
    IL_01b3:  ldarg.2
    IL_01b4:  ldc.i4.1
    IL_01b5:  add
    IL_01b6:  ldarg.3
    IL_01b7:  ldc.i4.1
    IL_01b8:  add
    IL_01b9:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace1(int32,
                                                                                               int32,
                                                                                               int32)
    IL_01be:  ldelem.r4
    IL_01bf:  stfld      float32 Game.BlockGeometryGenerator/CornerLights::L011
    IL_01c4:  ldarg.0
    IL_01c5:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_01ca:  ldc.i4.1
    IL_01cb:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_01d0:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_01d5:  ldarg.0
    IL_01d6:  ldarg.1
    IL_01d7:  ldc.i4.1
    IL_01d8:  add
    IL_01d9:  ldarg.2
    IL_01da:  ldarg.3
    IL_01db:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace1(int32,
                                                                                               int32,
                                                                                               int32)
    IL_01e0:  ldelem.r4
    IL_01e1:  stfld      float32 Game.BlockGeometryGenerator/CornerLights::L100
    IL_01e6:  ldarg.0
    IL_01e7:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_01ec:  ldc.i4.1
    IL_01ed:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_01f2:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_01f7:  ldarg.0
    IL_01f8:  ldarg.1
    IL_01f9:  ldc.i4.1
    IL_01fa:  add
    IL_01fb:  ldarg.2
    IL_01fc:  ldarg.3
    IL_01fd:  ldc.i4.1
    IL_01fe:  add
    IL_01ff:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace1(int32,
                                                                                               int32,
                                                                                               int32)
    IL_0204:  ldelem.r4
    IL_0205:  stfld      float32 Game.BlockGeometryGenerator/CornerLights::L101
    IL_020a:  ldarg.0
    IL_020b:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_0210:  ldc.i4.1
    IL_0211:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_0216:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_021b:  ldarg.0
    IL_021c:  ldarg.1
    IL_021d:  ldc.i4.1
    IL_021e:  add
    IL_021f:  ldarg.2
    IL_0220:  ldc.i4.1
    IL_0221:  add
    IL_0222:  ldarg.3
    IL_0223:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace1(int32,
                                                                                               int32,
                                                                                               int32)
    IL_0228:  ldelem.r4
    IL_0229:  stfld      float32 Game.BlockGeometryGenerator/CornerLights::L110
    IL_022e:  ldarg.0
    IL_022f:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_0234:  ldc.i4.1
    IL_0235:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_023a:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_023f:  ldarg.0
    IL_0240:  ldarg.1
    IL_0241:  ldc.i4.1
    IL_0242:  add
    IL_0243:  ldarg.2
    IL_0244:  ldc.i4.1
    IL_0245:  add
    IL_0246:  ldarg.3
    IL_0247:  ldc.i4.1
    IL_0248:  add
    IL_0249:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace1(int32,
                                                                                               int32,
                                                                                               int32)
    IL_024e:  ldelem.r4
    IL_024f:  stfld      float32 Game.BlockGeometryGenerator/CornerLights::L111
    IL_0254:  ldarg.0
    IL_0255:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_025a:  ldc.i4.2
    IL_025b:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_0260:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_0265:  ldarg.0
    IL_0266:  ldarg.1
    IL_0267:  ldarg.2
    IL_0268:  ldarg.3
    IL_0269:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace2(int32,
                                                                                               int32,
                                                                                               int32)
    IL_026e:  ldelem.r4
    IL_026f:  stfld      float32 Game.BlockGeometryGenerator/CornerLights::L000
    IL_0274:  ldarg.0
    IL_0275:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_027a:  ldc.i4.2
    IL_027b:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_0280:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_0285:  ldarg.0
    IL_0286:  ldarg.1
    IL_0287:  ldarg.2
    IL_0288:  ldarg.3
    IL_0289:  ldc.i4.1
    IL_028a:  add
    IL_028b:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace2(int32,
                                                                                               int32,
                                                                                               int32)
    IL_0290:  ldelem.r4
    IL_0291:  stfld      float32 Game.BlockGeometryGenerator/CornerLights::L001
    IL_0296:  ldarg.0
    IL_0297:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_029c:  ldc.i4.2
    IL_029d:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_02a2:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_02a7:  ldarg.0
    IL_02a8:  ldarg.1
    IL_02a9:  ldarg.2
    IL_02aa:  ldc.i4.1
    IL_02ab:  add
    IL_02ac:  ldarg.3
    IL_02ad:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace2(int32,
                                                                                               int32,
                                                                                               int32)
    IL_02b2:  ldelem.r4
    IL_02b3:  stfld      float32 Game.BlockGeometryGenerator/CornerLights::L010
    IL_02b8:  ldarg.0
    IL_02b9:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_02be:  ldc.i4.2
    IL_02bf:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_02c4:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_02c9:  ldarg.0
    IL_02ca:  ldarg.1
    IL_02cb:  ldarg.2
    IL_02cc:  ldc.i4.1
    IL_02cd:  add
    IL_02ce:  ldarg.3
    IL_02cf:  ldc.i4.1
    IL_02d0:  add
    IL_02d1:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace2(int32,
                                                                                               int32,
                                                                                               int32)
    IL_02d6:  ldelem.r4
    IL_02d7:  stfld      float32 Game.BlockGeometryGenerator/CornerLights::L011
    IL_02dc:  ldarg.0
    IL_02dd:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_02e2:  ldc.i4.2
    IL_02e3:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_02e8:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_02ed:  ldarg.0
    IL_02ee:  ldarg.1
    IL_02ef:  ldc.i4.1
    IL_02f0:  add
    IL_02f1:  ldarg.2
    IL_02f2:  ldarg.3
    IL_02f3:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace2(int32,
                                                                                               int32,
                                                                                               int32)
    IL_02f8:  ldelem.r4
    IL_02f9:  stfld      float32 Game.BlockGeometryGenerator/CornerLights::L100
    IL_02fe:  ldarg.0
    IL_02ff:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_0304:  ldc.i4.2
    IL_0305:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_030a:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_030f:  ldarg.0
    IL_0310:  ldarg.1
    IL_0311:  ldc.i4.1
    IL_0312:  add
    IL_0313:  ldarg.2
    IL_0314:  ldarg.3
    IL_0315:  ldc.i4.1
    IL_0316:  add
    IL_0317:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace2(int32,
                                                                                               int32,
                                                                                               int32)
    IL_031c:  ldelem.r4
    IL_031d:  stfld      float32 Game.BlockGeometryGenerator/CornerLights::L101
    IL_0322:  ldarg.0
    IL_0323:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_0328:  ldc.i4.2
    IL_0329:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_032e:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_0333:  ldarg.0
    IL_0334:  ldarg.1
    IL_0335:  ldc.i4.1
    IL_0336:  add
    IL_0337:  ldarg.2
    IL_0338:  ldc.i4.1
    IL_0339:  add
    IL_033a:  ldarg.3
    IL_033b:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace2(int32,
                                                                                               int32,
                                                                                               int32)
    IL_0340:  ldelem.r4
    IL_0341:  stfld      float32 Game.BlockGeometryGenerator/CornerLights::L110
    IL_0346:  ldarg.0
    IL_0347:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_034c:  ldc.i4.2
    IL_034d:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_0352:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_0357:  ldarg.0
    IL_0358:  ldarg.1
    IL_0359:  ldc.i4.1
    IL_035a:  add
    IL_035b:  ldarg.2
    IL_035c:  ldc.i4.1
    IL_035d:  add
    IL_035e:  ldarg.3
    IL_035f:  ldc.i4.1
    IL_0360:  add
    IL_0361:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace2(int32,
                                                                                               int32,
                                                                                               int32)
    IL_0366:  ldelem.r4
    IL_0367:  stfld      float32 Game.BlockGeometryGenerator/CornerLights::L111
    IL_036c:  ldarg.0
    IL_036d:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_0372:  ldc.i4.3
    IL_0373:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_0378:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_037d:  ldarg.0
    IL_037e:  ldarg.1
    IL_037f:  ldarg.2
    IL_0380:  ldarg.3
    IL_0381:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace3(int32,
                                                                                               int32,
                                                                                               int32)
    IL_0386:  ldelem.r4
    IL_0387:  stfld      float32 Game.BlockGeometryGenerator/CornerLights::L000
    IL_038c:  ldarg.0
    IL_038d:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_0392:  ldc.i4.3
    IL_0393:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_0398:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_039d:  ldarg.0
    IL_039e:  ldarg.1
    IL_039f:  ldarg.2
    IL_03a0:  ldarg.3
    IL_03a1:  ldc.i4.1
    IL_03a2:  add
    IL_03a3:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace3(int32,
                                                                                               int32,
                                                                                               int32)
    IL_03a8:  ldelem.r4
    IL_03a9:  stfld      float32 Game.BlockGeometryGenerator/CornerLights::L001
    IL_03ae:  ldarg.0
    IL_03af:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_03b4:  ldc.i4.3
    IL_03b5:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_03ba:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_03bf:  ldarg.0
    IL_03c0:  ldarg.1
    IL_03c1:  ldarg.2
    IL_03c2:  ldc.i4.1
    IL_03c3:  add
    IL_03c4:  ldarg.3
    IL_03c5:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace3(int32,
                                                                                               int32,
                                                                                               int32)
    IL_03ca:  ldelem.r4
    IL_03cb:  stfld      float32 Game.BlockGeometryGenerator/CornerLights::L010
    IL_03d0:  ldarg.0
    IL_03d1:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_03d6:  ldc.i4.3
    IL_03d7:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_03dc:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_03e1:  ldarg.0
    IL_03e2:  ldarg.1
    IL_03e3:  ldarg.2
    IL_03e4:  ldc.i4.1
    IL_03e5:  add
    IL_03e6:  ldarg.3
    IL_03e7:  ldc.i4.1
    IL_03e8:  add
    IL_03e9:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace3(int32,
                                                                                               int32,
                                                                                               int32)
    IL_03ee:  ldelem.r4
    IL_03ef:  stfld      float32 Game.BlockGeometryGenerator/CornerLights::L011
    IL_03f4:  ldarg.0
    IL_03f5:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_03fa:  ldc.i4.3
    IL_03fb:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_0400:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_0405:  ldarg.0
    IL_0406:  ldarg.1
    IL_0407:  ldc.i4.1
    IL_0408:  add
    IL_0409:  ldarg.2
    IL_040a:  ldarg.3
    IL_040b:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace3(int32,
                                                                                               int32,
                                                                                               int32)
    IL_0410:  ldelem.r4
    IL_0411:  stfld      float32 Game.BlockGeometryGenerator/CornerLights::L100
    IL_0416:  ldarg.0
    IL_0417:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_041c:  ldc.i4.3
    IL_041d:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_0422:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_0427:  ldarg.0
    IL_0428:  ldarg.1
    IL_0429:  ldc.i4.1
    IL_042a:  add
    IL_042b:  ldarg.2
    IL_042c:  ldarg.3
    IL_042d:  ldc.i4.1
    IL_042e:  add
    IL_042f:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace3(int32,
                                                                                               int32,
                                                                                               int32)
    IL_0434:  ldelem.r4
    IL_0435:  stfld      float32 Game.BlockGeometryGenerator/CornerLights::L101
    IL_043a:  ldarg.0
    IL_043b:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_0440:  ldc.i4.3
    IL_0441:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_0446:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_044b:  ldarg.0
    IL_044c:  ldarg.1
    IL_044d:  ldc.i4.1
    IL_044e:  add
    IL_044f:  ldarg.2
    IL_0450:  ldc.i4.1
    IL_0451:  add
    IL_0452:  ldarg.3
    IL_0453:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace3(int32,
                                                                                               int32,
                                                                                               int32)
    IL_0458:  ldelem.r4
    IL_0459:  stfld      float32 Game.BlockGeometryGenerator/CornerLights::L110
    IL_045e:  ldarg.0
    IL_045f:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_0464:  ldc.i4.3
    IL_0465:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_046a:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_046f:  ldarg.0
    IL_0470:  ldarg.1
    IL_0471:  ldc.i4.1
    IL_0472:  add
    IL_0473:  ldarg.2
    IL_0474:  ldc.i4.1
    IL_0475:  add
    IL_0476:  ldarg.3
    IL_0477:  ldc.i4.1
    IL_0478:  add
    IL_0479:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace3(int32,
                                                                                               int32,
                                                                                               int32)
    IL_047e:  ldelem.r4
    IL_047f:  stfld      float32 Game.BlockGeometryGenerator/CornerLights::L111
    IL_0484:  ldarg.0
    IL_0485:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_048a:  ldc.i4.4
    IL_048b:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_0490:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_0495:  ldarg.0
    IL_0496:  ldarg.1
    IL_0497:  ldarg.2
    IL_0498:  ldarg.3
    IL_0499:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace4(int32,
                                                                                               int32,
                                                                                               int32)
    IL_049e:  ldelem.r4
    IL_049f:  stfld      float32 Game.BlockGeometryGenerator/CornerLights::L000
    IL_04a4:  ldarg.0
    IL_04a5:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_04aa:  ldc.i4.4
    IL_04ab:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_04b0:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_04b5:  ldarg.0
    IL_04b6:  ldarg.1
    IL_04b7:  ldarg.2
    IL_04b8:  ldarg.3
    IL_04b9:  ldc.i4.1
    IL_04ba:  add
    IL_04bb:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace4(int32,
                                                                                               int32,
                                                                                               int32)
    IL_04c0:  ldelem.r4
    IL_04c1:  stfld      float32 Game.BlockGeometryGenerator/CornerLights::L001
    IL_04c6:  ldarg.0
    IL_04c7:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_04cc:  ldc.i4.4
    IL_04cd:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_04d2:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_04d7:  ldarg.0
    IL_04d8:  ldarg.1
    IL_04d9:  ldarg.2
    IL_04da:  ldc.i4.1
    IL_04db:  add
    IL_04dc:  ldarg.3
    IL_04dd:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace4(int32,
                                                                                               int32,
                                                                                               int32)
    IL_04e2:  ldelem.r4
    IL_04e3:  stfld      float32 Game.BlockGeometryGenerator/CornerLights::L010
    IL_04e8:  ldarg.0
    IL_04e9:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_04ee:  ldc.i4.4
    IL_04ef:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_04f4:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_04f9:  ldarg.0
    IL_04fa:  ldarg.1
    IL_04fb:  ldarg.2
    IL_04fc:  ldc.i4.1
    IL_04fd:  add
    IL_04fe:  ldarg.3
    IL_04ff:  ldc.i4.1
    IL_0500:  add
    IL_0501:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace4(int32,
                                                                                               int32,
                                                                                               int32)
    IL_0506:  ldelem.r4
    IL_0507:  stfld      float32 Game.BlockGeometryGenerator/CornerLights::L011
    IL_050c:  ldarg.0
    IL_050d:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_0512:  ldc.i4.4
    IL_0513:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_0518:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_051d:  ldarg.0
    IL_051e:  ldarg.1
    IL_051f:  ldc.i4.1
    IL_0520:  add
    IL_0521:  ldarg.2
    IL_0522:  ldarg.3
    IL_0523:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace4(int32,
                                                                                               int32,
                                                                                               int32)
    IL_0528:  ldelem.r4
    IL_0529:  stfld      float32 Game.BlockGeometryGenerator/CornerLights::L100
    IL_052e:  ldarg.0
    IL_052f:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_0534:  ldc.i4.4
    IL_0535:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_053a:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_053f:  ldarg.0
    IL_0540:  ldarg.1
    IL_0541:  ldc.i4.1
    IL_0542:  add
    IL_0543:  ldarg.2
    IL_0544:  ldarg.3
    IL_0545:  ldc.i4.1
    IL_0546:  add
    IL_0547:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace4(int32,
                                                                                               int32,
                                                                                               int32)
    IL_054c:  ldelem.r4
    IL_054d:  stfld      float32 Game.BlockGeometryGenerator/CornerLights::L101
    IL_0552:  ldarg.0
    IL_0553:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_0558:  ldc.i4.4
    IL_0559:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_055e:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_0563:  ldarg.0
    IL_0564:  ldarg.1
    IL_0565:  ldc.i4.1
    IL_0566:  add
    IL_0567:  ldarg.2
    IL_0568:  ldc.i4.1
    IL_0569:  add
    IL_056a:  ldarg.3
    IL_056b:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace4(int32,
                                                                                               int32,
                                                                                               int32)
    IL_0570:  ldelem.r4
    IL_0571:  stfld      float32 Game.BlockGeometryGenerator/CornerLights::L110
    IL_0576:  ldarg.0
    IL_0577:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_057c:  ldc.i4.4
    IL_057d:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_0582:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_0587:  ldarg.0
    IL_0588:  ldarg.1
    IL_0589:  ldc.i4.1
    IL_058a:  add
    IL_058b:  ldarg.2
    IL_058c:  ldc.i4.1
    IL_058d:  add
    IL_058e:  ldarg.3
    IL_058f:  ldc.i4.1
    IL_0590:  add
    IL_0591:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace4(int32,
                                                                                               int32,
                                                                                               int32)
    IL_0596:  ldelem.r4
    IL_0597:  stfld      float32 Game.BlockGeometryGenerator/CornerLights::L111
    IL_059c:  ldarg.0
    IL_059d:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_05a2:  ldc.i4.5
    IL_05a3:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_05a8:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_05ad:  ldarg.0
    IL_05ae:  ldarg.1
    IL_05af:  ldarg.2
    IL_05b0:  ldarg.3
    IL_05b1:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace5(int32,
                                                                                               int32,
                                                                                               int32)
    IL_05b6:  ldelem.r4
    IL_05b7:  stfld      float32 Game.BlockGeometryGenerator/CornerLights::L000
    IL_05bc:  ldarg.0
    IL_05bd:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_05c2:  ldc.i4.5
    IL_05c3:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_05c8:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_05cd:  ldarg.0
    IL_05ce:  ldarg.1
    IL_05cf:  ldarg.2
    IL_05d0:  ldarg.3
    IL_05d1:  ldc.i4.1
    IL_05d2:  add
    IL_05d3:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace5(int32,
                                                                                               int32,
                                                                                               int32)
    IL_05d8:  ldelem.r4
    IL_05d9:  stfld      float32 Game.BlockGeometryGenerator/CornerLights::L001
    IL_05de:  ldarg.0
    IL_05df:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_05e4:  ldc.i4.5
    IL_05e5:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_05ea:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_05ef:  ldarg.0
    IL_05f0:  ldarg.1
    IL_05f1:  ldarg.2
    IL_05f2:  ldc.i4.1
    IL_05f3:  add
    IL_05f4:  ldarg.3
    IL_05f5:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace5(int32,
                                                                                               int32,
                                                                                               int32)
    IL_05fa:  ldelem.r4
    IL_05fb:  stfld      float32 Game.BlockGeometryGenerator/CornerLights::L010
    IL_0600:  ldarg.0
    IL_0601:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_0606:  ldc.i4.5
    IL_0607:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_060c:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_0611:  ldarg.0
    IL_0612:  ldarg.1
    IL_0613:  ldarg.2
    IL_0614:  ldc.i4.1
    IL_0615:  add
    IL_0616:  ldarg.3
    IL_0617:  ldc.i4.1
    IL_0618:  add
    IL_0619:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace5(int32,
                                                                                               int32,
                                                                                               int32)
    IL_061e:  ldelem.r4
    IL_061f:  stfld      float32 Game.BlockGeometryGenerator/CornerLights::L011
    IL_0624:  ldarg.0
    IL_0625:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_062a:  ldc.i4.5
    IL_062b:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_0630:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_0635:  ldarg.0
    IL_0636:  ldarg.1
    IL_0637:  ldc.i4.1
    IL_0638:  add
    IL_0639:  ldarg.2
    IL_063a:  ldarg.3
    IL_063b:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace5(int32,
                                                                                               int32,
                                                                                               int32)
    IL_0640:  ldelem.r4
    IL_0641:  stfld      float32 Game.BlockGeometryGenerator/CornerLights::L100
    IL_0646:  ldarg.0
    IL_0647:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_064c:  ldc.i4.5
    IL_064d:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_0652:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_0657:  ldarg.0
    IL_0658:  ldarg.1
    IL_0659:  ldc.i4.1
    IL_065a:  add
    IL_065b:  ldarg.2
    IL_065c:  ldarg.3
    IL_065d:  ldc.i4.1
    IL_065e:  add
    IL_065f:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace5(int32,
                                                                                               int32,
                                                                                               int32)
    IL_0664:  ldelem.r4
    IL_0665:  stfld      float32 Game.BlockGeometryGenerator/CornerLights::L101
    IL_066a:  ldarg.0
    IL_066b:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_0670:  ldc.i4.5
    IL_0671:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_0676:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_067b:  ldarg.0
    IL_067c:  ldarg.1
    IL_067d:  ldc.i4.1
    IL_067e:  add
    IL_067f:  ldarg.2
    IL_0680:  ldc.i4.1
    IL_0681:  add
    IL_0682:  ldarg.3
    IL_0683:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace5(int32,
                                                                                               int32,
                                                                                               int32)
    IL_0688:  ldelem.r4
    IL_0689:  stfld      float32 Game.BlockGeometryGenerator/CornerLights::L110
    IL_068e:  ldarg.0
    IL_068f:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_0694:  ldc.i4.5
    IL_0695:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_069a:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_069f:  ldarg.0
    IL_06a0:  ldarg.1
    IL_06a1:  ldc.i4.1
    IL_06a2:  add
    IL_06a3:  ldarg.2
    IL_06a4:  ldc.i4.1
    IL_06a5:  add
    IL_06a6:  ldarg.3
    IL_06a7:  ldc.i4.1
    IL_06a8:  add
    IL_06a9:  call       instance int32 Game.BlockGeometryGenerator::CalculateVertexLightFace5(int32,
                                                                                               int32,
                                                                                               int32)
    IL_06ae:  ldelem.r4
    IL_06af:  stfld      float32 Game.BlockGeometryGenerator/CornerLights::L111
    IL_06b4:  ret
  } // end of method BlockGeometryGenerator::CalculateCornerLights

  .method private hidebysig instance float32 
          InterpolateCornerLights(int32 face,
                                  valuetype [Engine]Engine.Vector3 position) cil managed
  {
    // 代码大小       247 (0xf7)
    .maxstack  3
    .locals init (float32 V_0,
             float32 V_1,
             float32 V_2,
             float32 V_3,
             float32 V_4,
             float32 V_5)
    IL_0000:  ldarg.2
    IL_0001:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0006:  stloc.0
    IL_0007:  ldarg.2
    IL_0008:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_000d:  stloc.1
    IL_000e:  ldarg.2
    IL_000f:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0014:  stloc.2
    IL_0015:  ldc.r4     1.
    IL_001a:  ldloc.0
    IL_001b:  sub
    IL_001c:  stloc.3
    IL_001d:  ldc.r4     1.
    IL_0022:  ldloc.1
    IL_0023:  sub
    IL_0024:  stloc.s    V_4
    IL_0026:  ldc.r4     1.
    IL_002b:  ldloc.2
    IL_002c:  sub
    IL_002d:  stloc.s    V_5
    IL_002f:  ldarg.0
    IL_0030:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_0035:  ldarg.1
    IL_0036:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_003b:  ldfld      float32 Game.BlockGeometryGenerator/CornerLights::L000
    IL_0040:  ldloc.3
    IL_0041:  mul
    IL_0042:  ldloc.s    V_4
    IL_0044:  mul
    IL_0045:  ldloc.s    V_5
    IL_0047:  mul
    IL_0048:  ldarg.0
    IL_0049:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_004e:  ldarg.1
    IL_004f:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_0054:  ldfld      float32 Game.BlockGeometryGenerator/CornerLights::L001
    IL_0059:  ldloc.3
    IL_005a:  mul
    IL_005b:  ldloc.s    V_4
    IL_005d:  mul
    IL_005e:  ldloc.2
    IL_005f:  mul
    IL_0060:  add
    IL_0061:  ldarg.0
    IL_0062:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_0067:  ldarg.1
    IL_0068:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_006d:  ldfld      float32 Game.BlockGeometryGenerator/CornerLights::L010
    IL_0072:  ldloc.3
    IL_0073:  mul
    IL_0074:  ldloc.1
    IL_0075:  mul
    IL_0076:  ldloc.s    V_5
    IL_0078:  mul
    IL_0079:  add
    IL_007a:  ldarg.0
    IL_007b:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_0080:  ldarg.1
    IL_0081:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_0086:  ldfld      float32 Game.BlockGeometryGenerator/CornerLights::L011
    IL_008b:  ldloc.3
    IL_008c:  mul
    IL_008d:  ldloc.1
    IL_008e:  mul
    IL_008f:  ldloc.2
    IL_0090:  mul
    IL_0091:  add
    IL_0092:  ldarg.0
    IL_0093:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_0098:  ldarg.1
    IL_0099:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_009e:  ldfld      float32 Game.BlockGeometryGenerator/CornerLights::L100
    IL_00a3:  ldloc.0
    IL_00a4:  mul
    IL_00a5:  ldloc.s    V_4
    IL_00a7:  mul
    IL_00a8:  ldloc.s    V_5
    IL_00aa:  mul
    IL_00ab:  add
    IL_00ac:  ldarg.0
    IL_00ad:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_00b2:  ldarg.1
    IL_00b3:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_00b8:  ldfld      float32 Game.BlockGeometryGenerator/CornerLights::L101
    IL_00bd:  ldloc.0
    IL_00be:  mul
    IL_00bf:  ldloc.s    V_4
    IL_00c1:  mul
    IL_00c2:  ldloc.2
    IL_00c3:  mul
    IL_00c4:  add
    IL_00c5:  ldarg.0
    IL_00c6:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_00cb:  ldarg.1
    IL_00cc:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_00d1:  ldfld      float32 Game.BlockGeometryGenerator/CornerLights::L110
    IL_00d6:  ldloc.0
    IL_00d7:  mul
    IL_00d8:  ldloc.1
    IL_00d9:  mul
    IL_00da:  ldloc.s    V_5
    IL_00dc:  mul
    IL_00dd:  add
    IL_00de:  ldarg.0
    IL_00df:  ldfld      valuetype Game.BlockGeometryGenerator/CornerLights[] Game.BlockGeometryGenerator::m_cornerLightsByFace
    IL_00e4:  ldarg.1
    IL_00e5:  ldelema    Game.BlockGeometryGenerator/CornerLights
    IL_00ea:  ldfld      float32 Game.BlockGeometryGenerator/CornerLights::L111
    IL_00ef:  ldloc.0
    IL_00f0:  mul
    IL_00f1:  ldloc.1
    IL_00f2:  mul
    IL_00f3:  ldloc.2
    IL_00f4:  mul
    IL_00f5:  add
    IL_00f6:  ret
  } // end of method BlockGeometryGenerator::InterpolateCornerLights

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       188 (0xbc)
    .maxstack  5
    IL_0000:  ldc.i4.8
    IL_0001:  newarr     [Engine]Engine.Vector2
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldc.r4     1.e-003
    IL_000d:  ldc.r4     0.99900001
    IL_0012:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0017:  stelem     [Engine]Engine.Vector2
    IL_001c:  dup
    IL_001d:  ldc.i4.1
    IL_001e:  ldc.r4     0.99900001
    IL_0023:  ldc.r4     0.99900001
    IL_0028:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_002d:  stelem     [Engine]Engine.Vector2
    IL_0032:  dup
    IL_0033:  ldc.i4.2
    IL_0034:  ldc.r4     0.99900001
    IL_0039:  ldc.r4     1.e-003
    IL_003e:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0043:  stelem     [Engine]Engine.Vector2
    IL_0048:  dup
    IL_0049:  ldc.i4.3
    IL_004a:  ldc.r4     1.e-003
    IL_004f:  ldc.r4     1.e-003
    IL_0054:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0059:  stelem     [Engine]Engine.Vector2
    IL_005e:  dup
    IL_005f:  ldc.i4.4
    IL_0060:  ldc.r4     1.e-003
    IL_0065:  ldc.r4     0.99900001
    IL_006a:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_006f:  stelem     [Engine]Engine.Vector2
    IL_0074:  dup
    IL_0075:  ldc.i4.5
    IL_0076:  ldc.r4     0.99900001
    IL_007b:  ldc.r4     0.99900001
    IL_0080:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0085:  stelem     [Engine]Engine.Vector2
    IL_008a:  dup
    IL_008b:  ldc.i4.6
    IL_008c:  ldc.r4     0.99900001
    IL_0091:  ldc.r4     1.e-003
    IL_0096:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_009b:  stelem     [Engine]Engine.Vector2
    IL_00a0:  dup
    IL_00a1:  ldc.i4.7
    IL_00a2:  ldc.r4     1.e-003
    IL_00a7:  ldc.r4     1.e-003
    IL_00ac:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00b1:  stelem     [Engine]Engine.Vector2
    IL_00b6:  stsfld     valuetype [Engine]Engine.Vector2[] Game.BlockGeometryGenerator::m_textureCoordinates
    IL_00bb:  ret
  } // end of method BlockGeometryGenerator::.cctor

} // end of class Game.BlockGeometryGenerator