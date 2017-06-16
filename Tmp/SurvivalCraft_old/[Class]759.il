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
  .field public initonly class Game.TerrainData TerrainData
  .field public initonly class Game.SubsystemElectricity SubsystemElectricity
  .field public initonly class Game.SubsystemFurnitureBlockBehavior SubsystemFurnitureBlockBehavior
  .field public initonly class Game.SubsystemMetersBlockBehavior SubsystemMetersBlockBehavior
  .field private class [Engine]Engine.DynamicArray`1<class Game.ElectricConnectionPath> m_tmpConnectionPaths
  .field private valuetype [Engine]Engine.Point3 m_cornerLightsPosition
  .field private valuetype Game.BlockGeometryGenerator/CornerLights[] m_cornerLightsByFace
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.TerrainData terrainData,
                               class Game.SubsystemElectricity subsystemElectricity,
                               class Game.SubsystemFurnitureBlockBehavior subsystemFurnitureBlockBehavior,
                               class Game.SubsystemMetersBlockBehavior subsystemMetersBlockBehavior) cil managed
  {
    // 代码大小       75 (0x4b)
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
    IL_002f:  stfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_0034:  ldarg.0
    IL_0035:  ldarg.2
    IL_0036:  stfld      class Game.SubsystemElectricity Game.BlockGeometryGenerator::SubsystemElectricity
    IL_003b:  ldarg.0
    IL_003c:  ldarg.3
    IL_003d:  stfld      class Game.SubsystemFurnitureBlockBehavior Game.BlockGeometryGenerator::SubsystemFurnitureBlockBehavior
    IL_0042:  ldarg.0
    IL_0043:  ldarg.s    subsystemMetersBlockBehavior
    IL_0045:  stfld      class Game.SubsystemMetersBlockBehavior Game.BlockGeometryGenerator::SubsystemMetersBlockBehavior
    IL_004a:  ret
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
    IL_0010:  call       int32 Game.TerrainData::ExtractLight(int32)
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
    // 代码大小       2218 (0x8aa)
    .maxstack  12
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> V_7,
             int32 V_8,
             int32 V_9,
             int32 V_10,
             class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> V_11,
             int32 V_12,
             int32 V_13,
             int32 V_14,
             class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> V_15,
             int32 V_16,
             int32 V_17,
             int32 V_18,
             class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> V_19,
             int32 V_20,
             int32 V_21,
             int32 V_22,
             class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> V_23,
             int32 V_24,
             int32 V_25,
             int32 V_26)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_0006:  ldarg.3
    IL_0007:  ldarg.s    y
    IL_0009:  ldarg.s    z
    IL_000b:  callvirt   instance int32 Game.TerrainData::CalculateCellIndex(int32,
                                                                             int32,
                                                                             int32)
    IL_0010:  stloc.0
    IL_0011:  ldarg.1
    IL_0012:  ldfld      int32 Game.Block::BlockIndex
    IL_0017:  stloc.1
    IL_0018:  ldarg.0
    IL_0019:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_001e:  ldarg.3
    IL_001f:  ldarg.s    y
    IL_0021:  ldarg.s    z
    IL_0023:  ldc.i4.1
    IL_0024:  add
    IL_0025:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_002a:  stloc.2
    IL_002b:  ldloc.2
    IL_002c:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0031:  ldloc.1
    IL_0032:  beq        IL_0185

    IL_0037:  ldarg.1
    IL_0038:  ldc.i4.0
    IL_0039:  ldarg.2
    IL_003a:  ldloc.2
    IL_003b:  callvirt   instance bool Game.Block::ShouldGenerateFace(int32,
                                                                      int32,
                                                                      int32)
    IL_0040:  brfalse    IL_0185

    IL_0045:  ldarg.s    subsetsByFace
    IL_0047:  ldc.i4.0
    IL_0048:  ldelem.ref
    IL_0049:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_004e:  stloc.3
    IL_004f:  ldarg.s    subsetsByFace
    IL_0051:  ldc.i4.0
    IL_0052:  ldelem.ref
    IL_0053:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_0058:  ldarg.1
    IL_0059:  ldc.i4.0
    IL_005a:  ldarg.2
    IL_005b:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_0060:  stloc.s    V_4
    IL_0062:  ldloc.3
    IL_0063:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_0068:  stloc.s    V_5
    IL_006a:  ldloc.3
    IL_006b:  dup
    IL_006c:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_0071:  ldc.i4.4
    IL_0072:  add
    IL_0073:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
    IL_0078:  ldarg.0
    IL_0079:  ldarg.3
    IL_007a:  ldarg.s    y
    IL_007c:  ldarg.s    z
    IL_007e:  ldc.i4.1
    IL_007f:  add
    IL_0080:  ldc.r4     1.
    IL_0085:  ldc.i4.0
    IL_0086:  ldloc.s    V_4
    IL_0088:  ldarg.s    color
    IL_008a:  ldloc.3
    IL_008b:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0090:  ldloc.s    V_5
    IL_0092:  ldelema    Game.TerrainVertex
    IL_0097:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace0(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_009c:  ldarg.0
    IL_009d:  ldarg.3
    IL_009e:  ldc.i4.1
    IL_009f:  add
    IL_00a0:  ldarg.s    y
    IL_00a2:  ldarg.s    z
    IL_00a4:  ldc.i4.1
    IL_00a5:  add
    IL_00a6:  ldc.r4     1.
    IL_00ab:  ldc.i4.1
    IL_00ac:  ldloc.s    V_4
    IL_00ae:  ldarg.s    color
    IL_00b0:  ldloc.3
    IL_00b1:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_00b6:  ldloc.s    V_5
    IL_00b8:  ldc.i4.1
    IL_00b9:  add
    IL_00ba:  ldelema    Game.TerrainVertex
    IL_00bf:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace0(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_00c4:  ldarg.0
    IL_00c5:  ldarg.3
    IL_00c6:  ldc.i4.1
    IL_00c7:  add
    IL_00c8:  ldarg.s    y
    IL_00ca:  ldc.i4.1
    IL_00cb:  add
    IL_00cc:  ldarg.s    z
    IL_00ce:  ldc.i4.1
    IL_00cf:  add
    IL_00d0:  ldc.r4     1.
    IL_00d5:  ldc.i4.2
    IL_00d6:  ldloc.s    V_4
    IL_00d8:  ldarg.s    color
    IL_00da:  ldloc.3
    IL_00db:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_00e0:  ldloc.s    V_5
    IL_00e2:  ldc.i4.2
    IL_00e3:  add
    IL_00e4:  ldelema    Game.TerrainVertex
    IL_00e9:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace0(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_00ee:  ldarg.0
    IL_00ef:  ldarg.3
    IL_00f0:  ldarg.s    y
    IL_00f2:  ldc.i4.1
    IL_00f3:  add
    IL_00f4:  ldarg.s    z
    IL_00f6:  ldc.i4.1
    IL_00f7:  add
    IL_00f8:  ldc.r4     1.
    IL_00fd:  ldc.i4.3
    IL_00fe:  ldloc.s    V_4
    IL_0100:  ldarg.s    color
    IL_0102:  ldloc.3
    IL_0103:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0108:  ldloc.s    V_5
    IL_010a:  ldc.i4.3
    IL_010b:  add
    IL_010c:  ldelema    Game.TerrainVertex
    IL_0111:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace0(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_0116:  dup
    IL_0117:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_011c:  stloc.s    V_6
    IL_011e:  dup
    IL_011f:  dup
    IL_0120:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_0125:  ldc.i4.6
    IL_0126:  add
    IL_0127:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::set_Count(int32)
    IL_012c:  dup
    IL_012d:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0132:  ldloc.s    V_6
    IL_0134:  ldloc.s    V_5
    IL_0136:  conv.u2
    IL_0137:  stelem.i2
    IL_0138:  dup
    IL_0139:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_013e:  ldloc.s    V_6
    IL_0140:  ldc.i4.1
    IL_0141:  add
    IL_0142:  ldloc.s    V_5
    IL_0144:  ldc.i4.2
    IL_0145:  add
    IL_0146:  conv.u2
    IL_0147:  stelem.i2
    IL_0148:  dup
    IL_0149:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_014e:  ldloc.s    V_6
    IL_0150:  ldc.i4.2
    IL_0151:  add
    IL_0152:  ldloc.s    V_5
    IL_0154:  ldc.i4.1
    IL_0155:  add
    IL_0156:  conv.u2
    IL_0157:  stelem.i2
    IL_0158:  dup
    IL_0159:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_015e:  ldloc.s    V_6
    IL_0160:  ldc.i4.3
    IL_0161:  add
    IL_0162:  ldloc.s    V_5
    IL_0164:  ldc.i4.2
    IL_0165:  add
    IL_0166:  conv.u2
    IL_0167:  stelem.i2
    IL_0168:  dup
    IL_0169:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_016e:  ldloc.s    V_6
    IL_0170:  ldc.i4.4
    IL_0171:  add
    IL_0172:  ldloc.s    V_5
    IL_0174:  conv.u2
    IL_0175:  stelem.i2
    IL_0176:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_017b:  ldloc.s    V_6
    IL_017d:  ldc.i4.5
    IL_017e:  add
    IL_017f:  ldloc.s    V_5
    IL_0181:  ldc.i4.3
    IL_0182:  add
    IL_0183:  conv.u2
    IL_0184:  stelem.i2
    IL_0185:  ldarg.0
    IL_0186:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_018b:  ldarg.3
    IL_018c:  ldc.i4.1
    IL_018d:  add
    IL_018e:  ldarg.s    y
    IL_0190:  ldarg.s    z
    IL_0192:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_0197:  stloc.2
    IL_0198:  ldloc.2
    IL_0199:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_019e:  ldloc.1
    IL_019f:  beq        IL_02f9

    IL_01a4:  ldarg.1
    IL_01a5:  ldc.i4.1
    IL_01a6:  ldarg.2
    IL_01a7:  ldloc.2
    IL_01a8:  callvirt   instance bool Game.Block::ShouldGenerateFace(int32,
                                                                      int32,
                                                                      int32)
    IL_01ad:  brfalse    IL_02f9

    IL_01b2:  ldarg.s    subsetsByFace
    IL_01b4:  ldc.i4.1
    IL_01b5:  ldelem.ref
    IL_01b6:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_01bb:  stloc.s    V_7
    IL_01bd:  ldarg.s    subsetsByFace
    IL_01bf:  ldc.i4.1
    IL_01c0:  ldelem.ref
    IL_01c1:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_01c6:  ldarg.1
    IL_01c7:  ldc.i4.1
    IL_01c8:  ldarg.2
    IL_01c9:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_01ce:  stloc.s    V_8
    IL_01d0:  ldloc.s    V_7
    IL_01d2:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_01d7:  stloc.s    V_9
    IL_01d9:  ldloc.s    V_7
    IL_01db:  dup
    IL_01dc:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_01e1:  ldc.i4.4
    IL_01e2:  add
    IL_01e3:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
    IL_01e8:  ldarg.0
    IL_01e9:  ldarg.3
    IL_01ea:  ldc.i4.1
    IL_01eb:  add
    IL_01ec:  ldarg.s    y
    IL_01ee:  ldarg.s    z
    IL_01f0:  ldc.r4     1.
    IL_01f5:  ldc.i4.1
    IL_01f6:  ldloc.s    V_8
    IL_01f8:  ldarg.s    color
    IL_01fa:  ldloc.s    V_7
    IL_01fc:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0201:  ldloc.s    V_9
    IL_0203:  ldelema    Game.TerrainVertex
    IL_0208:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace1(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_020d:  ldarg.0
    IL_020e:  ldarg.3
    IL_020f:  ldc.i4.1
    IL_0210:  add
    IL_0211:  ldarg.s    y
    IL_0213:  ldc.i4.1
    IL_0214:  add
    IL_0215:  ldarg.s    z
    IL_0217:  ldc.r4     1.
    IL_021c:  ldc.i4.2
    IL_021d:  ldloc.s    V_8
    IL_021f:  ldarg.s    color
    IL_0221:  ldloc.s    V_7
    IL_0223:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0228:  ldloc.s    V_9
    IL_022a:  ldc.i4.1
    IL_022b:  add
    IL_022c:  ldelema    Game.TerrainVertex
    IL_0231:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace1(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_0236:  ldarg.0
    IL_0237:  ldarg.3
    IL_0238:  ldc.i4.1
    IL_0239:  add
    IL_023a:  ldarg.s    y
    IL_023c:  ldc.i4.1
    IL_023d:  add
    IL_023e:  ldarg.s    z
    IL_0240:  ldc.i4.1
    IL_0241:  add
    IL_0242:  ldc.r4     1.
    IL_0247:  ldc.i4.3
    IL_0248:  ldloc.s    V_8
    IL_024a:  ldarg.s    color
    IL_024c:  ldloc.s    V_7
    IL_024e:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0253:  ldloc.s    V_9
    IL_0255:  ldc.i4.2
    IL_0256:  add
    IL_0257:  ldelema    Game.TerrainVertex
    IL_025c:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace1(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_0261:  ldarg.0
    IL_0262:  ldarg.3
    IL_0263:  ldc.i4.1
    IL_0264:  add
    IL_0265:  ldarg.s    y
    IL_0267:  ldarg.s    z
    IL_0269:  ldc.i4.1
    IL_026a:  add
    IL_026b:  ldc.r4     1.
    IL_0270:  ldc.i4.0
    IL_0271:  ldloc.s    V_8
    IL_0273:  ldarg.s    color
    IL_0275:  ldloc.s    V_7
    IL_0277:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_027c:  ldloc.s    V_9
    IL_027e:  ldc.i4.3
    IL_027f:  add
    IL_0280:  ldelema    Game.TerrainVertex
    IL_0285:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace1(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_028a:  dup
    IL_028b:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_0290:  stloc.s    V_10
    IL_0292:  dup
    IL_0293:  dup
    IL_0294:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_0299:  ldc.i4.6
    IL_029a:  add
    IL_029b:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::set_Count(int32)
    IL_02a0:  dup
    IL_02a1:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_02a6:  ldloc.s    V_10
    IL_02a8:  ldloc.s    V_9
    IL_02aa:  conv.u2
    IL_02ab:  stelem.i2
    IL_02ac:  dup
    IL_02ad:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_02b2:  ldloc.s    V_10
    IL_02b4:  ldc.i4.1
    IL_02b5:  add
    IL_02b6:  ldloc.s    V_9
    IL_02b8:  ldc.i4.2
    IL_02b9:  add
    IL_02ba:  conv.u2
    IL_02bb:  stelem.i2
    IL_02bc:  dup
    IL_02bd:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_02c2:  ldloc.s    V_10
    IL_02c4:  ldc.i4.2
    IL_02c5:  add
    IL_02c6:  ldloc.s    V_9
    IL_02c8:  ldc.i4.1
    IL_02c9:  add
    IL_02ca:  conv.u2
    IL_02cb:  stelem.i2
    IL_02cc:  dup
    IL_02cd:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_02d2:  ldloc.s    V_10
    IL_02d4:  ldc.i4.3
    IL_02d5:  add
    IL_02d6:  ldloc.s    V_9
    IL_02d8:  ldc.i4.2
    IL_02d9:  add
    IL_02da:  conv.u2
    IL_02db:  stelem.i2
    IL_02dc:  dup
    IL_02dd:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_02e2:  ldloc.s    V_10
    IL_02e4:  ldc.i4.4
    IL_02e5:  add
    IL_02e6:  ldloc.s    V_9
    IL_02e8:  conv.u2
    IL_02e9:  stelem.i2
    IL_02ea:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_02ef:  ldloc.s    V_10
    IL_02f1:  ldc.i4.5
    IL_02f2:  add
    IL_02f3:  ldloc.s    V_9
    IL_02f5:  ldc.i4.3
    IL_02f6:  add
    IL_02f7:  conv.u2
    IL_02f8:  stelem.i2
    IL_02f9:  ldarg.0
    IL_02fa:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_02ff:  ldarg.3
    IL_0300:  ldarg.s    y
    IL_0302:  ldarg.s    z
    IL_0304:  ldc.i4.1
    IL_0305:  sub
    IL_0306:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_030b:  stloc.2
    IL_030c:  ldloc.2
    IL_030d:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0312:  ldloc.1
    IL_0313:  beq        IL_0465

    IL_0318:  ldarg.1
    IL_0319:  ldc.i4.2
    IL_031a:  ldarg.2
    IL_031b:  ldloc.2
    IL_031c:  callvirt   instance bool Game.Block::ShouldGenerateFace(int32,
                                                                      int32,
                                                                      int32)
    IL_0321:  brfalse    IL_0465

    IL_0326:  ldarg.s    subsetsByFace
    IL_0328:  ldc.i4.2
    IL_0329:  ldelem.ref
    IL_032a:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_032f:  stloc.s    V_11
    IL_0331:  ldarg.s    subsetsByFace
    IL_0333:  ldc.i4.2
    IL_0334:  ldelem.ref
    IL_0335:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_033a:  ldarg.1
    IL_033b:  ldc.i4.2
    IL_033c:  ldarg.2
    IL_033d:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_0342:  stloc.s    V_12
    IL_0344:  ldloc.s    V_11
    IL_0346:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_034b:  stloc.s    V_13
    IL_034d:  ldloc.s    V_11
    IL_034f:  dup
    IL_0350:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_0355:  ldc.i4.4
    IL_0356:  add
    IL_0357:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
    IL_035c:  ldarg.0
    IL_035d:  ldarg.3
    IL_035e:  ldarg.s    y
    IL_0360:  ldarg.s    z
    IL_0362:  ldc.r4     1.
    IL_0367:  ldc.i4.1
    IL_0368:  ldloc.s    V_12
    IL_036a:  ldarg.s    color
    IL_036c:  ldloc.s    V_11
    IL_036e:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0373:  ldloc.s    V_13
    IL_0375:  ldelema    Game.TerrainVertex
    IL_037a:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace2(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_037f:  ldarg.0
    IL_0380:  ldarg.3
    IL_0381:  ldc.i4.1
    IL_0382:  add
    IL_0383:  ldarg.s    y
    IL_0385:  ldarg.s    z
    IL_0387:  ldc.r4     1.
    IL_038c:  ldc.i4.0
    IL_038d:  ldloc.s    V_12
    IL_038f:  ldarg.s    color
    IL_0391:  ldloc.s    V_11
    IL_0393:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0398:  ldloc.s    V_13
    IL_039a:  ldc.i4.1
    IL_039b:  add
    IL_039c:  ldelema    Game.TerrainVertex
    IL_03a1:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace2(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_03a6:  ldarg.0
    IL_03a7:  ldarg.3
    IL_03a8:  ldc.i4.1
    IL_03a9:  add
    IL_03aa:  ldarg.s    y
    IL_03ac:  ldc.i4.1
    IL_03ad:  add
    IL_03ae:  ldarg.s    z
    IL_03b0:  ldc.r4     1.
    IL_03b5:  ldc.i4.3
    IL_03b6:  ldloc.s    V_12
    IL_03b8:  ldarg.s    color
    IL_03ba:  ldloc.s    V_11
    IL_03bc:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_03c1:  ldloc.s    V_13
    IL_03c3:  ldc.i4.2
    IL_03c4:  add
    IL_03c5:  ldelema    Game.TerrainVertex
    IL_03ca:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace2(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_03cf:  ldarg.0
    IL_03d0:  ldarg.3
    IL_03d1:  ldarg.s    y
    IL_03d3:  ldc.i4.1
    IL_03d4:  add
    IL_03d5:  ldarg.s    z
    IL_03d7:  ldc.r4     1.
    IL_03dc:  ldc.i4.2
    IL_03dd:  ldloc.s    V_12
    IL_03df:  ldarg.s    color
    IL_03e1:  ldloc.s    V_11
    IL_03e3:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_03e8:  ldloc.s    V_13
    IL_03ea:  ldc.i4.3
    IL_03eb:  add
    IL_03ec:  ldelema    Game.TerrainVertex
    IL_03f1:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace2(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_03f6:  dup
    IL_03f7:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_03fc:  stloc.s    V_14
    IL_03fe:  dup
    IL_03ff:  dup
    IL_0400:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_0405:  ldc.i4.6
    IL_0406:  add
    IL_0407:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::set_Count(int32)
    IL_040c:  dup
    IL_040d:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0412:  ldloc.s    V_14
    IL_0414:  ldloc.s    V_13
    IL_0416:  conv.u2
    IL_0417:  stelem.i2
    IL_0418:  dup
    IL_0419:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_041e:  ldloc.s    V_14
    IL_0420:  ldc.i4.1
    IL_0421:  add
    IL_0422:  ldloc.s    V_13
    IL_0424:  ldc.i4.1
    IL_0425:  add
    IL_0426:  conv.u2
    IL_0427:  stelem.i2
    IL_0428:  dup
    IL_0429:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_042e:  ldloc.s    V_14
    IL_0430:  ldc.i4.2
    IL_0431:  add
    IL_0432:  ldloc.s    V_13
    IL_0434:  ldc.i4.2
    IL_0435:  add
    IL_0436:  conv.u2
    IL_0437:  stelem.i2
    IL_0438:  dup
    IL_0439:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_043e:  ldloc.s    V_14
    IL_0440:  ldc.i4.3
    IL_0441:  add
    IL_0442:  ldloc.s    V_13
    IL_0444:  ldc.i4.2
    IL_0445:  add
    IL_0446:  conv.u2
    IL_0447:  stelem.i2
    IL_0448:  dup
    IL_0449:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_044e:  ldloc.s    V_14
    IL_0450:  ldc.i4.4
    IL_0451:  add
    IL_0452:  ldloc.s    V_13
    IL_0454:  ldc.i4.3
    IL_0455:  add
    IL_0456:  conv.u2
    IL_0457:  stelem.i2
    IL_0458:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_045d:  ldloc.s    V_14
    IL_045f:  ldc.i4.5
    IL_0460:  add
    IL_0461:  ldloc.s    V_13
    IL_0463:  conv.u2
    IL_0464:  stelem.i2
    IL_0465:  ldarg.0
    IL_0466:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_046b:  ldarg.3
    IL_046c:  ldc.i4.1
    IL_046d:  sub
    IL_046e:  ldarg.s    y
    IL_0470:  ldarg.s    z
    IL_0472:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_0477:  stloc.2
    IL_0478:  ldloc.2
    IL_0479:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_047e:  ldloc.1
    IL_047f:  beq        IL_05d1

    IL_0484:  ldarg.1
    IL_0485:  ldc.i4.3
    IL_0486:  ldarg.2
    IL_0487:  ldloc.2
    IL_0488:  callvirt   instance bool Game.Block::ShouldGenerateFace(int32,
                                                                      int32,
                                                                      int32)
    IL_048d:  brfalse    IL_05d1

    IL_0492:  ldarg.s    subsetsByFace
    IL_0494:  ldc.i4.3
    IL_0495:  ldelem.ref
    IL_0496:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_049b:  stloc.s    V_15
    IL_049d:  ldarg.s    subsetsByFace
    IL_049f:  ldc.i4.3
    IL_04a0:  ldelem.ref
    IL_04a1:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_04a6:  ldarg.1
    IL_04a7:  ldc.i4.3
    IL_04a8:  ldarg.2
    IL_04a9:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_04ae:  stloc.s    V_16
    IL_04b0:  ldloc.s    V_15
    IL_04b2:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_04b7:  stloc.s    V_17
    IL_04b9:  ldloc.s    V_15
    IL_04bb:  dup
    IL_04bc:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_04c1:  ldc.i4.4
    IL_04c2:  add
    IL_04c3:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
    IL_04c8:  ldarg.0
    IL_04c9:  ldarg.3
    IL_04ca:  ldarg.s    y
    IL_04cc:  ldarg.s    z
    IL_04ce:  ldc.r4     1.
    IL_04d3:  ldc.i4.0
    IL_04d4:  ldloc.s    V_16
    IL_04d6:  ldarg.s    color
    IL_04d8:  ldloc.s    V_15
    IL_04da:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_04df:  ldloc.s    V_17
    IL_04e1:  ldelema    Game.TerrainVertex
    IL_04e6:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace3(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_04eb:  ldarg.0
    IL_04ec:  ldarg.3
    IL_04ed:  ldarg.s    y
    IL_04ef:  ldc.i4.1
    IL_04f0:  add
    IL_04f1:  ldarg.s    z
    IL_04f3:  ldc.r4     1.
    IL_04f8:  ldc.i4.3
    IL_04f9:  ldloc.s    V_16
    IL_04fb:  ldarg.s    color
    IL_04fd:  ldloc.s    V_15
    IL_04ff:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0504:  ldloc.s    V_17
    IL_0506:  ldc.i4.1
    IL_0507:  add
    IL_0508:  ldelema    Game.TerrainVertex
    IL_050d:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace3(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_0512:  ldarg.0
    IL_0513:  ldarg.3
    IL_0514:  ldarg.s    y
    IL_0516:  ldc.i4.1
    IL_0517:  add
    IL_0518:  ldarg.s    z
    IL_051a:  ldc.i4.1
    IL_051b:  add
    IL_051c:  ldc.r4     1.
    IL_0521:  ldc.i4.2
    IL_0522:  ldloc.s    V_16
    IL_0524:  ldarg.s    color
    IL_0526:  ldloc.s    V_15
    IL_0528:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_052d:  ldloc.s    V_17
    IL_052f:  ldc.i4.2
    IL_0530:  add
    IL_0531:  ldelema    Game.TerrainVertex
    IL_0536:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace3(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_053b:  ldarg.0
    IL_053c:  ldarg.3
    IL_053d:  ldarg.s    y
    IL_053f:  ldarg.s    z
    IL_0541:  ldc.i4.1
    IL_0542:  add
    IL_0543:  ldc.r4     1.
    IL_0548:  ldc.i4.1
    IL_0549:  ldloc.s    V_16
    IL_054b:  ldarg.s    color
    IL_054d:  ldloc.s    V_15
    IL_054f:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0554:  ldloc.s    V_17
    IL_0556:  ldc.i4.3
    IL_0557:  add
    IL_0558:  ldelema    Game.TerrainVertex
    IL_055d:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace3(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_0562:  dup
    IL_0563:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_0568:  stloc.s    V_18
    IL_056a:  dup
    IL_056b:  dup
    IL_056c:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_0571:  ldc.i4.6
    IL_0572:  add
    IL_0573:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::set_Count(int32)
    IL_0578:  dup
    IL_0579:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_057e:  ldloc.s    V_18
    IL_0580:  ldloc.s    V_17
    IL_0582:  conv.u2
    IL_0583:  stelem.i2
    IL_0584:  dup
    IL_0585:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_058a:  ldloc.s    V_18
    IL_058c:  ldc.i4.1
    IL_058d:  add
    IL_058e:  ldloc.s    V_17
    IL_0590:  ldc.i4.1
    IL_0591:  add
    IL_0592:  conv.u2
    IL_0593:  stelem.i2
    IL_0594:  dup
    IL_0595:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_059a:  ldloc.s    V_18
    IL_059c:  ldc.i4.2
    IL_059d:  add
    IL_059e:  ldloc.s    V_17
    IL_05a0:  ldc.i4.2
    IL_05a1:  add
    IL_05a2:  conv.u2
    IL_05a3:  stelem.i2
    IL_05a4:  dup
    IL_05a5:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_05aa:  ldloc.s    V_18
    IL_05ac:  ldc.i4.3
    IL_05ad:  add
    IL_05ae:  ldloc.s    V_17
    IL_05b0:  ldc.i4.2
    IL_05b1:  add
    IL_05b2:  conv.u2
    IL_05b3:  stelem.i2
    IL_05b4:  dup
    IL_05b5:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_05ba:  ldloc.s    V_18
    IL_05bc:  ldc.i4.4
    IL_05bd:  add
    IL_05be:  ldloc.s    V_17
    IL_05c0:  ldc.i4.3
    IL_05c1:  add
    IL_05c2:  conv.u2
    IL_05c3:  stelem.i2
    IL_05c4:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_05c9:  ldloc.s    V_18
    IL_05cb:  ldc.i4.5
    IL_05cc:  add
    IL_05cd:  ldloc.s    V_17
    IL_05cf:  conv.u2
    IL_05d0:  stelem.i2
    IL_05d1:  ldarg.0
    IL_05d2:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_05d7:  ldloc.0
    IL_05d8:  ldc.i4.1
    IL_05d9:  add
    IL_05da:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32)
    IL_05df:  stloc.2
    IL_05e0:  ldloc.2
    IL_05e1:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_05e6:  ldloc.1
    IL_05e7:  beq        IL_0741

    IL_05ec:  ldarg.1
    IL_05ed:  ldc.i4.4
    IL_05ee:  ldarg.2
    IL_05ef:  ldloc.2
    IL_05f0:  callvirt   instance bool Game.Block::ShouldGenerateFace(int32,
                                                                      int32,
                                                                      int32)
    IL_05f5:  brfalse    IL_0741

    IL_05fa:  ldarg.s    subsetsByFace
    IL_05fc:  ldc.i4.4
    IL_05fd:  ldelem.ref
    IL_05fe:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_0603:  stloc.s    V_19
    IL_0605:  ldarg.s    subsetsByFace
    IL_0607:  ldc.i4.4
    IL_0608:  ldelem.ref
    IL_0609:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_060e:  ldarg.1
    IL_060f:  ldc.i4.4
    IL_0610:  ldarg.2
    IL_0611:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_0616:  stloc.s    V_20
    IL_0618:  ldloc.s    V_19
    IL_061a:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_061f:  stloc.s    V_21
    IL_0621:  ldloc.s    V_19
    IL_0623:  dup
    IL_0624:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_0629:  ldc.i4.4
    IL_062a:  add
    IL_062b:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
    IL_0630:  ldarg.0
    IL_0631:  ldarg.3
    IL_0632:  ldarg.s    y
    IL_0634:  ldc.i4.1
    IL_0635:  add
    IL_0636:  ldarg.s    z
    IL_0638:  ldc.r4     1.
    IL_063d:  ldc.i4.0
    IL_063e:  ldloc.s    V_20
    IL_0640:  ldarg.s    color
    IL_0642:  ldloc.s    V_19
    IL_0644:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0649:  ldloc.s    V_21
    IL_064b:  ldelema    Game.TerrainVertex
    IL_0650:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace4(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_0655:  ldarg.0
    IL_0656:  ldarg.3
    IL_0657:  ldc.i4.1
    IL_0658:  add
    IL_0659:  ldarg.s    y
    IL_065b:  ldc.i4.1
    IL_065c:  add
    IL_065d:  ldarg.s    z
    IL_065f:  ldc.r4     1.
    IL_0664:  ldc.i4.1
    IL_0665:  ldloc.s    V_20
    IL_0667:  ldarg.s    color
    IL_0669:  ldloc.s    V_19
    IL_066b:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0670:  ldloc.s    V_21
    IL_0672:  ldc.i4.1
    IL_0673:  add
    IL_0674:  ldelema    Game.TerrainVertex
    IL_0679:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace4(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_067e:  ldarg.0
    IL_067f:  ldarg.3
    IL_0680:  ldc.i4.1
    IL_0681:  add
    IL_0682:  ldarg.s    y
    IL_0684:  ldc.i4.1
    IL_0685:  add
    IL_0686:  ldarg.s    z
    IL_0688:  ldc.i4.1
    IL_0689:  add
    IL_068a:  ldc.r4     1.
    IL_068f:  ldc.i4.2
    IL_0690:  ldloc.s    V_20
    IL_0692:  ldarg.s    color
    IL_0694:  ldloc.s    V_19
    IL_0696:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_069b:  ldloc.s    V_21
    IL_069d:  ldc.i4.2
    IL_069e:  add
    IL_069f:  ldelema    Game.TerrainVertex
    IL_06a4:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace4(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_06a9:  ldarg.0
    IL_06aa:  ldarg.3
    IL_06ab:  ldarg.s    y
    IL_06ad:  ldc.i4.1
    IL_06ae:  add
    IL_06af:  ldarg.s    z
    IL_06b1:  ldc.i4.1
    IL_06b2:  add
    IL_06b3:  ldc.r4     1.
    IL_06b8:  ldc.i4.3
    IL_06b9:  ldloc.s    V_20
    IL_06bb:  ldarg.s    color
    IL_06bd:  ldloc.s    V_19
    IL_06bf:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_06c4:  ldloc.s    V_21
    IL_06c6:  ldc.i4.3
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
    IL_06d2:  dup
    IL_06d3:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_06d8:  stloc.s    V_22
    IL_06da:  dup
    IL_06db:  dup
    IL_06dc:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_06e1:  ldc.i4.6
    IL_06e2:  add
    IL_06e3:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::set_Count(int32)
    IL_06e8:  dup
    IL_06e9:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_06ee:  ldloc.s    V_22
    IL_06f0:  ldloc.s    V_21
    IL_06f2:  conv.u2
    IL_06f3:  stelem.i2
    IL_06f4:  dup
    IL_06f5:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_06fa:  ldloc.s    V_22
    IL_06fc:  ldc.i4.1
    IL_06fd:  add
    IL_06fe:  ldloc.s    V_21
    IL_0700:  ldc.i4.1
    IL_0701:  add
    IL_0702:  conv.u2
    IL_0703:  stelem.i2
    IL_0704:  dup
    IL_0705:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_070a:  ldloc.s    V_22
    IL_070c:  ldc.i4.2
    IL_070d:  add
    IL_070e:  ldloc.s    V_21
    IL_0710:  ldc.i4.2
    IL_0711:  add
    IL_0712:  conv.u2
    IL_0713:  stelem.i2
    IL_0714:  dup
    IL_0715:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_071a:  ldloc.s    V_22
    IL_071c:  ldc.i4.3
    IL_071d:  add
    IL_071e:  ldloc.s    V_21
    IL_0720:  ldc.i4.2
    IL_0721:  add
    IL_0722:  conv.u2
    IL_0723:  stelem.i2
    IL_0724:  dup
    IL_0725:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_072a:  ldloc.s    V_22
    IL_072c:  ldc.i4.4
    IL_072d:  add
    IL_072e:  ldloc.s    V_21
    IL_0730:  ldc.i4.3
    IL_0731:  add
    IL_0732:  conv.u2
    IL_0733:  stelem.i2
    IL_0734:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0739:  ldloc.s    V_22
    IL_073b:  ldc.i4.5
    IL_073c:  add
    IL_073d:  ldloc.s    V_21
    IL_073f:  conv.u2
    IL_0740:  stelem.i2
    IL_0741:  ldarg.0
    IL_0742:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_0747:  ldloc.0
    IL_0748:  ldc.i4.1
    IL_0749:  sub
    IL_074a:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32)
    IL_074f:  stloc.2
    IL_0750:  ldloc.2
    IL_0751:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0756:  ldloc.1
    IL_0757:  beq        IL_08a9

    IL_075c:  ldarg.1
    IL_075d:  ldc.i4.5
    IL_075e:  ldarg.2
    IL_075f:  ldloc.2
    IL_0760:  callvirt   instance bool Game.Block::ShouldGenerateFace(int32,
                                                                      int32,
                                                                      int32)
    IL_0765:  brfalse    IL_08a9

    IL_076a:  ldarg.s    subsetsByFace
    IL_076c:  ldc.i4.5
    IL_076d:  ldelem.ref
    IL_076e:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_0773:  stloc.s    V_23
    IL_0775:  ldarg.s    subsetsByFace
    IL_0777:  ldc.i4.5
    IL_0778:  ldelem.ref
    IL_0779:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_077e:  ldarg.1
    IL_077f:  ldc.i4.5
    IL_0780:  ldarg.2
    IL_0781:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_0786:  stloc.s    V_24
    IL_0788:  ldloc.s    V_23
    IL_078a:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_078f:  stloc.s    V_25
    IL_0791:  ldloc.s    V_23
    IL_0793:  dup
    IL_0794:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_0799:  ldc.i4.4
    IL_079a:  add
    IL_079b:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
    IL_07a0:  ldarg.0
    IL_07a1:  ldarg.3
    IL_07a2:  ldarg.s    y
    IL_07a4:  ldarg.s    z
    IL_07a6:  ldc.r4     1.
    IL_07ab:  ldc.i4.0
    IL_07ac:  ldloc.s    V_24
    IL_07ae:  ldarg.s    color
    IL_07b0:  ldloc.s    V_23
    IL_07b2:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_07b7:  ldloc.s    V_25
    IL_07b9:  ldelema    Game.TerrainVertex
    IL_07be:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace5(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_07c3:  ldarg.0
    IL_07c4:  ldarg.3
    IL_07c5:  ldc.i4.1
    IL_07c6:  add
    IL_07c7:  ldarg.s    y
    IL_07c9:  ldarg.s    z
    IL_07cb:  ldc.r4     1.
    IL_07d0:  ldc.i4.1
    IL_07d1:  ldloc.s    V_24
    IL_07d3:  ldarg.s    color
    IL_07d5:  ldloc.s    V_23
    IL_07d7:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_07dc:  ldloc.s    V_25
    IL_07de:  ldc.i4.1
    IL_07df:  add
    IL_07e0:  ldelema    Game.TerrainVertex
    IL_07e5:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace5(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_07ea:  ldarg.0
    IL_07eb:  ldarg.3
    IL_07ec:  ldc.i4.1
    IL_07ed:  add
    IL_07ee:  ldarg.s    y
    IL_07f0:  ldarg.s    z
    IL_07f2:  ldc.i4.1
    IL_07f3:  add
    IL_07f4:  ldc.r4     1.
    IL_07f9:  ldc.i4.2
    IL_07fa:  ldloc.s    V_24
    IL_07fc:  ldarg.s    color
    IL_07fe:  ldloc.s    V_23
    IL_0800:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0805:  ldloc.s    V_25
    IL_0807:  ldc.i4.2
    IL_0808:  add
    IL_0809:  ldelema    Game.TerrainVertex
    IL_080e:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace5(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_0813:  ldarg.0
    IL_0814:  ldarg.3
    IL_0815:  ldarg.s    y
    IL_0817:  ldarg.s    z
    IL_0819:  ldc.i4.1
    IL_081a:  add
    IL_081b:  ldc.r4     1.
    IL_0820:  ldc.i4.3
    IL_0821:  ldloc.s    V_24
    IL_0823:  ldarg.s    color
    IL_0825:  ldloc.s    V_23
    IL_0827:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_082c:  ldloc.s    V_25
    IL_082e:  ldc.i4.3
    IL_082f:  add
    IL_0830:  ldelema    Game.TerrainVertex
    IL_0835:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace5(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_083a:  dup
    IL_083b:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_0840:  stloc.s    V_26
    IL_0842:  dup
    IL_0843:  dup
    IL_0844:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_0849:  ldc.i4.6
    IL_084a:  add
    IL_084b:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::set_Count(int32)
    IL_0850:  dup
    IL_0851:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0856:  ldloc.s    V_26
    IL_0858:  ldloc.s    V_25
    IL_085a:  conv.u2
    IL_085b:  stelem.i2
    IL_085c:  dup
    IL_085d:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0862:  ldloc.s    V_26
    IL_0864:  ldc.i4.1
    IL_0865:  add
    IL_0866:  ldloc.s    V_25
    IL_0868:  ldc.i4.2
    IL_0869:  add
    IL_086a:  conv.u2
    IL_086b:  stelem.i2
    IL_086c:  dup
    IL_086d:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0872:  ldloc.s    V_26
    IL_0874:  ldc.i4.2
    IL_0875:  add
    IL_0876:  ldloc.s    V_25
    IL_0878:  ldc.i4.1
    IL_0879:  add
    IL_087a:  conv.u2
    IL_087b:  stelem.i2
    IL_087c:  dup
    IL_087d:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0882:  ldloc.s    V_26
    IL_0884:  ldc.i4.3
    IL_0885:  add
    IL_0886:  ldloc.s    V_25
    IL_0888:  ldc.i4.2
    IL_0889:  add
    IL_088a:  conv.u2
    IL_088b:  stelem.i2
    IL_088c:  dup
    IL_088d:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0892:  ldloc.s    V_26
    IL_0894:  ldc.i4.4
    IL_0895:  add
    IL_0896:  ldloc.s    V_25
    IL_0898:  conv.u2
    IL_0899:  stelem.i2
    IL_089a:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_089f:  ldloc.s    V_26
    IL_08a1:  ldc.i4.5
    IL_08a2:  add
    IL_08a3:  ldloc.s    V_25
    IL_08a5:  ldc.i4.3
    IL_08a6:  add
    IL_08a7:  conv.u2
    IL_08a8:  stelem.i2
    IL_08a9:  ret
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
    // 代码大小       2215 (0x8a7)
    .maxstack  12
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> V_7,
             int32 V_8,
             int32 V_9,
             int32 V_10,
             class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> V_11,
             int32 V_12,
             int32 V_13,
             int32 V_14,
             class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> V_15,
             int32 V_16,
             int32 V_17,
             int32 V_18,
             class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> V_19,
             int32 V_20,
             int32 V_21,
             int32 V_22,
             class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> V_23,
             int32 V_24,
             int32 V_25,
             int32 V_26)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_0006:  ldarg.3
    IL_0007:  ldarg.s    y
    IL_0009:  ldarg.s    z
    IL_000b:  callvirt   instance int32 Game.TerrainData::CalculateCellIndex(int32,
                                                                             int32,
                                                                             int32)
    IL_0010:  stloc.0
    IL_0011:  ldarg.1
    IL_0012:  ldfld      int32 Game.Block::BlockIndex
    IL_0017:  stloc.1
    IL_0018:  ldarg.0
    IL_0019:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_001e:  ldarg.3
    IL_001f:  ldarg.s    y
    IL_0021:  ldarg.s    z
    IL_0023:  ldc.i4.1
    IL_0024:  add
    IL_0025:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_002a:  stloc.2
    IL_002b:  ldloc.2
    IL_002c:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0031:  ldloc.1
    IL_0032:  beq        IL_017f

    IL_0037:  ldarg.1
    IL_0038:  ldc.i4.0
    IL_0039:  ldarg.2
    IL_003a:  ldloc.2
    IL_003b:  callvirt   instance bool Game.Block::ShouldGenerateFace(int32,
                                                                      int32,
                                                                      int32)
    IL_0040:  brfalse    IL_017f

    IL_0045:  ldarg.s    subsetsByFace
    IL_0047:  ldc.i4.0
    IL_0048:  ldelem.ref
    IL_0049:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_004e:  stloc.3
    IL_004f:  ldarg.s    subsetsByFace
    IL_0051:  ldc.i4.0
    IL_0052:  ldelem.ref
    IL_0053:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_0058:  ldarg.1
    IL_0059:  ldc.i4.0
    IL_005a:  ldarg.2
    IL_005b:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_0060:  stloc.s    V_4
    IL_0062:  ldloc.3
    IL_0063:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_0068:  stloc.s    V_5
    IL_006a:  ldloc.3
    IL_006b:  dup
    IL_006c:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_0071:  ldc.i4.4
    IL_0072:  add
    IL_0073:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
    IL_0078:  ldarg.0
    IL_0079:  ldarg.3
    IL_007a:  ldarg.s    y
    IL_007c:  ldarg.s    z
    IL_007e:  ldc.i4.1
    IL_007f:  add
    IL_0080:  ldc.r4     1.
    IL_0085:  ldc.i4.0
    IL_0086:  ldloc.s    V_4
    IL_0088:  ldarg.s    sideColor
    IL_008a:  ldloc.3
    IL_008b:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0090:  ldloc.s    V_5
    IL_0092:  ldelema    Game.TerrainVertex
    IL_0097:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace0(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_009c:  ldarg.0
    IL_009d:  ldarg.3
    IL_009e:  ldc.i4.1
    IL_009f:  add
    IL_00a0:  ldarg.s    y
    IL_00a2:  ldarg.s    z
    IL_00a4:  ldc.i4.1
    IL_00a5:  add
    IL_00a6:  ldc.r4     1.
    IL_00ab:  ldc.i4.1
    IL_00ac:  ldloc.s    V_4
    IL_00ae:  ldarg.s    sideColor
    IL_00b0:  ldloc.3
    IL_00b1:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_00b6:  ldloc.s    V_5
    IL_00b8:  ldc.i4.1
    IL_00b9:  add
    IL_00ba:  ldelema    Game.TerrainVertex
    IL_00bf:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace0(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_00c4:  ldarg.0
    IL_00c5:  ldarg.3
    IL_00c6:  ldc.i4.1
    IL_00c7:  add
    IL_00c8:  ldarg.s    y
    IL_00ca:  ldc.i4.1
    IL_00cb:  add
    IL_00cc:  ldarg.s    z
    IL_00ce:  ldc.i4.1
    IL_00cf:  add
    IL_00d0:  ldarg.s    height22
    IL_00d2:  ldc.i4.2
    IL_00d3:  ldloc.s    V_4
    IL_00d5:  ldarg.s    sideColor
    IL_00d7:  ldloc.3
    IL_00d8:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_00dd:  ldloc.s    V_5
    IL_00df:  ldc.i4.2
    IL_00e0:  add
    IL_00e1:  ldelema    Game.TerrainVertex
    IL_00e6:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace0(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_00eb:  ldarg.0
    IL_00ec:  ldarg.3
    IL_00ed:  ldarg.s    y
    IL_00ef:  ldc.i4.1
    IL_00f0:  add
    IL_00f1:  ldarg.s    z
    IL_00f3:  ldc.i4.1
    IL_00f4:  add
    IL_00f5:  ldarg.s    height12
    IL_00f7:  ldc.i4.3
    IL_00f8:  ldloc.s    V_4
    IL_00fa:  ldarg.s    sideColor
    IL_00fc:  ldloc.3
    IL_00fd:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0102:  ldloc.s    V_5
    IL_0104:  ldc.i4.3
    IL_0105:  add
    IL_0106:  ldelema    Game.TerrainVertex
    IL_010b:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace0(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_0110:  dup
    IL_0111:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_0116:  stloc.s    V_6
    IL_0118:  dup
    IL_0119:  dup
    IL_011a:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_011f:  ldc.i4.6
    IL_0120:  add
    IL_0121:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::set_Count(int32)
    IL_0126:  dup
    IL_0127:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_012c:  ldloc.s    V_6
    IL_012e:  ldloc.s    V_5
    IL_0130:  conv.u2
    IL_0131:  stelem.i2
    IL_0132:  dup
    IL_0133:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0138:  ldloc.s    V_6
    IL_013a:  ldc.i4.1
    IL_013b:  add
    IL_013c:  ldloc.s    V_5
    IL_013e:  ldc.i4.2
    IL_013f:  add
    IL_0140:  conv.u2
    IL_0141:  stelem.i2
    IL_0142:  dup
    IL_0143:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0148:  ldloc.s    V_6
    IL_014a:  ldc.i4.2
    IL_014b:  add
    IL_014c:  ldloc.s    V_5
    IL_014e:  ldc.i4.1
    IL_014f:  add
    IL_0150:  conv.u2
    IL_0151:  stelem.i2
    IL_0152:  dup
    IL_0153:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0158:  ldloc.s    V_6
    IL_015a:  ldc.i4.3
    IL_015b:  add
    IL_015c:  ldloc.s    V_5
    IL_015e:  ldc.i4.2
    IL_015f:  add
    IL_0160:  conv.u2
    IL_0161:  stelem.i2
    IL_0162:  dup
    IL_0163:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0168:  ldloc.s    V_6
    IL_016a:  ldc.i4.4
    IL_016b:  add
    IL_016c:  ldloc.s    V_5
    IL_016e:  conv.u2
    IL_016f:  stelem.i2
    IL_0170:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0175:  ldloc.s    V_6
    IL_0177:  ldc.i4.5
    IL_0178:  add
    IL_0179:  ldloc.s    V_5
    IL_017b:  ldc.i4.3
    IL_017c:  add
    IL_017d:  conv.u2
    IL_017e:  stelem.i2
    IL_017f:  ldarg.0
    IL_0180:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_0185:  ldarg.3
    IL_0186:  ldc.i4.1
    IL_0187:  add
    IL_0188:  ldarg.s    y
    IL_018a:  ldarg.s    z
    IL_018c:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_0191:  stloc.2
    IL_0192:  ldloc.2
    IL_0193:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0198:  ldloc.1
    IL_0199:  beq        IL_02ed

    IL_019e:  ldarg.1
    IL_019f:  ldc.i4.1
    IL_01a0:  ldarg.2
    IL_01a1:  ldloc.2
    IL_01a2:  callvirt   instance bool Game.Block::ShouldGenerateFace(int32,
                                                                      int32,
                                                                      int32)
    IL_01a7:  brfalse    IL_02ed

    IL_01ac:  ldarg.s    subsetsByFace
    IL_01ae:  ldc.i4.1
    IL_01af:  ldelem.ref
    IL_01b0:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_01b5:  stloc.s    V_7
    IL_01b7:  ldarg.s    subsetsByFace
    IL_01b9:  ldc.i4.1
    IL_01ba:  ldelem.ref
    IL_01bb:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_01c0:  ldarg.1
    IL_01c1:  ldc.i4.1
    IL_01c2:  ldarg.2
    IL_01c3:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_01c8:  stloc.s    V_8
    IL_01ca:  ldloc.s    V_7
    IL_01cc:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_01d1:  stloc.s    V_9
    IL_01d3:  ldloc.s    V_7
    IL_01d5:  dup
    IL_01d6:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_01db:  ldc.i4.4
    IL_01dc:  add
    IL_01dd:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
    IL_01e2:  ldarg.0
    IL_01e3:  ldarg.3
    IL_01e4:  ldc.i4.1
    IL_01e5:  add
    IL_01e6:  ldarg.s    y
    IL_01e8:  ldarg.s    z
    IL_01ea:  ldc.r4     1.
    IL_01ef:  ldc.i4.1
    IL_01f0:  ldloc.s    V_8
    IL_01f2:  ldarg.s    sideColor
    IL_01f4:  ldloc.s    V_7
    IL_01f6:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_01fb:  ldloc.s    V_9
    IL_01fd:  ldelema    Game.TerrainVertex
    IL_0202:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace1(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_0207:  ldarg.0
    IL_0208:  ldarg.3
    IL_0209:  ldc.i4.1
    IL_020a:  add
    IL_020b:  ldarg.s    y
    IL_020d:  ldc.i4.1
    IL_020e:  add
    IL_020f:  ldarg.s    z
    IL_0211:  ldarg.s    height21
    IL_0213:  ldc.i4.2
    IL_0214:  ldloc.s    V_8
    IL_0216:  ldarg.s    sideColor
    IL_0218:  ldloc.s    V_7
    IL_021a:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_021f:  ldloc.s    V_9
    IL_0221:  ldc.i4.1
    IL_0222:  add
    IL_0223:  ldelema    Game.TerrainVertex
    IL_0228:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace1(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_022d:  ldarg.0
    IL_022e:  ldarg.3
    IL_022f:  ldc.i4.1
    IL_0230:  add
    IL_0231:  ldarg.s    y
    IL_0233:  ldc.i4.1
    IL_0234:  add
    IL_0235:  ldarg.s    z
    IL_0237:  ldc.i4.1
    IL_0238:  add
    IL_0239:  ldarg.s    height22
    IL_023b:  ldc.i4.3
    IL_023c:  ldloc.s    V_8
    IL_023e:  ldarg.s    sideColor
    IL_0240:  ldloc.s    V_7
    IL_0242:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0247:  ldloc.s    V_9
    IL_0249:  ldc.i4.2
    IL_024a:  add
    IL_024b:  ldelema    Game.TerrainVertex
    IL_0250:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace1(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_0255:  ldarg.0
    IL_0256:  ldarg.3
    IL_0257:  ldc.i4.1
    IL_0258:  add
    IL_0259:  ldarg.s    y
    IL_025b:  ldarg.s    z
    IL_025d:  ldc.i4.1
    IL_025e:  add
    IL_025f:  ldc.r4     1.
    IL_0264:  ldc.i4.0
    IL_0265:  ldloc.s    V_8
    IL_0267:  ldarg.s    sideColor
    IL_0269:  ldloc.s    V_7
    IL_026b:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0270:  ldloc.s    V_9
    IL_0272:  ldc.i4.3
    IL_0273:  add
    IL_0274:  ldelema    Game.TerrainVertex
    IL_0279:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace1(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_027e:  dup
    IL_027f:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_0284:  stloc.s    V_10
    IL_0286:  dup
    IL_0287:  dup
    IL_0288:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_028d:  ldc.i4.6
    IL_028e:  add
    IL_028f:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::set_Count(int32)
    IL_0294:  dup
    IL_0295:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_029a:  ldloc.s    V_10
    IL_029c:  ldloc.s    V_9
    IL_029e:  conv.u2
    IL_029f:  stelem.i2
    IL_02a0:  dup
    IL_02a1:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_02a6:  ldloc.s    V_10
    IL_02a8:  ldc.i4.1
    IL_02a9:  add
    IL_02aa:  ldloc.s    V_9
    IL_02ac:  ldc.i4.2
    IL_02ad:  add
    IL_02ae:  conv.u2
    IL_02af:  stelem.i2
    IL_02b0:  dup
    IL_02b1:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_02b6:  ldloc.s    V_10
    IL_02b8:  ldc.i4.2
    IL_02b9:  add
    IL_02ba:  ldloc.s    V_9
    IL_02bc:  ldc.i4.1
    IL_02bd:  add
    IL_02be:  conv.u2
    IL_02bf:  stelem.i2
    IL_02c0:  dup
    IL_02c1:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_02c6:  ldloc.s    V_10
    IL_02c8:  ldc.i4.3
    IL_02c9:  add
    IL_02ca:  ldloc.s    V_9
    IL_02cc:  ldc.i4.2
    IL_02cd:  add
    IL_02ce:  conv.u2
    IL_02cf:  stelem.i2
    IL_02d0:  dup
    IL_02d1:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_02d6:  ldloc.s    V_10
    IL_02d8:  ldc.i4.4
    IL_02d9:  add
    IL_02da:  ldloc.s    V_9
    IL_02dc:  conv.u2
    IL_02dd:  stelem.i2
    IL_02de:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_02e3:  ldloc.s    V_10
    IL_02e5:  ldc.i4.5
    IL_02e6:  add
    IL_02e7:  ldloc.s    V_9
    IL_02e9:  ldc.i4.3
    IL_02ea:  add
    IL_02eb:  conv.u2
    IL_02ec:  stelem.i2
    IL_02ed:  ldarg.0
    IL_02ee:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_02f3:  ldarg.3
    IL_02f4:  ldarg.s    y
    IL_02f6:  ldarg.s    z
    IL_02f8:  ldc.i4.1
    IL_02f9:  sub
    IL_02fa:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_02ff:  stloc.2
    IL_0300:  ldloc.2
    IL_0301:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0306:  ldloc.1
    IL_0307:  beq        IL_0453

    IL_030c:  ldarg.1
    IL_030d:  ldc.i4.2
    IL_030e:  ldarg.2
    IL_030f:  ldloc.2
    IL_0310:  callvirt   instance bool Game.Block::ShouldGenerateFace(int32,
                                                                      int32,
                                                                      int32)
    IL_0315:  brfalse    IL_0453

    IL_031a:  ldarg.s    subsetsByFace
    IL_031c:  ldc.i4.2
    IL_031d:  ldelem.ref
    IL_031e:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_0323:  stloc.s    V_11
    IL_0325:  ldarg.s    subsetsByFace
    IL_0327:  ldc.i4.2
    IL_0328:  ldelem.ref
    IL_0329:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_032e:  ldarg.1
    IL_032f:  ldc.i4.2
    IL_0330:  ldarg.2
    IL_0331:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_0336:  stloc.s    V_12
    IL_0338:  ldloc.s    V_11
    IL_033a:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_033f:  stloc.s    V_13
    IL_0341:  ldloc.s    V_11
    IL_0343:  dup
    IL_0344:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_0349:  ldc.i4.4
    IL_034a:  add
    IL_034b:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
    IL_0350:  ldarg.0
    IL_0351:  ldarg.3
    IL_0352:  ldarg.s    y
    IL_0354:  ldarg.s    z
    IL_0356:  ldc.r4     1.
    IL_035b:  ldc.i4.1
    IL_035c:  ldloc.s    V_12
    IL_035e:  ldarg.s    sideColor
    IL_0360:  ldloc.s    V_11
    IL_0362:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0367:  ldloc.s    V_13
    IL_0369:  ldelema    Game.TerrainVertex
    IL_036e:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace2(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_0373:  ldarg.0
    IL_0374:  ldarg.3
    IL_0375:  ldc.i4.1
    IL_0376:  add
    IL_0377:  ldarg.s    y
    IL_0379:  ldarg.s    z
    IL_037b:  ldc.r4     1.
    IL_0380:  ldc.i4.0
    IL_0381:  ldloc.s    V_12
    IL_0383:  ldarg.s    sideColor
    IL_0385:  ldloc.s    V_11
    IL_0387:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_038c:  ldloc.s    V_13
    IL_038e:  ldc.i4.1
    IL_038f:  add
    IL_0390:  ldelema    Game.TerrainVertex
    IL_0395:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace2(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_039a:  ldarg.0
    IL_039b:  ldarg.3
    IL_039c:  ldc.i4.1
    IL_039d:  add
    IL_039e:  ldarg.s    y
    IL_03a0:  ldc.i4.1
    IL_03a1:  add
    IL_03a2:  ldarg.s    z
    IL_03a4:  ldarg.s    height21
    IL_03a6:  ldc.i4.3
    IL_03a7:  ldloc.s    V_12
    IL_03a9:  ldarg.s    sideColor
    IL_03ab:  ldloc.s    V_11
    IL_03ad:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_03b2:  ldloc.s    V_13
    IL_03b4:  ldc.i4.2
    IL_03b5:  add
    IL_03b6:  ldelema    Game.TerrainVertex
    IL_03bb:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace2(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_03c0:  ldarg.0
    IL_03c1:  ldarg.3
    IL_03c2:  ldarg.s    y
    IL_03c4:  ldc.i4.1
    IL_03c5:  add
    IL_03c6:  ldarg.s    z
    IL_03c8:  ldarg.s    height11
    IL_03ca:  ldc.i4.2
    IL_03cb:  ldloc.s    V_12
    IL_03cd:  ldarg.s    sideColor
    IL_03cf:  ldloc.s    V_11
    IL_03d1:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_03d6:  ldloc.s    V_13
    IL_03d8:  ldc.i4.3
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
    IL_03e4:  dup
    IL_03e5:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_03ea:  stloc.s    V_14
    IL_03ec:  dup
    IL_03ed:  dup
    IL_03ee:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_03f3:  ldc.i4.6
    IL_03f4:  add
    IL_03f5:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::set_Count(int32)
    IL_03fa:  dup
    IL_03fb:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0400:  ldloc.s    V_14
    IL_0402:  ldloc.s    V_13
    IL_0404:  conv.u2
    IL_0405:  stelem.i2
    IL_0406:  dup
    IL_0407:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_040c:  ldloc.s    V_14
    IL_040e:  ldc.i4.1
    IL_040f:  add
    IL_0410:  ldloc.s    V_13
    IL_0412:  ldc.i4.1
    IL_0413:  add
    IL_0414:  conv.u2
    IL_0415:  stelem.i2
    IL_0416:  dup
    IL_0417:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_041c:  ldloc.s    V_14
    IL_041e:  ldc.i4.2
    IL_041f:  add
    IL_0420:  ldloc.s    V_13
    IL_0422:  ldc.i4.2
    IL_0423:  add
    IL_0424:  conv.u2
    IL_0425:  stelem.i2
    IL_0426:  dup
    IL_0427:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_042c:  ldloc.s    V_14
    IL_042e:  ldc.i4.3
    IL_042f:  add
    IL_0430:  ldloc.s    V_13
    IL_0432:  ldc.i4.2
    IL_0433:  add
    IL_0434:  conv.u2
    IL_0435:  stelem.i2
    IL_0436:  dup
    IL_0437:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_043c:  ldloc.s    V_14
    IL_043e:  ldc.i4.4
    IL_043f:  add
    IL_0440:  ldloc.s    V_13
    IL_0442:  ldc.i4.3
    IL_0443:  add
    IL_0444:  conv.u2
    IL_0445:  stelem.i2
    IL_0446:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_044b:  ldloc.s    V_14
    IL_044d:  ldc.i4.5
    IL_044e:  add
    IL_044f:  ldloc.s    V_13
    IL_0451:  conv.u2
    IL_0452:  stelem.i2
    IL_0453:  ldarg.0
    IL_0454:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_0459:  ldarg.3
    IL_045a:  ldc.i4.1
    IL_045b:  sub
    IL_045c:  ldarg.s    y
    IL_045e:  ldarg.s    z
    IL_0460:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_0465:  stloc.2
    IL_0466:  ldloc.2
    IL_0467:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_046c:  ldloc.1
    IL_046d:  beq        IL_05b9

    IL_0472:  ldarg.1
    IL_0473:  ldc.i4.3
    IL_0474:  ldarg.2
    IL_0475:  ldloc.2
    IL_0476:  callvirt   instance bool Game.Block::ShouldGenerateFace(int32,
                                                                      int32,
                                                                      int32)
    IL_047b:  brfalse    IL_05b9

    IL_0480:  ldarg.s    subsetsByFace
    IL_0482:  ldc.i4.3
    IL_0483:  ldelem.ref
    IL_0484:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_0489:  stloc.s    V_15
    IL_048b:  ldarg.s    subsetsByFace
    IL_048d:  ldc.i4.3
    IL_048e:  ldelem.ref
    IL_048f:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_0494:  ldarg.1
    IL_0495:  ldc.i4.3
    IL_0496:  ldarg.2
    IL_0497:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_049c:  stloc.s    V_16
    IL_049e:  ldloc.s    V_15
    IL_04a0:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_04a5:  stloc.s    V_17
    IL_04a7:  ldloc.s    V_15
    IL_04a9:  dup
    IL_04aa:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_04af:  ldc.i4.4
    IL_04b0:  add
    IL_04b1:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
    IL_04b6:  ldarg.0
    IL_04b7:  ldarg.3
    IL_04b8:  ldarg.s    y
    IL_04ba:  ldarg.s    z
    IL_04bc:  ldc.r4     1.
    IL_04c1:  ldc.i4.0
    IL_04c2:  ldloc.s    V_16
    IL_04c4:  ldarg.s    sideColor
    IL_04c6:  ldloc.s    V_15
    IL_04c8:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_04cd:  ldloc.s    V_17
    IL_04cf:  ldelema    Game.TerrainVertex
    IL_04d4:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace3(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_04d9:  ldarg.0
    IL_04da:  ldarg.3
    IL_04db:  ldarg.s    y
    IL_04dd:  ldc.i4.1
    IL_04de:  add
    IL_04df:  ldarg.s    z
    IL_04e1:  ldarg.s    height11
    IL_04e3:  ldc.i4.3
    IL_04e4:  ldloc.s    V_16
    IL_04e6:  ldarg.s    sideColor
    IL_04e8:  ldloc.s    V_15
    IL_04ea:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_04ef:  ldloc.s    V_17
    IL_04f1:  ldc.i4.1
    IL_04f2:  add
    IL_04f3:  ldelema    Game.TerrainVertex
    IL_04f8:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace3(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_04fd:  ldarg.0
    IL_04fe:  ldarg.3
    IL_04ff:  ldarg.s    y
    IL_0501:  ldc.i4.1
    IL_0502:  add
    IL_0503:  ldarg.s    z
    IL_0505:  ldc.i4.1
    IL_0506:  add
    IL_0507:  ldarg.s    height12
    IL_0509:  ldc.i4.2
    IL_050a:  ldloc.s    V_16
    IL_050c:  ldarg.s    sideColor
    IL_050e:  ldloc.s    V_15
    IL_0510:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0515:  ldloc.s    V_17
    IL_0517:  ldc.i4.2
    IL_0518:  add
    IL_0519:  ldelema    Game.TerrainVertex
    IL_051e:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace3(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_0523:  ldarg.0
    IL_0524:  ldarg.3
    IL_0525:  ldarg.s    y
    IL_0527:  ldarg.s    z
    IL_0529:  ldc.i4.1
    IL_052a:  add
    IL_052b:  ldc.r4     1.
    IL_0530:  ldc.i4.1
    IL_0531:  ldloc.s    V_16
    IL_0533:  ldarg.s    sideColor
    IL_0535:  ldloc.s    V_15
    IL_0537:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_053c:  ldloc.s    V_17
    IL_053e:  ldc.i4.3
    IL_053f:  add
    IL_0540:  ldelema    Game.TerrainVertex
    IL_0545:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace3(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_054a:  dup
    IL_054b:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_0550:  stloc.s    V_18
    IL_0552:  dup
    IL_0553:  dup
    IL_0554:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_0559:  ldc.i4.6
    IL_055a:  add
    IL_055b:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::set_Count(int32)
    IL_0560:  dup
    IL_0561:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0566:  ldloc.s    V_18
    IL_0568:  ldloc.s    V_17
    IL_056a:  conv.u2
    IL_056b:  stelem.i2
    IL_056c:  dup
    IL_056d:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0572:  ldloc.s    V_18
    IL_0574:  ldc.i4.1
    IL_0575:  add
    IL_0576:  ldloc.s    V_17
    IL_0578:  ldc.i4.1
    IL_0579:  add
    IL_057a:  conv.u2
    IL_057b:  stelem.i2
    IL_057c:  dup
    IL_057d:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0582:  ldloc.s    V_18
    IL_0584:  ldc.i4.2
    IL_0585:  add
    IL_0586:  ldloc.s    V_17
    IL_0588:  ldc.i4.2
    IL_0589:  add
    IL_058a:  conv.u2
    IL_058b:  stelem.i2
    IL_058c:  dup
    IL_058d:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0592:  ldloc.s    V_18
    IL_0594:  ldc.i4.3
    IL_0595:  add
    IL_0596:  ldloc.s    V_17
    IL_0598:  ldc.i4.2
    IL_0599:  add
    IL_059a:  conv.u2
    IL_059b:  stelem.i2
    IL_059c:  dup
    IL_059d:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_05a2:  ldloc.s    V_18
    IL_05a4:  ldc.i4.4
    IL_05a5:  add
    IL_05a6:  ldloc.s    V_17
    IL_05a8:  ldc.i4.3
    IL_05a9:  add
    IL_05aa:  conv.u2
    IL_05ab:  stelem.i2
    IL_05ac:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_05b1:  ldloc.s    V_18
    IL_05b3:  ldc.i4.5
    IL_05b4:  add
    IL_05b5:  ldloc.s    V_17
    IL_05b7:  conv.u2
    IL_05b8:  stelem.i2
    IL_05b9:  ldarg.0
    IL_05ba:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_05bf:  ldloc.0
    IL_05c0:  ldc.i4.1
    IL_05c1:  add
    IL_05c2:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32)
    IL_05c7:  stloc.2
    IL_05c8:  ldloc.2
    IL_05c9:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_05ce:  ldloc.1
    IL_05cf:  beq.s      IL_05dc

    IL_05d1:  ldarg.1
    IL_05d2:  ldc.i4.4
    IL_05d3:  ldarg.2
    IL_05d4:  ldloc.2
    IL_05d5:  callvirt   instance bool Game.Block::ShouldGenerateFace(int32,
                                                                      int32,
                                                                      int32)
    IL_05da:  brtrue.s   IL_0603

    IL_05dc:  ldarg.s    height11
    IL_05de:  ldc.r4     1.
    IL_05e3:  blt.s      IL_0603

    IL_05e5:  ldarg.s    height12
    IL_05e7:  ldc.r4     1.
    IL_05ec:  blt.s      IL_0603

    IL_05ee:  ldarg.s    height21
    IL_05f0:  ldc.r4     1.
    IL_05f5:  blt.s      IL_0603

    IL_05f7:  ldarg.s    height22
    IL_05f9:  ldc.r4     1.
    IL_05fe:  bge.un     IL_073e

    IL_0603:  ldarg.s    subsetsByFace
    IL_0605:  ldc.i4.4
    IL_0606:  ldelem.ref
    IL_0607:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_060c:  stloc.s    V_19
    IL_060e:  ldarg.s    subsetsByFace
    IL_0610:  ldc.i4.4
    IL_0611:  ldelem.ref
    IL_0612:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_0617:  ldarg.1
    IL_0618:  ldc.i4.4
    IL_0619:  ldarg.2
    IL_061a:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_061f:  stloc.s    V_20
    IL_0621:  ldloc.s    V_19
    IL_0623:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_0628:  stloc.s    V_21
    IL_062a:  ldloc.s    V_19
    IL_062c:  dup
    IL_062d:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_0632:  ldc.i4.4
    IL_0633:  add
    IL_0634:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
    IL_0639:  ldarg.0
    IL_063a:  ldarg.3
    IL_063b:  ldarg.s    y
    IL_063d:  ldc.i4.1
    IL_063e:  add
    IL_063f:  ldarg.s    z
    IL_0641:  ldarg.s    height11
    IL_0643:  ldc.i4.0
    IL_0644:  ldloc.s    V_20
    IL_0646:  ldarg.s    topColor11
    IL_0648:  ldloc.s    V_19
    IL_064a:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_064f:  ldloc.s    V_21
    IL_0651:  ldelema    Game.TerrainVertex
    IL_0656:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace4(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_065b:  ldarg.0
    IL_065c:  ldarg.3
    IL_065d:  ldc.i4.1
    IL_065e:  add
    IL_065f:  ldarg.s    y
    IL_0661:  ldc.i4.1
    IL_0662:  add
    IL_0663:  ldarg.s    z
    IL_0665:  ldarg.s    height21
    IL_0667:  ldc.i4.1
    IL_0668:  ldloc.s    V_20
    IL_066a:  ldarg.s    topColor21
    IL_066c:  ldloc.s    V_19
    IL_066e:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0673:  ldloc.s    V_21
    IL_0675:  ldc.i4.1
    IL_0676:  add
    IL_0677:  ldelema    Game.TerrainVertex
    IL_067c:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace4(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_0681:  ldarg.0
    IL_0682:  ldarg.3
    IL_0683:  ldc.i4.1
    IL_0684:  add
    IL_0685:  ldarg.s    y
    IL_0687:  ldc.i4.1
    IL_0688:  add
    IL_0689:  ldarg.s    z
    IL_068b:  ldc.i4.1
    IL_068c:  add
    IL_068d:  ldarg.s    height22
    IL_068f:  ldc.i4.2
    IL_0690:  ldloc.s    V_20
    IL_0692:  ldarg.s    topColor22
    IL_0694:  ldloc.s    V_19
    IL_0696:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_069b:  ldloc.s    V_21
    IL_069d:  ldc.i4.2
    IL_069e:  add
    IL_069f:  ldelema    Game.TerrainVertex
    IL_06a4:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace4(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_06a9:  ldarg.0
    IL_06aa:  ldarg.3
    IL_06ab:  ldarg.s    y
    IL_06ad:  ldc.i4.1
    IL_06ae:  add
    IL_06af:  ldarg.s    z
    IL_06b1:  ldc.i4.1
    IL_06b2:  add
    IL_06b3:  ldarg.s    height12
    IL_06b5:  ldc.i4.3
    IL_06b6:  ldloc.s    V_20
    IL_06b8:  ldarg.s    topColor12
    IL_06ba:  ldloc.s    V_19
    IL_06bc:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_06c1:  ldloc.s    V_21
    IL_06c3:  ldc.i4.3
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
    IL_06cf:  dup
    IL_06d0:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_06d5:  stloc.s    V_22
    IL_06d7:  dup
    IL_06d8:  dup
    IL_06d9:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_06de:  ldc.i4.6
    IL_06df:  add
    IL_06e0:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::set_Count(int32)
    IL_06e5:  dup
    IL_06e6:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_06eb:  ldloc.s    V_22
    IL_06ed:  ldloc.s    V_21
    IL_06ef:  conv.u2
    IL_06f0:  stelem.i2
    IL_06f1:  dup
    IL_06f2:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_06f7:  ldloc.s    V_22
    IL_06f9:  ldc.i4.1
    IL_06fa:  add
    IL_06fb:  ldloc.s    V_21
    IL_06fd:  ldc.i4.1
    IL_06fe:  add
    IL_06ff:  conv.u2
    IL_0700:  stelem.i2
    IL_0701:  dup
    IL_0702:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0707:  ldloc.s    V_22
    IL_0709:  ldc.i4.2
    IL_070a:  add
    IL_070b:  ldloc.s    V_21
    IL_070d:  ldc.i4.2
    IL_070e:  add
    IL_070f:  conv.u2
    IL_0710:  stelem.i2
    IL_0711:  dup
    IL_0712:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0717:  ldloc.s    V_22
    IL_0719:  ldc.i4.3
    IL_071a:  add
    IL_071b:  ldloc.s    V_21
    IL_071d:  ldc.i4.2
    IL_071e:  add
    IL_071f:  conv.u2
    IL_0720:  stelem.i2
    IL_0721:  dup
    IL_0722:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0727:  ldloc.s    V_22
    IL_0729:  ldc.i4.4
    IL_072a:  add
    IL_072b:  ldloc.s    V_21
    IL_072d:  ldc.i4.3
    IL_072e:  add
    IL_072f:  conv.u2
    IL_0730:  stelem.i2
    IL_0731:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0736:  ldloc.s    V_22
    IL_0738:  ldc.i4.5
    IL_0739:  add
    IL_073a:  ldloc.s    V_21
    IL_073c:  conv.u2
    IL_073d:  stelem.i2
    IL_073e:  ldarg.0
    IL_073f:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_0744:  ldloc.0
    IL_0745:  ldc.i4.1
    IL_0746:  sub
    IL_0747:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32)
    IL_074c:  stloc.2
    IL_074d:  ldloc.2
    IL_074e:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0753:  ldloc.1
    IL_0754:  beq        IL_08a6

    IL_0759:  ldarg.1
    IL_075a:  ldc.i4.5
    IL_075b:  ldarg.2
    IL_075c:  ldloc.2
    IL_075d:  callvirt   instance bool Game.Block::ShouldGenerateFace(int32,
                                                                      int32,
                                                                      int32)
    IL_0762:  brfalse    IL_08a6

    IL_0767:  ldarg.s    subsetsByFace
    IL_0769:  ldc.i4.5
    IL_076a:  ldelem.ref
    IL_076b:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_0770:  stloc.s    V_23
    IL_0772:  ldarg.s    subsetsByFace
    IL_0774:  ldc.i4.5
    IL_0775:  ldelem.ref
    IL_0776:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_077b:  ldarg.1
    IL_077c:  ldc.i4.5
    IL_077d:  ldarg.2
    IL_077e:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_0783:  stloc.s    V_24
    IL_0785:  ldloc.s    V_23
    IL_0787:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_078c:  stloc.s    V_25
    IL_078e:  ldloc.s    V_23
    IL_0790:  dup
    IL_0791:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_0796:  ldc.i4.4
    IL_0797:  add
    IL_0798:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
    IL_079d:  ldarg.0
    IL_079e:  ldarg.3
    IL_079f:  ldarg.s    y
    IL_07a1:  ldarg.s    z
    IL_07a3:  ldc.r4     1.
    IL_07a8:  ldc.i4.0
    IL_07a9:  ldloc.s    V_24
    IL_07ab:  ldarg.s    sideColor
    IL_07ad:  ldloc.s    V_23
    IL_07af:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_07b4:  ldloc.s    V_25
    IL_07b6:  ldelema    Game.TerrainVertex
    IL_07bb:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace5(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_07c0:  ldarg.0
    IL_07c1:  ldarg.3
    IL_07c2:  ldc.i4.1
    IL_07c3:  add
    IL_07c4:  ldarg.s    y
    IL_07c6:  ldarg.s    z
    IL_07c8:  ldc.r4     1.
    IL_07cd:  ldc.i4.1
    IL_07ce:  ldloc.s    V_24
    IL_07d0:  ldarg.s    sideColor
    IL_07d2:  ldloc.s    V_23
    IL_07d4:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_07d9:  ldloc.s    V_25
    IL_07db:  ldc.i4.1
    IL_07dc:  add
    IL_07dd:  ldelema    Game.TerrainVertex
    IL_07e2:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace5(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_07e7:  ldarg.0
    IL_07e8:  ldarg.3
    IL_07e9:  ldc.i4.1
    IL_07ea:  add
    IL_07eb:  ldarg.s    y
    IL_07ed:  ldarg.s    z
    IL_07ef:  ldc.i4.1
    IL_07f0:  add
    IL_07f1:  ldc.r4     1.
    IL_07f6:  ldc.i4.2
    IL_07f7:  ldloc.s    V_24
    IL_07f9:  ldarg.s    sideColor
    IL_07fb:  ldloc.s    V_23
    IL_07fd:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0802:  ldloc.s    V_25
    IL_0804:  ldc.i4.2
    IL_0805:  add
    IL_0806:  ldelema    Game.TerrainVertex
    IL_080b:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace5(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_0810:  ldarg.0
    IL_0811:  ldarg.3
    IL_0812:  ldarg.s    y
    IL_0814:  ldarg.s    z
    IL_0816:  ldc.i4.1
    IL_0817:  add
    IL_0818:  ldc.r4     1.
    IL_081d:  ldc.i4.3
    IL_081e:  ldloc.s    V_24
    IL_0820:  ldarg.s    sideColor
    IL_0822:  ldloc.s    V_23
    IL_0824:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0829:  ldloc.s    V_25
    IL_082b:  ldc.i4.3
    IL_082c:  add
    IL_082d:  ldelema    Game.TerrainVertex
    IL_0832:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace5(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_0837:  dup
    IL_0838:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_083d:  stloc.s    V_26
    IL_083f:  dup
    IL_0840:  dup
    IL_0841:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_0846:  ldc.i4.6
    IL_0847:  add
    IL_0848:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::set_Count(int32)
    IL_084d:  dup
    IL_084e:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0853:  ldloc.s    V_26
    IL_0855:  ldloc.s    V_25
    IL_0857:  conv.u2
    IL_0858:  stelem.i2
    IL_0859:  dup
    IL_085a:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_085f:  ldloc.s    V_26
    IL_0861:  ldc.i4.1
    IL_0862:  add
    IL_0863:  ldloc.s    V_25
    IL_0865:  ldc.i4.2
    IL_0866:  add
    IL_0867:  conv.u2
    IL_0868:  stelem.i2
    IL_0869:  dup
    IL_086a:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_086f:  ldloc.s    V_26
    IL_0871:  ldc.i4.2
    IL_0872:  add
    IL_0873:  ldloc.s    V_25
    IL_0875:  ldc.i4.1
    IL_0876:  add
    IL_0877:  conv.u2
    IL_0878:  stelem.i2
    IL_0879:  dup
    IL_087a:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_087f:  ldloc.s    V_26
    IL_0881:  ldc.i4.3
    IL_0882:  add
    IL_0883:  ldloc.s    V_25
    IL_0885:  ldc.i4.2
    IL_0886:  add
    IL_0887:  conv.u2
    IL_0888:  stelem.i2
    IL_0889:  dup
    IL_088a:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_088f:  ldloc.s    V_26
    IL_0891:  ldc.i4.4
    IL_0892:  add
    IL_0893:  ldloc.s    V_25
    IL_0895:  conv.u2
    IL_0896:  stelem.i2
    IL_0897:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_089c:  ldloc.s    V_26
    IL_089e:  ldc.i4.5
    IL_089f:  add
    IL_08a0:  ldloc.s    V_25
    IL_08a2:  ldc.i4.3
    IL_08a3:  add
    IL_08a4:  conv.u2
    IL_08a5:  stelem.i2
    IL_08a6:  ret
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
    // 代码大小       2278 (0x8e6)
    .maxstack  12
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> V_7,
             int32 V_8,
             int32 V_9,
             int32 V_10,
             class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> V_11,
             int32 V_12,
             int32 V_13,
             int32 V_14,
             class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> V_15,
             int32 V_16,
             int32 V_17,
             int32 V_18,
             class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> V_19,
             int32 V_20,
             int32 V_21,
             int32 V_22,
             class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> V_23,
             int32 V_24,
             int32 V_25,
             int32 V_26)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_0006:  ldarg.3
    IL_0007:  ldarg.s    y
    IL_0009:  ldarg.s    z
    IL_000b:  callvirt   instance int32 Game.TerrainData::CalculateCellIndex(int32,
                                                                             int32,
                                                                             int32)
    IL_0010:  stloc.0
    IL_0011:  ldarg.1
    IL_0012:  ldfld      int32 Game.Block::BlockIndex
    IL_0017:  stloc.1
    IL_0018:  ldarg.0
    IL_0019:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_001e:  ldarg.3
    IL_001f:  ldarg.s    y
    IL_0021:  ldarg.s    z
    IL_0023:  ldc.i4.1
    IL_0024:  add
    IL_0025:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_002a:  stloc.2
    IL_002b:  ldloc.2
    IL_002c:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0031:  ldloc.1
    IL_0032:  beq        IL_018f

    IL_0037:  ldarg.1
    IL_0038:  ldc.i4.0
    IL_0039:  ldarg.2
    IL_003a:  ldloc.2
    IL_003b:  callvirt   instance bool Game.Block::ShouldGenerateFace(int32,
                                                                      int32,
                                                                      int32)
    IL_0040:  brfalse    IL_018f

    IL_0045:  ldarg.s    subsetsByFace
    IL_0047:  ldc.i4.0
    IL_0048:  ldelem.ref
    IL_0049:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_004e:  stloc.3
    IL_004f:  ldarg.s    subsetsByFace
    IL_0051:  ldc.i4.0
    IL_0052:  ldelem.ref
    IL_0053:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_0058:  ldarg.1
    IL_0059:  ldc.i4.0
    IL_005a:  ldarg.2
    IL_005b:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_0060:  stloc.s    V_4
    IL_0062:  ldloc.3
    IL_0063:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_0068:  stloc.s    V_5
    IL_006a:  ldloc.3
    IL_006b:  dup
    IL_006c:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_0071:  ldc.i4.4
    IL_0072:  add
    IL_0073:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
    IL_0078:  ldarg.0
    IL_0079:  ldarg.3
    IL_007a:  ldarg.s    y
    IL_007c:  ldarg.s    z
    IL_007e:  ldc.i4.1
    IL_007f:  add
    IL_0080:  ldc.r4     1.
    IL_0085:  ldarg.s    rotationZ
    IL_0087:  ldloc.s    V_4
    IL_0089:  ldarg.s    color
    IL_008b:  ldloc.3
    IL_008c:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0091:  ldloc.s    V_5
    IL_0093:  ldelema    Game.TerrainVertex
    IL_0098:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace0(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_009d:  ldarg.0
    IL_009e:  ldarg.3
    IL_009f:  ldc.i4.1
    IL_00a0:  add
    IL_00a1:  ldarg.s    y
    IL_00a3:  ldarg.s    z
    IL_00a5:  ldc.i4.1
    IL_00a6:  add
    IL_00a7:  ldc.r4     1.
    IL_00ac:  ldc.i4.1
    IL_00ad:  ldarg.s    rotationZ
    IL_00af:  add
    IL_00b0:  ldloc.s    V_4
    IL_00b2:  ldarg.s    color
    IL_00b4:  ldloc.3
    IL_00b5:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_00ba:  ldloc.s    V_5
    IL_00bc:  ldc.i4.1
    IL_00bd:  add
    IL_00be:  ldelema    Game.TerrainVertex
    IL_00c3:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace0(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_00c8:  ldarg.0
    IL_00c9:  ldarg.3
    IL_00ca:  ldc.i4.1
    IL_00cb:  add
    IL_00cc:  ldarg.s    y
    IL_00ce:  ldc.i4.1
    IL_00cf:  add
    IL_00d0:  ldarg.s    z
    IL_00d2:  ldc.i4.1
    IL_00d3:  add
    IL_00d4:  ldc.r4     1.
    IL_00d9:  ldc.i4.2
    IL_00da:  ldarg.s    rotationZ
    IL_00dc:  add
    IL_00dd:  ldloc.s    V_4
    IL_00df:  ldarg.s    color
    IL_00e1:  ldloc.3
    IL_00e2:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_00e7:  ldloc.s    V_5
    IL_00e9:  ldc.i4.2
    IL_00ea:  add
    IL_00eb:  ldelema    Game.TerrainVertex
    IL_00f0:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace0(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_00f5:  ldarg.0
    IL_00f6:  ldarg.3
    IL_00f7:  ldarg.s    y
    IL_00f9:  ldc.i4.1
    IL_00fa:  add
    IL_00fb:  ldarg.s    z
    IL_00fd:  ldc.i4.1
    IL_00fe:  add
    IL_00ff:  ldc.r4     1.
    IL_0104:  ldc.i4.3
    IL_0105:  ldarg.s    rotationZ
    IL_0107:  add
    IL_0108:  ldloc.s    V_4
    IL_010a:  ldarg.s    color
    IL_010c:  ldloc.3
    IL_010d:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0112:  ldloc.s    V_5
    IL_0114:  ldc.i4.3
    IL_0115:  add
    IL_0116:  ldelema    Game.TerrainVertex
    IL_011b:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace0(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_0120:  dup
    IL_0121:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_0126:  stloc.s    V_6
    IL_0128:  dup
    IL_0129:  dup
    IL_012a:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_012f:  ldc.i4.6
    IL_0130:  add
    IL_0131:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::set_Count(int32)
    IL_0136:  dup
    IL_0137:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_013c:  ldloc.s    V_6
    IL_013e:  ldloc.s    V_5
    IL_0140:  conv.u2
    IL_0141:  stelem.i2
    IL_0142:  dup
    IL_0143:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0148:  ldloc.s    V_6
    IL_014a:  ldc.i4.1
    IL_014b:  add
    IL_014c:  ldloc.s    V_5
    IL_014e:  ldc.i4.2
    IL_014f:  add
    IL_0150:  conv.u2
    IL_0151:  stelem.i2
    IL_0152:  dup
    IL_0153:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0158:  ldloc.s    V_6
    IL_015a:  ldc.i4.2
    IL_015b:  add
    IL_015c:  ldloc.s    V_5
    IL_015e:  ldc.i4.1
    IL_015f:  add
    IL_0160:  conv.u2
    IL_0161:  stelem.i2
    IL_0162:  dup
    IL_0163:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0168:  ldloc.s    V_6
    IL_016a:  ldc.i4.3
    IL_016b:  add
    IL_016c:  ldloc.s    V_5
    IL_016e:  ldc.i4.2
    IL_016f:  add
    IL_0170:  conv.u2
    IL_0171:  stelem.i2
    IL_0172:  dup
    IL_0173:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0178:  ldloc.s    V_6
    IL_017a:  ldc.i4.4
    IL_017b:  add
    IL_017c:  ldloc.s    V_5
    IL_017e:  conv.u2
    IL_017f:  stelem.i2
    IL_0180:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0185:  ldloc.s    V_6
    IL_0187:  ldc.i4.5
    IL_0188:  add
    IL_0189:  ldloc.s    V_5
    IL_018b:  ldc.i4.3
    IL_018c:  add
    IL_018d:  conv.u2
    IL_018e:  stelem.i2
    IL_018f:  ldarg.0
    IL_0190:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_0195:  ldarg.3
    IL_0196:  ldc.i4.1
    IL_0197:  add
    IL_0198:  ldarg.s    y
    IL_019a:  ldarg.s    z
    IL_019c:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_01a1:  stloc.2
    IL_01a2:  ldloc.2
    IL_01a3:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_01a8:  ldloc.1
    IL_01a9:  beq        IL_030d

    IL_01ae:  ldarg.1
    IL_01af:  ldc.i4.1
    IL_01b0:  ldarg.2
    IL_01b1:  ldloc.2
    IL_01b2:  callvirt   instance bool Game.Block::ShouldGenerateFace(int32,
                                                                      int32,
                                                                      int32)
    IL_01b7:  brfalse    IL_030d

    IL_01bc:  ldarg.s    subsetsByFace
    IL_01be:  ldc.i4.1
    IL_01bf:  ldelem.ref
    IL_01c0:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_01c5:  stloc.s    V_7
    IL_01c7:  ldarg.s    subsetsByFace
    IL_01c9:  ldc.i4.1
    IL_01ca:  ldelem.ref
    IL_01cb:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_01d0:  ldarg.1
    IL_01d1:  ldc.i4.1
    IL_01d2:  ldarg.2
    IL_01d3:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_01d8:  stloc.s    V_8
    IL_01da:  ldloc.s    V_7
    IL_01dc:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_01e1:  stloc.s    V_9
    IL_01e3:  ldloc.s    V_7
    IL_01e5:  dup
    IL_01e6:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_01eb:  ldc.i4.4
    IL_01ec:  add
    IL_01ed:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
    IL_01f2:  ldarg.0
    IL_01f3:  ldarg.3
    IL_01f4:  ldc.i4.1
    IL_01f5:  add
    IL_01f6:  ldarg.s    y
    IL_01f8:  ldarg.s    z
    IL_01fa:  ldc.r4     1.
    IL_01ff:  ldc.i4.1
    IL_0200:  ldarg.s    rotationX
    IL_0202:  add
    IL_0203:  ldloc.s    V_8
    IL_0205:  ldarg.s    color
    IL_0207:  ldloc.s    V_7
    IL_0209:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_020e:  ldloc.s    V_9
    IL_0210:  ldelema    Game.TerrainVertex
    IL_0215:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace1(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_021a:  ldarg.0
    IL_021b:  ldarg.3
    IL_021c:  ldc.i4.1
    IL_021d:  add
    IL_021e:  ldarg.s    y
    IL_0220:  ldc.i4.1
    IL_0221:  add
    IL_0222:  ldarg.s    z
    IL_0224:  ldc.r4     1.
    IL_0229:  ldc.i4.2
    IL_022a:  ldarg.s    rotationX
    IL_022c:  add
    IL_022d:  ldloc.s    V_8
    IL_022f:  ldarg.s    color
    IL_0231:  ldloc.s    V_7
    IL_0233:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0238:  ldloc.s    V_9
    IL_023a:  ldc.i4.1
    IL_023b:  add
    IL_023c:  ldelema    Game.TerrainVertex
    IL_0241:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace1(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_0246:  ldarg.0
    IL_0247:  ldarg.3
    IL_0248:  ldc.i4.1
    IL_0249:  add
    IL_024a:  ldarg.s    y
    IL_024c:  ldc.i4.1
    IL_024d:  add
    IL_024e:  ldarg.s    z
    IL_0250:  ldc.i4.1
    IL_0251:  add
    IL_0252:  ldc.r4     1.
    IL_0257:  ldc.i4.3
    IL_0258:  ldarg.s    rotationX
    IL_025a:  add
    IL_025b:  ldloc.s    V_8
    IL_025d:  ldarg.s    color
    IL_025f:  ldloc.s    V_7
    IL_0261:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0266:  ldloc.s    V_9
    IL_0268:  ldc.i4.2
    IL_0269:  add
    IL_026a:  ldelema    Game.TerrainVertex
    IL_026f:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace1(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_0274:  ldarg.0
    IL_0275:  ldarg.3
    IL_0276:  ldc.i4.1
    IL_0277:  add
    IL_0278:  ldarg.s    y
    IL_027a:  ldarg.s    z
    IL_027c:  ldc.i4.1
    IL_027d:  add
    IL_027e:  ldc.r4     1.
    IL_0283:  ldarg.s    rotationX
    IL_0285:  ldloc.s    V_8
    IL_0287:  ldarg.s    color
    IL_0289:  ldloc.s    V_7
    IL_028b:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0290:  ldloc.s    V_9
    IL_0292:  ldc.i4.3
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
    IL_029e:  dup
    IL_029f:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_02a4:  stloc.s    V_10
    IL_02a6:  dup
    IL_02a7:  dup
    IL_02a8:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_02ad:  ldc.i4.6
    IL_02ae:  add
    IL_02af:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::set_Count(int32)
    IL_02b4:  dup
    IL_02b5:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_02ba:  ldloc.s    V_10
    IL_02bc:  ldloc.s    V_9
    IL_02be:  conv.u2
    IL_02bf:  stelem.i2
    IL_02c0:  dup
    IL_02c1:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_02c6:  ldloc.s    V_10
    IL_02c8:  ldc.i4.1
    IL_02c9:  add
    IL_02ca:  ldloc.s    V_9
    IL_02cc:  ldc.i4.2
    IL_02cd:  add
    IL_02ce:  conv.u2
    IL_02cf:  stelem.i2
    IL_02d0:  dup
    IL_02d1:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_02d6:  ldloc.s    V_10
    IL_02d8:  ldc.i4.2
    IL_02d9:  add
    IL_02da:  ldloc.s    V_9
    IL_02dc:  ldc.i4.1
    IL_02dd:  add
    IL_02de:  conv.u2
    IL_02df:  stelem.i2
    IL_02e0:  dup
    IL_02e1:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_02e6:  ldloc.s    V_10
    IL_02e8:  ldc.i4.3
    IL_02e9:  add
    IL_02ea:  ldloc.s    V_9
    IL_02ec:  ldc.i4.2
    IL_02ed:  add
    IL_02ee:  conv.u2
    IL_02ef:  stelem.i2
    IL_02f0:  dup
    IL_02f1:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_02f6:  ldloc.s    V_10
    IL_02f8:  ldc.i4.4
    IL_02f9:  add
    IL_02fa:  ldloc.s    V_9
    IL_02fc:  conv.u2
    IL_02fd:  stelem.i2
    IL_02fe:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0303:  ldloc.s    V_10
    IL_0305:  ldc.i4.5
    IL_0306:  add
    IL_0307:  ldloc.s    V_9
    IL_0309:  ldc.i4.3
    IL_030a:  add
    IL_030b:  conv.u2
    IL_030c:  stelem.i2
    IL_030d:  ldarg.0
    IL_030e:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_0313:  ldarg.3
    IL_0314:  ldarg.s    y
    IL_0316:  ldarg.s    z
    IL_0318:  ldc.i4.1
    IL_0319:  sub
    IL_031a:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_031f:  stloc.2
    IL_0320:  ldloc.2
    IL_0321:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0326:  ldloc.1
    IL_0327:  beq        IL_0483

    IL_032c:  ldarg.1
    IL_032d:  ldc.i4.2
    IL_032e:  ldarg.2
    IL_032f:  ldloc.2
    IL_0330:  callvirt   instance bool Game.Block::ShouldGenerateFace(int32,
                                                                      int32,
                                                                      int32)
    IL_0335:  brfalse    IL_0483

    IL_033a:  ldarg.s    subsetsByFace
    IL_033c:  ldc.i4.2
    IL_033d:  ldelem.ref
    IL_033e:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_0343:  stloc.s    V_11
    IL_0345:  ldarg.s    subsetsByFace
    IL_0347:  ldc.i4.2
    IL_0348:  ldelem.ref
    IL_0349:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_034e:  ldarg.1
    IL_034f:  ldc.i4.2
    IL_0350:  ldarg.2
    IL_0351:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_0356:  stloc.s    V_12
    IL_0358:  ldloc.s    V_11
    IL_035a:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_035f:  stloc.s    V_13
    IL_0361:  ldloc.s    V_11
    IL_0363:  dup
    IL_0364:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_0369:  ldc.i4.4
    IL_036a:  add
    IL_036b:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
    IL_0370:  ldarg.0
    IL_0371:  ldarg.3
    IL_0372:  ldarg.s    y
    IL_0374:  ldarg.s    z
    IL_0376:  ldc.r4     1.
    IL_037b:  ldc.i4.1
    IL_037c:  ldarg.s    rotationZ
    IL_037e:  add
    IL_037f:  ldloc.s    V_12
    IL_0381:  ldarg.s    color
    IL_0383:  ldloc.s    V_11
    IL_0385:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_038a:  ldloc.s    V_13
    IL_038c:  ldelema    Game.TerrainVertex
    IL_0391:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace2(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_0396:  ldarg.0
    IL_0397:  ldarg.3
    IL_0398:  ldc.i4.1
    IL_0399:  add
    IL_039a:  ldarg.s    y
    IL_039c:  ldarg.s    z
    IL_039e:  ldc.r4     1.
    IL_03a3:  ldarg.s    rotationZ
    IL_03a5:  ldloc.s    V_12
    IL_03a7:  ldarg.s    color
    IL_03a9:  ldloc.s    V_11
    IL_03ab:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_03b0:  ldloc.s    V_13
    IL_03b2:  ldc.i4.1
    IL_03b3:  add
    IL_03b4:  ldelema    Game.TerrainVertex
    IL_03b9:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace2(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_03be:  ldarg.0
    IL_03bf:  ldarg.3
    IL_03c0:  ldc.i4.1
    IL_03c1:  add
    IL_03c2:  ldarg.s    y
    IL_03c4:  ldc.i4.1
    IL_03c5:  add
    IL_03c6:  ldarg.s    z
    IL_03c8:  ldc.r4     1.
    IL_03cd:  ldc.i4.3
    IL_03ce:  ldarg.s    rotationZ
    IL_03d0:  add
    IL_03d1:  ldloc.s    V_12
    IL_03d3:  ldarg.s    color
    IL_03d5:  ldloc.s    V_11
    IL_03d7:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_03dc:  ldloc.s    V_13
    IL_03de:  ldc.i4.2
    IL_03df:  add
    IL_03e0:  ldelema    Game.TerrainVertex
    IL_03e5:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace2(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_03ea:  ldarg.0
    IL_03eb:  ldarg.3
    IL_03ec:  ldarg.s    y
    IL_03ee:  ldc.i4.1
    IL_03ef:  add
    IL_03f0:  ldarg.s    z
    IL_03f2:  ldc.r4     1.
    IL_03f7:  ldc.i4.2
    IL_03f8:  ldarg.s    rotationZ
    IL_03fa:  add
    IL_03fb:  ldloc.s    V_12
    IL_03fd:  ldarg.s    color
    IL_03ff:  ldloc.s    V_11
    IL_0401:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0406:  ldloc.s    V_13
    IL_0408:  ldc.i4.3
    IL_0409:  add
    IL_040a:  ldelema    Game.TerrainVertex
    IL_040f:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace2(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_0414:  dup
    IL_0415:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_041a:  stloc.s    V_14
    IL_041c:  dup
    IL_041d:  dup
    IL_041e:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_0423:  ldc.i4.6
    IL_0424:  add
    IL_0425:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::set_Count(int32)
    IL_042a:  dup
    IL_042b:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0430:  ldloc.s    V_14
    IL_0432:  ldloc.s    V_13
    IL_0434:  conv.u2
    IL_0435:  stelem.i2
    IL_0436:  dup
    IL_0437:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_043c:  ldloc.s    V_14
    IL_043e:  ldc.i4.1
    IL_043f:  add
    IL_0440:  ldloc.s    V_13
    IL_0442:  ldc.i4.1
    IL_0443:  add
    IL_0444:  conv.u2
    IL_0445:  stelem.i2
    IL_0446:  dup
    IL_0447:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_044c:  ldloc.s    V_14
    IL_044e:  ldc.i4.2
    IL_044f:  add
    IL_0450:  ldloc.s    V_13
    IL_0452:  ldc.i4.2
    IL_0453:  add
    IL_0454:  conv.u2
    IL_0455:  stelem.i2
    IL_0456:  dup
    IL_0457:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_045c:  ldloc.s    V_14
    IL_045e:  ldc.i4.3
    IL_045f:  add
    IL_0460:  ldloc.s    V_13
    IL_0462:  ldc.i4.2
    IL_0463:  add
    IL_0464:  conv.u2
    IL_0465:  stelem.i2
    IL_0466:  dup
    IL_0467:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_046c:  ldloc.s    V_14
    IL_046e:  ldc.i4.4
    IL_046f:  add
    IL_0470:  ldloc.s    V_13
    IL_0472:  ldc.i4.3
    IL_0473:  add
    IL_0474:  conv.u2
    IL_0475:  stelem.i2
    IL_0476:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_047b:  ldloc.s    V_14
    IL_047d:  ldc.i4.5
    IL_047e:  add
    IL_047f:  ldloc.s    V_13
    IL_0481:  conv.u2
    IL_0482:  stelem.i2
    IL_0483:  ldarg.0
    IL_0484:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_0489:  ldarg.3
    IL_048a:  ldc.i4.1
    IL_048b:  sub
    IL_048c:  ldarg.s    y
    IL_048e:  ldarg.s    z
    IL_0490:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_0495:  stloc.2
    IL_0496:  ldloc.2
    IL_0497:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_049c:  ldloc.1
    IL_049d:  beq        IL_05f9

    IL_04a2:  ldarg.1
    IL_04a3:  ldc.i4.3
    IL_04a4:  ldarg.2
    IL_04a5:  ldloc.2
    IL_04a6:  callvirt   instance bool Game.Block::ShouldGenerateFace(int32,
                                                                      int32,
                                                                      int32)
    IL_04ab:  brfalse    IL_05f9

    IL_04b0:  ldarg.s    subsetsByFace
    IL_04b2:  ldc.i4.3
    IL_04b3:  ldelem.ref
    IL_04b4:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_04b9:  stloc.s    V_15
    IL_04bb:  ldarg.s    subsetsByFace
    IL_04bd:  ldc.i4.3
    IL_04be:  ldelem.ref
    IL_04bf:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_04c4:  ldarg.1
    IL_04c5:  ldc.i4.3
    IL_04c6:  ldarg.2
    IL_04c7:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_04cc:  stloc.s    V_16
    IL_04ce:  ldloc.s    V_15
    IL_04d0:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_04d5:  stloc.s    V_17
    IL_04d7:  ldloc.s    V_15
    IL_04d9:  dup
    IL_04da:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_04df:  ldc.i4.4
    IL_04e0:  add
    IL_04e1:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
    IL_04e6:  ldarg.0
    IL_04e7:  ldarg.3
    IL_04e8:  ldarg.s    y
    IL_04ea:  ldarg.s    z
    IL_04ec:  ldc.r4     1.
    IL_04f1:  ldarg.s    rotationX
    IL_04f3:  ldloc.s    V_16
    IL_04f5:  ldarg.s    color
    IL_04f7:  ldloc.s    V_15
    IL_04f9:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_04fe:  ldloc.s    V_17
    IL_0500:  ldelema    Game.TerrainVertex
    IL_0505:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace3(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_050a:  ldarg.0
    IL_050b:  ldarg.3
    IL_050c:  ldarg.s    y
    IL_050e:  ldc.i4.1
    IL_050f:  add
    IL_0510:  ldarg.s    z
    IL_0512:  ldc.r4     1.
    IL_0517:  ldc.i4.3
    IL_0518:  ldarg.s    rotationX
    IL_051a:  add
    IL_051b:  ldloc.s    V_16
    IL_051d:  ldarg.s    color
    IL_051f:  ldloc.s    V_15
    IL_0521:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0526:  ldloc.s    V_17
    IL_0528:  ldc.i4.1
    IL_0529:  add
    IL_052a:  ldelema    Game.TerrainVertex
    IL_052f:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace3(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_0534:  ldarg.0
    IL_0535:  ldarg.3
    IL_0536:  ldarg.s    y
    IL_0538:  ldc.i4.1
    IL_0539:  add
    IL_053a:  ldarg.s    z
    IL_053c:  ldc.i4.1
    IL_053d:  add
    IL_053e:  ldc.r4     1.
    IL_0543:  ldc.i4.2
    IL_0544:  ldarg.s    rotationX
    IL_0546:  add
    IL_0547:  ldloc.s    V_16
    IL_0549:  ldarg.s    color
    IL_054b:  ldloc.s    V_15
    IL_054d:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0552:  ldloc.s    V_17
    IL_0554:  ldc.i4.2
    IL_0555:  add
    IL_0556:  ldelema    Game.TerrainVertex
    IL_055b:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace3(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_0560:  ldarg.0
    IL_0561:  ldarg.3
    IL_0562:  ldarg.s    y
    IL_0564:  ldarg.s    z
    IL_0566:  ldc.i4.1
    IL_0567:  add
    IL_0568:  ldc.r4     1.
    IL_056d:  ldc.i4.1
    IL_056e:  ldarg.s    rotationX
    IL_0570:  add
    IL_0571:  ldloc.s    V_16
    IL_0573:  ldarg.s    color
    IL_0575:  ldloc.s    V_15
    IL_0577:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_057c:  ldloc.s    V_17
    IL_057e:  ldc.i4.3
    IL_057f:  add
    IL_0580:  ldelema    Game.TerrainVertex
    IL_0585:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace3(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_058a:  dup
    IL_058b:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_0590:  stloc.s    V_18
    IL_0592:  dup
    IL_0593:  dup
    IL_0594:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_0599:  ldc.i4.6
    IL_059a:  add
    IL_059b:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::set_Count(int32)
    IL_05a0:  dup
    IL_05a1:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_05a6:  ldloc.s    V_18
    IL_05a8:  ldloc.s    V_17
    IL_05aa:  conv.u2
    IL_05ab:  stelem.i2
    IL_05ac:  dup
    IL_05ad:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_05b2:  ldloc.s    V_18
    IL_05b4:  ldc.i4.1
    IL_05b5:  add
    IL_05b6:  ldloc.s    V_17
    IL_05b8:  ldc.i4.1
    IL_05b9:  add
    IL_05ba:  conv.u2
    IL_05bb:  stelem.i2
    IL_05bc:  dup
    IL_05bd:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_05c2:  ldloc.s    V_18
    IL_05c4:  ldc.i4.2
    IL_05c5:  add
    IL_05c6:  ldloc.s    V_17
    IL_05c8:  ldc.i4.2
    IL_05c9:  add
    IL_05ca:  conv.u2
    IL_05cb:  stelem.i2
    IL_05cc:  dup
    IL_05cd:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_05d2:  ldloc.s    V_18
    IL_05d4:  ldc.i4.3
    IL_05d5:  add
    IL_05d6:  ldloc.s    V_17
    IL_05d8:  ldc.i4.2
    IL_05d9:  add
    IL_05da:  conv.u2
    IL_05db:  stelem.i2
    IL_05dc:  dup
    IL_05dd:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_05e2:  ldloc.s    V_18
    IL_05e4:  ldc.i4.4
    IL_05e5:  add
    IL_05e6:  ldloc.s    V_17
    IL_05e8:  ldc.i4.3
    IL_05e9:  add
    IL_05ea:  conv.u2
    IL_05eb:  stelem.i2
    IL_05ec:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_05f1:  ldloc.s    V_18
    IL_05f3:  ldc.i4.5
    IL_05f4:  add
    IL_05f5:  ldloc.s    V_17
    IL_05f7:  conv.u2
    IL_05f8:  stelem.i2
    IL_05f9:  ldarg.0
    IL_05fa:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_05ff:  ldloc.0
    IL_0600:  ldc.i4.1
    IL_0601:  add
    IL_0602:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32)
    IL_0607:  stloc.2
    IL_0608:  ldloc.2
    IL_0609:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_060e:  ldloc.1
    IL_060f:  beq        IL_0773

    IL_0614:  ldarg.1
    IL_0615:  ldc.i4.4
    IL_0616:  ldarg.2
    IL_0617:  ldloc.2
    IL_0618:  callvirt   instance bool Game.Block::ShouldGenerateFace(int32,
                                                                      int32,
                                                                      int32)
    IL_061d:  brfalse    IL_0773

    IL_0622:  ldarg.s    subsetsByFace
    IL_0624:  ldc.i4.4
    IL_0625:  ldelem.ref
    IL_0626:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_062b:  stloc.s    V_19
    IL_062d:  ldarg.s    subsetsByFace
    IL_062f:  ldc.i4.4
    IL_0630:  ldelem.ref
    IL_0631:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_0636:  ldarg.1
    IL_0637:  ldc.i4.4
    IL_0638:  ldarg.2
    IL_0639:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_063e:  stloc.s    V_20
    IL_0640:  ldloc.s    V_19
    IL_0642:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_0647:  stloc.s    V_21
    IL_0649:  ldloc.s    V_19
    IL_064b:  dup
    IL_064c:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_0651:  ldc.i4.4
    IL_0652:  add
    IL_0653:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
    IL_0658:  ldarg.0
    IL_0659:  ldarg.3
    IL_065a:  ldarg.s    y
    IL_065c:  ldc.i4.1
    IL_065d:  add
    IL_065e:  ldarg.s    z
    IL_0660:  ldc.r4     1.
    IL_0665:  ldarg.s    rotationY
    IL_0667:  ldloc.s    V_20
    IL_0669:  ldarg.s    color
    IL_066b:  ldloc.s    V_19
    IL_066d:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0672:  ldloc.s    V_21
    IL_0674:  ldelema    Game.TerrainVertex
    IL_0679:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace4(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_067e:  ldarg.0
    IL_067f:  ldarg.3
    IL_0680:  ldc.i4.1
    IL_0681:  add
    IL_0682:  ldarg.s    y
    IL_0684:  ldc.i4.1
    IL_0685:  add
    IL_0686:  ldarg.s    z
    IL_0688:  ldc.r4     1.
    IL_068d:  ldc.i4.1
    IL_068e:  ldarg.s    rotationY
    IL_0690:  add
    IL_0691:  ldloc.s    V_20
    IL_0693:  ldarg.s    color
    IL_0695:  ldloc.s    V_19
    IL_0697:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_069c:  ldloc.s    V_21
    IL_069e:  ldc.i4.1
    IL_069f:  add
    IL_06a0:  ldelema    Game.TerrainVertex
    IL_06a5:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace4(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_06aa:  ldarg.0
    IL_06ab:  ldarg.3
    IL_06ac:  ldc.i4.1
    IL_06ad:  add
    IL_06ae:  ldarg.s    y
    IL_06b0:  ldc.i4.1
    IL_06b1:  add
    IL_06b2:  ldarg.s    z
    IL_06b4:  ldc.i4.1
    IL_06b5:  add
    IL_06b6:  ldc.r4     1.
    IL_06bb:  ldc.i4.2
    IL_06bc:  ldarg.s    rotationY
    IL_06be:  add
    IL_06bf:  ldloc.s    V_20
    IL_06c1:  ldarg.s    color
    IL_06c3:  ldloc.s    V_19
    IL_06c5:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_06ca:  ldloc.s    V_21
    IL_06cc:  ldc.i4.2
    IL_06cd:  add
    IL_06ce:  ldelema    Game.TerrainVertex
    IL_06d3:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace4(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_06d8:  ldarg.0
    IL_06d9:  ldarg.3
    IL_06da:  ldarg.s    y
    IL_06dc:  ldc.i4.1
    IL_06dd:  add
    IL_06de:  ldarg.s    z
    IL_06e0:  ldc.i4.1
    IL_06e1:  add
    IL_06e2:  ldc.r4     1.
    IL_06e7:  ldc.i4.3
    IL_06e8:  ldarg.s    rotationY
    IL_06ea:  add
    IL_06eb:  ldloc.s    V_20
    IL_06ed:  ldarg.s    color
    IL_06ef:  ldloc.s    V_19
    IL_06f1:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_06f6:  ldloc.s    V_21
    IL_06f8:  ldc.i4.3
    IL_06f9:  add
    IL_06fa:  ldelema    Game.TerrainVertex
    IL_06ff:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace4(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_0704:  dup
    IL_0705:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_070a:  stloc.s    V_22
    IL_070c:  dup
    IL_070d:  dup
    IL_070e:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_0713:  ldc.i4.6
    IL_0714:  add
    IL_0715:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::set_Count(int32)
    IL_071a:  dup
    IL_071b:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0720:  ldloc.s    V_22
    IL_0722:  ldloc.s    V_21
    IL_0724:  conv.u2
    IL_0725:  stelem.i2
    IL_0726:  dup
    IL_0727:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_072c:  ldloc.s    V_22
    IL_072e:  ldc.i4.1
    IL_072f:  add
    IL_0730:  ldloc.s    V_21
    IL_0732:  ldc.i4.1
    IL_0733:  add
    IL_0734:  conv.u2
    IL_0735:  stelem.i2
    IL_0736:  dup
    IL_0737:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_073c:  ldloc.s    V_22
    IL_073e:  ldc.i4.2
    IL_073f:  add
    IL_0740:  ldloc.s    V_21
    IL_0742:  ldc.i4.2
    IL_0743:  add
    IL_0744:  conv.u2
    IL_0745:  stelem.i2
    IL_0746:  dup
    IL_0747:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_074c:  ldloc.s    V_22
    IL_074e:  ldc.i4.3
    IL_074f:  add
    IL_0750:  ldloc.s    V_21
    IL_0752:  ldc.i4.2
    IL_0753:  add
    IL_0754:  conv.u2
    IL_0755:  stelem.i2
    IL_0756:  dup
    IL_0757:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_075c:  ldloc.s    V_22
    IL_075e:  ldc.i4.4
    IL_075f:  add
    IL_0760:  ldloc.s    V_21
    IL_0762:  ldc.i4.3
    IL_0763:  add
    IL_0764:  conv.u2
    IL_0765:  stelem.i2
    IL_0766:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_076b:  ldloc.s    V_22
    IL_076d:  ldc.i4.5
    IL_076e:  add
    IL_076f:  ldloc.s    V_21
    IL_0771:  conv.u2
    IL_0772:  stelem.i2
    IL_0773:  ldarg.0
    IL_0774:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_0779:  ldloc.0
    IL_077a:  ldc.i4.1
    IL_077b:  sub
    IL_077c:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32)
    IL_0781:  stloc.2
    IL_0782:  ldloc.2
    IL_0783:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0788:  ldloc.1
    IL_0789:  beq        IL_08e5

    IL_078e:  ldarg.1
    IL_078f:  ldc.i4.5
    IL_0790:  ldarg.2
    IL_0791:  ldloc.2
    IL_0792:  callvirt   instance bool Game.Block::ShouldGenerateFace(int32,
                                                                      int32,
                                                                      int32)
    IL_0797:  brfalse    IL_08e5

    IL_079c:  ldarg.s    subsetsByFace
    IL_079e:  ldc.i4.5
    IL_079f:  ldelem.ref
    IL_07a0:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_07a5:  stloc.s    V_23
    IL_07a7:  ldarg.s    subsetsByFace
    IL_07a9:  ldc.i4.5
    IL_07aa:  ldelem.ref
    IL_07ab:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_07b0:  ldarg.1
    IL_07b1:  ldc.i4.5
    IL_07b2:  ldarg.2
    IL_07b3:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_07b8:  stloc.s    V_24
    IL_07ba:  ldloc.s    V_23
    IL_07bc:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_07c1:  stloc.s    V_25
    IL_07c3:  ldloc.s    V_23
    IL_07c5:  dup
    IL_07c6:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_07cb:  ldc.i4.4
    IL_07cc:  add
    IL_07cd:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
    IL_07d2:  ldarg.0
    IL_07d3:  ldarg.3
    IL_07d4:  ldarg.s    y
    IL_07d6:  ldarg.s    z
    IL_07d8:  ldc.r4     1.
    IL_07dd:  ldarg.s    rotationY
    IL_07df:  ldloc.s    V_24
    IL_07e1:  ldarg.s    color
    IL_07e3:  ldloc.s    V_23
    IL_07e5:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_07ea:  ldloc.s    V_25
    IL_07ec:  ldelema    Game.TerrainVertex
    IL_07f1:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace5(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_07f6:  ldarg.0
    IL_07f7:  ldarg.3
    IL_07f8:  ldc.i4.1
    IL_07f9:  add
    IL_07fa:  ldarg.s    y
    IL_07fc:  ldarg.s    z
    IL_07fe:  ldc.r4     1.
    IL_0803:  ldc.i4.1
    IL_0804:  ldarg.s    rotationY
    IL_0806:  add
    IL_0807:  ldloc.s    V_24
    IL_0809:  ldarg.s    color
    IL_080b:  ldloc.s    V_23
    IL_080d:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0812:  ldloc.s    V_25
    IL_0814:  ldc.i4.1
    IL_0815:  add
    IL_0816:  ldelema    Game.TerrainVertex
    IL_081b:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace5(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_0820:  ldarg.0
    IL_0821:  ldarg.3
    IL_0822:  ldc.i4.1
    IL_0823:  add
    IL_0824:  ldarg.s    y
    IL_0826:  ldarg.s    z
    IL_0828:  ldc.i4.1
    IL_0829:  add
    IL_082a:  ldc.r4     1.
    IL_082f:  ldc.i4.2
    IL_0830:  ldarg.s    rotationY
    IL_0832:  add
    IL_0833:  ldloc.s    V_24
    IL_0835:  ldarg.s    color
    IL_0837:  ldloc.s    V_23
    IL_0839:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_083e:  ldloc.s    V_25
    IL_0840:  ldc.i4.2
    IL_0841:  add
    IL_0842:  ldelema    Game.TerrainVertex
    IL_0847:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace5(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_084c:  ldarg.0
    IL_084d:  ldarg.3
    IL_084e:  ldarg.s    y
    IL_0850:  ldarg.s    z
    IL_0852:  ldc.i4.1
    IL_0853:  add
    IL_0854:  ldc.r4     1.
    IL_0859:  ldc.i4.3
    IL_085a:  ldarg.s    rotationY
    IL_085c:  add
    IL_085d:  ldloc.s    V_24
    IL_085f:  ldarg.s    color
    IL_0861:  ldloc.s    V_23
    IL_0863:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0868:  ldloc.s    V_25
    IL_086a:  ldc.i4.3
    IL_086b:  add
    IL_086c:  ldelema    Game.TerrainVertex
    IL_0871:  call       instance void Game.BlockGeometryGenerator::SetupCubeVertexFace5(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         int32,
                                                                                         int32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype Game.TerrainVertex&)
    IL_0876:  dup
    IL_0877:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_087c:  stloc.s    V_26
    IL_087e:  dup
    IL_087f:  dup
    IL_0880:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_0885:  ldc.i4.6
    IL_0886:  add
    IL_0887:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::set_Count(int32)
    IL_088c:  dup
    IL_088d:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0892:  ldloc.s    V_26
    IL_0894:  ldloc.s    V_25
    IL_0896:  conv.u2
    IL_0897:  stelem.i2
    IL_0898:  dup
    IL_0899:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_089e:  ldloc.s    V_26
    IL_08a0:  ldc.i4.1
    IL_08a1:  add
    IL_08a2:  ldloc.s    V_25
    IL_08a4:  ldc.i4.2
    IL_08a5:  add
    IL_08a6:  conv.u2
    IL_08a7:  stelem.i2
    IL_08a8:  dup
    IL_08a9:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_08ae:  ldloc.s    V_26
    IL_08b0:  ldc.i4.2
    IL_08b1:  add
    IL_08b2:  ldloc.s    V_25
    IL_08b4:  ldc.i4.1
    IL_08b5:  add
    IL_08b6:  conv.u2
    IL_08b7:  stelem.i2
    IL_08b8:  dup
    IL_08b9:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_08be:  ldloc.s    V_26
    IL_08c0:  ldc.i4.3
    IL_08c1:  add
    IL_08c2:  ldloc.s    V_25
    IL_08c4:  ldc.i4.2
    IL_08c5:  add
    IL_08c6:  conv.u2
    IL_08c7:  stelem.i2
    IL_08c8:  dup
    IL_08c9:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_08ce:  ldloc.s    V_26
    IL_08d0:  ldc.i4.4
    IL_08d1:  add
    IL_08d2:  ldloc.s    V_25
    IL_08d4:  conv.u2
    IL_08d5:  stelem.i2
    IL_08d6:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_08db:  ldloc.s    V_26
    IL_08dd:  ldc.i4.5
    IL_08de:  add
    IL_08df:  ldloc.s    V_25
    IL_08e1:  ldc.i4.3
    IL_08e2:  add
    IL_08e3:  conv.u2
    IL_08e4:  stelem.i2
    IL_08e5:  ret
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
    IL_0018:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_001d:  ldarg.2
    IL_001e:  ldarg.3
    IL_001f:  ldarg.s    z
    IL_0021:  callvirt   instance int32 Game.TerrainData::GetCellLightFast(int32,
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
    // 代码大小       3225 (0xc99)
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
    IL_0010:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0015:  stloc.1
    IL_0016:  ldloc.1
    IL_0017:  ldc.i4     0x85
    IL_001c:  bne.un.s   IL_0046

    IL_001e:  ldarg.1
    IL_001f:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0024:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.WireBlock::GetColor(int32)
    IL_0029:  stloc.s    V_14
    IL_002b:  ldloca.s   V_14
    IL_002d:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0032:  brfalse.s  IL_0046

    IL_0034:  ldsfld     valuetype [Engine]Engine.Color[] Game.PaintBucketBlock::PaintColors
    IL_0039:  ldloca.s   V_14
    IL_003b:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_0040:  ldelem     [Engine]Engine.Color
    IL_0045:  stloc.0
    IL_0046:  ldarg.1
    IL_0047:  call       int32 Game.TerrainData::ExtractLight(int32)
    IL_004c:  stloc.2
    IL_004d:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_0052:  ldloc.2
    IL_0053:  ldelem.r4
    IL_0054:  stloc.3
    IL_0055:  ldarg.2
    IL_0056:  conv.r4
    IL_0057:  ldc.r4     0.5
    IL_005c:  add
    IL_005d:  ldarg.3
    IL_005e:  conv.r4
    IL_005f:  ldc.r4     0.5
    IL_0064:  add
    IL_0065:  ldarg.s    z
    IL_0067:  conv.r4
    IL_0068:  ldc.r4     0.5
    IL_006d:  add
    IL_006e:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0073:  ldc.r4     0.5
    IL_0078:  ldarg.s    mountingFace
    IL_007a:  call       valuetype [Engine]Engine.Vector3 Game.CellFace::FaceToVector3(int32)
    IL_007f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0084:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0089:  stloc.s    V_4
    IL_008b:  ldarg.s    mountingFace
    IL_008d:  call       valuetype [Engine]Engine.Vector3 Game.CellFace::FaceToVector3(int32)
    IL_0092:  stloc.s    V_5
    IL_0094:  ldloca.s   V_6
    IL_0096:  ldc.r4     0.93760002
    IL_009b:  ldc.r4     9.9999997e-005
    IL_00a0:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00a5:  ldloca.s   V_7
    IL_00a7:  ldc.r4     3.125e-002
    IL_00ac:  ldc.r4     5.5078124e-003
    IL_00b1:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00b6:  ldarg.s    mountingFace
    IL_00b8:  call       valuetype [Engine]Engine.Point3 Game.CellFace::FaceToPoint3(int32)
    IL_00bd:  stloc.s    V_8
    IL_00bf:  ldarg.0
    IL_00c0:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_00c5:  ldarg.2
    IL_00c6:  ldloc.s    V_8
    IL_00c8:  ldfld      int32 [Engine]Engine.Point3::X
    IL_00cd:  sub
    IL_00ce:  ldarg.3
    IL_00cf:  ldloc.s    V_8
    IL_00d1:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_00d6:  sub
    IL_00d7:  ldarg.s    z
    IL_00d9:  ldloc.s    V_8
    IL_00db:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_00e0:  sub
    IL_00e1:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_00e6:  stloc.s    V_9
    IL_00e8:  ldloc.s    V_9
    IL_00ea:  ldc.i4.2
    IL_00eb:  beq.s      IL_010a

    IL_00ed:  ldloc.s    V_9
    IL_00ef:  ldc.i4.7
    IL_00f0:  beq.s      IL_010a

    IL_00f2:  ldloc.s    V_9
    IL_00f4:  ldc.i4.8
    IL_00f5:  beq.s      IL_010a

    IL_00f7:  ldloc.s    V_9
    IL_00f9:  ldc.i4.6
    IL_00fa:  beq.s      IL_010a

    IL_00fc:  ldloc.s    V_9
    IL_00fe:  ldc.i4.s   62
    IL_0100:  beq.s      IL_010a

    IL_0102:  ldloc.s    V_9
    IL_0104:  ldc.i4.s   72
    IL_0106:  ceq
    IL_0108:  br.s       IL_010b

    IL_010a:  ldc.i4.1
    IL_010b:  stloc.s    V_10
    IL_010d:  ldarg.s    mountingFace
    IL_010f:  ldc.i4.0
    IL_0110:  call       int32 Game.SubsystemElectricity::GetConnectorFace(int32,
                                                                           valuetype Game.ElectricConnectorDirection)
    IL_0115:  call       valuetype [Engine]Engine.Vector3 Game.CellFace::FaceToVector3(int32)
    IL_011a:  stloc.s    V_11
    IL_011c:  ldarg.s    mountingFace
    IL_011e:  ldc.i4.1
    IL_011f:  call       int32 Game.SubsystemElectricity::GetConnectorFace(int32,
                                                                           valuetype Game.ElectricConnectorDirection)
    IL_0124:  call       valuetype [Engine]Engine.Vector3 Game.CellFace::FaceToVector3(int32)
    IL_0129:  ldarg.s    centerOffset
    IL_012b:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0130:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0135:  ldloc.s    V_11
    IL_0137:  ldarg.s    centerOffset
    IL_0139:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_013e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0143:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0148:  stloc.s    V_12
    IL_014a:  ldc.i4.0
    IL_014b:  stloc.s    V_13
    IL_014d:  ldarg.0
    IL_014e:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ElectricConnectionPath> Game.BlockGeometryGenerator::m_tmpConnectionPaths
    IL_0153:  callvirt   instance void class [Engine]Engine.DynamicArray`1<class Game.ElectricConnectionPath>::Clear()
    IL_0158:  ldarg.0
    IL_0159:  ldfld      class Game.SubsystemElectricity Game.BlockGeometryGenerator::SubsystemElectricity
    IL_015e:  ldarg.2
    IL_015f:  ldarg.3
    IL_0160:  ldarg.s    z
    IL_0162:  ldarg.s    mountingFace
    IL_0164:  ldarg.0
    IL_0165:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ElectricConnectionPath> Game.BlockGeometryGenerator::m_tmpConnectionPaths
    IL_016a:  callvirt   instance void Game.SubsystemElectricity::GetAllConnectedNeighbors(int32,
                                                                                           int32,
                                                                                           int32,
                                                                                           int32,
                                                                                           class [Engine]Engine.DynamicArray`1<class Game.ElectricConnectionPath>)
    IL_016f:  ldarg.0
    IL_0170:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ElectricConnectionPath> Game.BlockGeometryGenerator::m_tmpConnectionPaths
    IL_0175:  callvirt   instance valuetype [Engine]Engine.DynamicArray`1/Enumerator<!0> class [Engine]Engine.DynamicArray`1<class Game.ElectricConnectionPath>::GetEnumerator()
    IL_017a:  stloc.s    V_15
    .try
    {
      IL_017c:  br         IL_0985

      IL_0181:  ldloca.s   V_15
      IL_0183:  call       instance !0 valuetype [Engine]Engine.DynamicArray`1/Enumerator<class Game.ElectricConnectionPath>::get_Current()
      IL_0188:  stloc.s    V_16
      IL_018a:  ldloc.s    V_13
      IL_018c:  ldc.i4.1
      IL_018d:  ldloc.s    V_16
      IL_018f:  ldfld      int32 Game.ElectricConnectionPath::ConnectorFace
      IL_0194:  ldc.i4.s   31
      IL_0196:  and
      IL_0197:  shl
      IL_0198:  and
      IL_0199:  brtrue     IL_0985

      IL_019e:  ldarg.s    mountingFace
      IL_01a0:  ldc.i4.0
      IL_01a1:  ldloc.s    V_16
      IL_01a3:  ldfld      int32 Game.ElectricConnectionPath::ConnectorFace
      IL_01a8:  call       valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> Game.SubsystemElectricity::GetConnectorDirection(int32,
                                                                                                                                                                   int32,
                                                                                                                                                                   int32)
      IL_01ad:  stloc.s    V_17
      IL_01af:  ldarg.s    centerOffset
      IL_01b1:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
      IL_01b6:  call       bool [Engine]Engine.Vector2::op_Equality(valuetype [Engine]Engine.Vector2,
                                                                    valuetype [Engine]Engine.Vector2)
      IL_01bb:  brfalse.s  IL_01de

      IL_01bd:  ldloc.s    V_17
      IL_01bf:  stloc.s    V_57
      IL_01c1:  ldc.i4.4
      IL_01c2:  stloc.s    V_58
      IL_01c4:  ldloca.s   V_57
      IL_01c6:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::GetValueOrDefault()
      IL_01cb:  ldloc.s    V_58
      IL_01cd:  beq.s      IL_01d2

      IL_01cf:  ldc.i4.0
      IL_01d0:  br.s       IL_01d9

      IL_01d2:  ldloca.s   V_57
      IL_01d4:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
      IL_01d9:  brtrue     IL_0985

      IL_01de:  ldloc.s    V_13
      IL_01e0:  ldc.i4.1
      IL_01e1:  ldloc.s    V_16
      IL_01e3:  ldfld      int32 Game.ElectricConnectionPath::ConnectorFace
      IL_01e8:  ldc.i4.s   31
      IL_01ea:  and
      IL_01eb:  shl
      IL_01ec:  or
      IL_01ed:  stloc.s    V_13
      IL_01ef:  ldloc.0
      IL_01f0:  stloc.s    V_18
      IL_01f2:  ldloc.1
      IL_01f3:  ldc.i4     0x85
      IL_01f8:  beq.s      IL_025b

      IL_01fa:  ldarg.0
      IL_01fb:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
      IL_0200:  ldarg.2
      IL_0201:  ldloc.s    V_16
      IL_0203:  ldfld      int32 Game.ElectricConnectionPath::NeighborOffsetX
      IL_0208:  add
      IL_0209:  ldarg.3
      IL_020a:  ldloc.s    V_16
      IL_020c:  ldfld      int32 Game.ElectricConnectionPath::NeighborOffsetY
      IL_0211:  add
      IL_0212:  ldarg.s    z
      IL_0214:  ldloc.s    V_16
      IL_0216:  ldfld      int32 Game.ElectricConnectionPath::NeighborOffsetZ
      IL_021b:  add
      IL_021c:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                         int32,
                                                                         int32)
      IL_0221:  stloc.s    V_59
      IL_0223:  ldloc.s    V_59
      IL_0225:  call       int32 Game.TerrainData::ExtractContents(int32)
      IL_022a:  ldc.i4     0x85
      IL_022f:  bne.un.s   IL_025b

      IL_0231:  ldloc.s    V_59
      IL_0233:  call       int32 Game.TerrainData::ExtractData(int32)
      IL_0238:  call       valuetype [System.Runtime]System.Nullable`1<int32> Game.WireBlock::GetColor(int32)
      IL_023d:  stloc.s    V_60
      IL_023f:  ldloca.s   V_60
      IL_0241:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
      IL_0246:  brfalse.s  IL_025b

      IL_0248:  ldsfld     valuetype [Engine]Engine.Color[] Game.PaintBucketBlock::PaintColors
      IL_024d:  ldloca.s   V_60
      IL_024f:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
      IL_0254:  ldelem     [Engine]Engine.Color
      IL_0259:  stloc.s    V_18
      IL_025b:  ldloc.s    V_17
      IL_025d:  stloc.s    V_57
      IL_025f:  ldc.i4.4
      IL_0260:  stloc.s    V_58
      IL_0262:  ldloca.s   V_57
      IL_0264:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::GetValueOrDefault()
      IL_0269:  ldloc.s    V_58
      IL_026b:  beq.s      IL_0270

      IL_026d:  ldc.i4.0
      IL_026e:  br.s       IL_0277

      IL_0270:  ldloca.s   V_57
      IL_0272:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
      IL_0277:  brfalse.s  IL_0289

      IL_0279:  ldloc.s    V_12
      IL_027b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
      IL_0280:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
      IL_0285:  stloc.s    V_19
      IL_0287:  br.s       IL_0297

      IL_0289:  ldloc.s    V_16
      IL_028b:  ldfld      int32 Game.ElectricConnectionPath::ConnectorFace
      IL_0290:  call       valuetype [Engine]Engine.Vector3 Game.CellFace::FaceToVector3(int32)
      IL_0295:  stloc.s    V_19
      IL_0297:  ldloc.s    V_5
      IL_0299:  ldloc.s    V_19
      IL_029b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3)
      IL_02a0:  stloc.s    V_20
      IL_02a2:  ldarg.s    centerBoxSize
      IL_02a4:  ldc.r4     0.0
      IL_02a9:  bge.s      IL_02b5

      IL_02ab:  ldarg.s    centerBoxSize
      IL_02ad:  ldc.r4     2.
      IL_02b2:  div
      IL_02b3:  br.s       IL_02c7

      IL_02b5:  ldc.r4     3.125e-002
      IL_02ba:  ldarg.s    centerBoxSize
      IL_02bc:  ldc.r4     2.
      IL_02c1:  div
      IL_02c2:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_02c7:  stloc.s    V_21
      IL_02c9:  ldloc.s    V_17
      IL_02cb:  stloc.s    V_57
      IL_02cd:  ldc.i4.4
      IL_02ce:  stloc.s    V_58
      IL_02d0:  ldloca.s   V_57
      IL_02d2:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::GetValueOrDefault()
      IL_02d7:  ldloc.s    V_58
      IL_02d9:  beq.s      IL_02de

      IL_02db:  ldc.i4.0
      IL_02dc:  br.s       IL_02e5

      IL_02de:  ldloca.s   V_57
      IL_02e0:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
      IL_02e5:  brtrue.s   IL_02ee

      IL_02e7:  ldc.r4     0.5
      IL_02ec:  br.s       IL_02f3

      IL_02ee:  ldc.r4     3.125e-002
      IL_02f3:  stloc.s    V_22
      IL_02f5:  ldloc.s    V_17
      IL_02f7:  stloc.s    V_57
      IL_02f9:  ldc.i4.4
      IL_02fa:  stloc.s    V_58
      IL_02fc:  ldloca.s   V_57
      IL_02fe:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::GetValueOrDefault()
      IL_0303:  ldloc.s    V_58
      IL_0305:  beq.s      IL_030a

      IL_0307:  ldc.i4.0
      IL_0308:  br.s       IL_0311

      IL_030a:  ldloca.s   V_57
      IL_030c:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
      IL_0311:  brfalse.s  IL_031c

      IL_0313:  ldc.r4     0.0
      IL_0318:  stloc.s    V_23
      IL_031a:  br.s       IL_035d

      IL_031c:  ldloc.s    V_16
      IL_031e:  ldfld      int32 Game.ElectricConnectionPath::ConnectorFace
      IL_0323:  ldloc.s    V_16
      IL_0325:  ldfld      int32 Game.ElectricConnectionPath::NeighborFace
      IL_032a:  bne.un.s   IL_0338

      IL_032c:  ldloc.s    V_22
      IL_032e:  ldc.r4     3.125e-002
      IL_0333:  add
      IL_0334:  stloc.s    V_23
      IL_0336:  br.s       IL_035d

      IL_0338:  ldloc.s    V_16
      IL_033a:  ldfld      int32 Game.ElectricConnectionPath::ConnectorFace
      IL_033f:  ldloc.s    V_16
      IL_0341:  ldfld      int32 Game.ElectricConnectionPath::NeighborFace
      IL_0346:  call       int32 Game.CellFace::OppositeFace(int32)
      IL_034b:  bne.un.s   IL_0359

      IL_034d:  ldloc.s    V_22
      IL_034f:  ldc.r4     3.125e-002
      IL_0354:  sub
      IL_0355:  stloc.s    V_23
      IL_0357:  br.s       IL_035d

      IL_0359:  ldloc.s    V_22
      IL_035b:  stloc.s    V_23
      IL_035d:  ldloc.s    V_4
      IL_035f:  ldloc.s    V_20
      IL_0361:  ldc.r4     3.125e-002
      IL_0366:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_036b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                   valuetype [Engine]Engine.Vector3)
      IL_0370:  ldloc.s    V_19
      IL_0372:  ldloc.s    V_21
      IL_0374:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_0379:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_037e:  ldloc.s    V_12
      IL_0380:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0385:  stloc.s    V_24
      IL_0387:  ldloc.s    V_4
      IL_0389:  ldloc.s    V_20
      IL_038b:  ldc.r4     3.125e-002
      IL_0390:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_0395:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                   valuetype [Engine]Engine.Vector3)
      IL_039a:  ldloc.s    V_19
      IL_039c:  ldloc.s    V_22
      IL_039e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_03a3:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_03a8:  stloc.s    V_25
      IL_03aa:  ldloc.s    V_4
      IL_03ac:  ldloc.s    V_20
      IL_03ae:  ldc.r4     3.125e-002
      IL_03b3:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_03b8:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_03bd:  ldloc.s    V_19
      IL_03bf:  ldloc.s    V_22
      IL_03c1:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_03c6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_03cb:  stloc.s    V_26
      IL_03cd:  ldloc.s    V_4
      IL_03cf:  ldloc.s    V_20
      IL_03d1:  ldc.r4     3.125e-002
      IL_03d6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_03db:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_03e0:  ldloc.s    V_19
      IL_03e2:  ldloc.s    V_21
      IL_03e4:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_03e9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_03ee:  ldloc.s    V_12
      IL_03f0:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_03f5:  stloc.s    V_27
      IL_03f7:  ldloc.s    V_4
      IL_03f9:  ldloc.s    V_5
      IL_03fb:  ldc.r4     3.125e-002
      IL_0400:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_0405:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_040a:  ldloc.s    V_19
      IL_040c:  ldarg.s    centerBoxSize
      IL_040e:  ldc.r4     2.
      IL_0413:  div
      IL_0414:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_0419:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_041e:  ldloc.s    V_12
      IL_0420:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0425:  stloc.s    V_28
      IL_0427:  ldloc.s    V_4
      IL_0429:  ldloc.s    V_5
      IL_042b:  ldc.r4     3.125e-002
      IL_0430:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_0435:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_043a:  ldloc.s    V_19
      IL_043c:  ldloc.s    V_23
      IL_043e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_0443:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0448:  stloc.s    V_29
      IL_044a:  ldloc.s    V_10
      IL_044c:  brfalse.s  IL_049e

      IL_044e:  ldarg.s    centerBoxSize
      IL_0450:  ldc.r4     0.0
      IL_0455:  bne.un.s   IL_049e

      IL_0457:  ldc.r4     0.25
      IL_045c:  ldc.r4     0.5
      IL_0461:  ldloc.s    V_24
      IL_0463:  ldloc.s    V_27
      IL_0465:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_046a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_046f:  ldloc.s    V_5
      IL_0471:  call       valuetype [Engine]Engine.Vector3 Game.BlockGeometryGenerator::GetRandomWireOffset(valuetype [Engine]Engine.Vector3,
                                                                                                             valuetype [Engine]Engine.Vector3)
      IL_0476:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_047b:  stloc.s    V_61
      IL_047d:  ldloc.s    V_24
      IL_047f:  ldloc.s    V_61
      IL_0481:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0486:  stloc.s    V_24
      IL_0488:  ldloc.s    V_27
      IL_048a:  ldloc.s    V_61
      IL_048c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0491:  stloc.s    V_27
      IL_0493:  ldloc.s    V_28
      IL_0495:  ldloc.s    V_61
      IL_0497:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_049c:  stloc.s    V_28
      IL_049e:  ldloc.s    V_6
      IL_04a0:  ldloc.s    V_7
      IL_04a2:  ldc.r4     6.25e-002
      IL_04a7:  ldarg.s    centerBoxSize
      IL_04a9:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_04ae:  ldc.r4     0.0
      IL_04b3:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_04b8:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_04bd:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_04c2:  stloc.s    V_30
      IL_04c4:  ldloc.s    V_6
      IL_04c6:  ldloc.s    V_7
      IL_04c8:  ldloc.s    V_22
      IL_04ca:  ldc.r4     2.
      IL_04cf:  mul
      IL_04d0:  ldc.r4     0.0
      IL_04d5:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_04da:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_04df:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_04e4:  stloc.s    V_31
      IL_04e6:  ldloc.s    V_6
      IL_04e8:  ldloc.s    V_7
      IL_04ea:  ldloc.s    V_22
      IL_04ec:  ldc.r4     2.
      IL_04f1:  mul
      IL_04f2:  ldc.r4     1.
      IL_04f7:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_04fc:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_0501:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_0506:  stloc.s    V_32
      IL_0508:  ldloc.s    V_6
      IL_050a:  ldloc.s    V_7
      IL_050c:  ldc.r4     6.25e-002
      IL_0511:  ldarg.s    centerBoxSize
      IL_0513:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_0518:  ldc.r4     1.
      IL_051d:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_0522:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_0527:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_052c:  stloc.s    V_33
      IL_052e:  ldloc.s    V_6
      IL_0530:  ldloc.s    V_7
      IL_0532:  ldarg.s    centerBoxSize
      IL_0534:  ldc.r4     0.5
      IL_0539:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_053e:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_0543:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_0548:  stloc.s    V_34
      IL_054a:  ldloc.s    V_6
      IL_054c:  ldloc.s    V_7
      IL_054e:  ldloc.s    V_23
      IL_0550:  ldc.r4     2.
      IL_0555:  mul
      IL_0556:  ldc.r4     0.5
      IL_055b:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_0560:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_0565:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_056a:  stloc.s    V_35
      IL_056c:  ldarg.0
      IL_056d:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
      IL_0572:  ldarg.2
      IL_0573:  ldloc.s    V_16
      IL_0575:  ldfld      int32 Game.ElectricConnectionPath::NeighborOffsetX
      IL_057a:  add
      IL_057b:  ldarg.3
      IL_057c:  ldloc.s    V_16
      IL_057e:  ldfld      int32 Game.ElectricConnectionPath::NeighborOffsetY
      IL_0583:  add
      IL_0584:  ldarg.s    z
      IL_0586:  ldloc.s    V_16
      IL_0588:  ldfld      int32 Game.ElectricConnectionPath::NeighborOffsetZ
      IL_058d:  add
      IL_058e:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                         int32,
                                                                         int32)
      IL_0593:  call       int32 Game.TerrainData::ExtractLight(int32)
      IL_0598:  stloc.s    V_36
      IL_059a:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
      IL_059f:  ldloc.s    V_36
      IL_05a1:  ldelem.r4
      IL_05a2:  stloc.s    V_37
      IL_05a4:  ldc.r4     0.5
      IL_05a9:  ldloc.3
      IL_05aa:  ldloc.s    V_37
      IL_05ac:  add
      IL_05ad:  mul
      IL_05ae:  stloc.s    V_38
      IL_05b0:  ldloc.s    V_20
      IL_05b2:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
      IL_05b7:  call       float32 Game.LightingManager::CalculateLighting(valuetype [Engine]Engine.Vector3)
      IL_05bc:  ldloc.s    V_20
      IL_05be:  call       float32 Game.LightingManager::CalculateLighting(valuetype [Engine]Engine.Vector3)
      IL_05c3:  stloc.s    V_39
      IL_05c5:  ldloc.s    V_5
      IL_05c7:  call       float32 Game.LightingManager::CalculateLighting(valuetype [Engine]Engine.Vector3)
      IL_05cc:  stloc.s    V_40
      IL_05ce:  dup
      IL_05cf:  ldloc.3
      IL_05d0:  mul
      IL_05d1:  stloc.s    V_41
      IL_05d3:  ldloc.s    V_38
      IL_05d5:  mul
      IL_05d6:  stloc.s    V_42
      IL_05d8:  ldloc.s    V_39
      IL_05da:  ldloc.s    V_38
      IL_05dc:  mul
      IL_05dd:  stloc.s    V_43
      IL_05df:  ldloc.s    V_39
      IL_05e1:  ldloc.3
      IL_05e2:  mul
      IL_05e3:  stloc.s    V_44
      IL_05e5:  ldloc.s    V_40
      IL_05e7:  ldloc.3
      IL_05e8:  mul
      IL_05e9:  stloc.s    V_45
      IL_05eb:  ldloc.s    V_40
      IL_05ed:  ldloc.s    V_38
      IL_05ef:  mul
      IL_05f0:  stloc.s    V_46
      IL_05f2:  ldloca.s   V_47
      IL_05f4:  ldloca.s   V_18
      IL_05f6:  call       instance uint8 [Engine]Engine.Color::get_R()
      IL_05fb:  conv.r4
      IL_05fc:  ldloc.s    V_41
      IL_05fe:  mul
      IL_05ff:  conv.u1
      IL_0600:  ldloca.s   V_18
      IL_0602:  call       instance uint8 [Engine]Engine.Color::get_G()
      IL_0607:  conv.r4
      IL_0608:  ldloc.s    V_41
      IL_060a:  mul
      IL_060b:  conv.u1
      IL_060c:  ldloca.s   V_18
      IL_060e:  call       instance uint8 [Engine]Engine.Color::get_B()
      IL_0613:  conv.r4
      IL_0614:  ldloc.s    V_41
      IL_0616:  mul
      IL_0617:  conv.u1
      IL_0618:  call       instance void [Engine]Engine.Color::.ctor(uint8,
                                                                     uint8,
                                                                     uint8)
      IL_061d:  ldloca.s   V_48
      IL_061f:  ldloca.s   V_18
      IL_0621:  call       instance uint8 [Engine]Engine.Color::get_R()
      IL_0626:  conv.r4
      IL_0627:  ldloc.s    V_42
      IL_0629:  mul
      IL_062a:  conv.u1
      IL_062b:  ldloca.s   V_18
      IL_062d:  call       instance uint8 [Engine]Engine.Color::get_G()
      IL_0632:  conv.r4
      IL_0633:  ldloc.s    V_42
      IL_0635:  mul
      IL_0636:  conv.u1
      IL_0637:  ldloca.s   V_18
      IL_0639:  call       instance uint8 [Engine]Engine.Color::get_B()
      IL_063e:  conv.r4
      IL_063f:  ldloc.s    V_42
      IL_0641:  mul
      IL_0642:  conv.u1
      IL_0643:  call       instance void [Engine]Engine.Color::.ctor(uint8,
                                                                     uint8,
                                                                     uint8)
      IL_0648:  ldloca.s   V_49
      IL_064a:  ldloca.s   V_18
      IL_064c:  call       instance uint8 [Engine]Engine.Color::get_R()
      IL_0651:  conv.r4
      IL_0652:  ldloc.s    V_43
      IL_0654:  mul
      IL_0655:  conv.u1
      IL_0656:  ldloca.s   V_18
      IL_0658:  call       instance uint8 [Engine]Engine.Color::get_G()
      IL_065d:  conv.r4
      IL_065e:  ldloc.s    V_43
      IL_0660:  mul
      IL_0661:  conv.u1
      IL_0662:  ldloca.s   V_18
      IL_0664:  call       instance uint8 [Engine]Engine.Color::get_B()
      IL_0669:  conv.r4
      IL_066a:  ldloc.s    V_43
      IL_066c:  mul
      IL_066d:  conv.u1
      IL_066e:  call       instance void [Engine]Engine.Color::.ctor(uint8,
                                                                     uint8,
                                                                     uint8)
      IL_0673:  ldloca.s   V_50
      IL_0675:  ldloca.s   V_18
      IL_0677:  call       instance uint8 [Engine]Engine.Color::get_R()
      IL_067c:  conv.r4
      IL_067d:  ldloc.s    V_44
      IL_067f:  mul
      IL_0680:  conv.u1
      IL_0681:  ldloca.s   V_18
      IL_0683:  call       instance uint8 [Engine]Engine.Color::get_G()
      IL_0688:  conv.r4
      IL_0689:  ldloc.s    V_44
      IL_068b:  mul
      IL_068c:  conv.u1
      IL_068d:  ldloca.s   V_18
      IL_068f:  call       instance uint8 [Engine]Engine.Color::get_B()
      IL_0694:  conv.r4
      IL_0695:  ldloc.s    V_44
      IL_0697:  mul
      IL_0698:  conv.u1
      IL_0699:  call       instance void [Engine]Engine.Color::.ctor(uint8,
                                                                     uint8,
                                                                     uint8)
      IL_069e:  ldloca.s   V_51
      IL_06a0:  ldloca.s   V_18
      IL_06a2:  call       instance uint8 [Engine]Engine.Color::get_R()
      IL_06a7:  conv.r4
      IL_06a8:  ldloc.s    V_45
      IL_06aa:  mul
      IL_06ab:  conv.u1
      IL_06ac:  ldloca.s   V_18
      IL_06ae:  call       instance uint8 [Engine]Engine.Color::get_G()
      IL_06b3:  conv.r4
      IL_06b4:  ldloc.s    V_45
      IL_06b6:  mul
      IL_06b7:  conv.u1
      IL_06b8:  ldloca.s   V_18
      IL_06ba:  call       instance uint8 [Engine]Engine.Color::get_B()
      IL_06bf:  conv.r4
      IL_06c0:  ldloc.s    V_45
      IL_06c2:  mul
      IL_06c3:  conv.u1
      IL_06c4:  call       instance void [Engine]Engine.Color::.ctor(uint8,
                                                                     uint8,
                                                                     uint8)
      IL_06c9:  ldloca.s   V_52
      IL_06cb:  ldloca.s   V_18
      IL_06cd:  call       instance uint8 [Engine]Engine.Color::get_R()
      IL_06d2:  conv.r4
      IL_06d3:  ldloc.s    V_46
      IL_06d5:  mul
      IL_06d6:  conv.u1
      IL_06d7:  ldloca.s   V_18
      IL_06d9:  call       instance uint8 [Engine]Engine.Color::get_G()
      IL_06de:  conv.r4
      IL_06df:  ldloc.s    V_46
      IL_06e1:  mul
      IL_06e2:  conv.u1
      IL_06e3:  ldloca.s   V_18
      IL_06e5:  call       instance uint8 [Engine]Engine.Color::get_B()
      IL_06ea:  conv.r4
      IL_06eb:  ldloc.s    V_46
      IL_06ed:  mul
      IL_06ee:  conv.u1
      IL_06ef:  call       instance void [Engine]Engine.Color::.ctor(uint8,
                                                                     uint8,
                                                                     uint8)
      IL_06f4:  ldarg.s    subset
      IL_06f6:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
      IL_06fb:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
      IL_0700:  stloc.s    V_53
      IL_0702:  ldarg.s    subset
      IL_0704:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
      IL_0709:  dup
      IL_070a:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
      IL_070f:  ldc.i4.6
      IL_0710:  add
      IL_0711:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
      IL_0716:  ldarg.s    subset
      IL_0718:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
      IL_071d:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
      IL_0722:  stloc.s    V_54
      IL_0724:  ldloc.s    V_24
      IL_0726:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_072b:  ldloc.s    V_24
      IL_072d:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_0732:  ldloc.s    V_24
      IL_0734:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0739:  ldloc.s    V_47
      IL_073b:  ldloc.s    V_30
      IL_073d:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0742:  ldloc.s    V_30
      IL_0744:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0749:  ldloc.s    V_54
      IL_074b:  ldloc.s    V_53
      IL_074d:  ldelema    Game.TerrainVertex
      IL_0752:  call       void Game.BlockGeometryGenerator::SetupVertex(float32,
                                                                         float32,
                                                                         float32,
                                                                         valuetype [Engine]Engine.Color,
                                                                         float32,
                                                                         float32,
                                                                         valuetype Game.TerrainVertex&)
      IL_0757:  ldloc.s    V_25
      IL_0759:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_075e:  ldloc.s    V_25
      IL_0760:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_0765:  ldloc.s    V_25
      IL_0767:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_076c:  ldloc.s    V_48
      IL_076e:  ldloc.s    V_31
      IL_0770:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0775:  ldloc.s    V_31
      IL_0777:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_077c:  ldloc.s    V_54
      IL_077e:  ldloc.s    V_53
      IL_0780:  ldc.i4.1
      IL_0781:  add
      IL_0782:  ldelema    Game.TerrainVertex
      IL_0787:  call       void Game.BlockGeometryGenerator::SetupVertex(float32,
                                                                         float32,
                                                                         float32,
                                                                         valuetype [Engine]Engine.Color,
                                                                         float32,
                                                                         float32,
                                                                         valuetype Game.TerrainVertex&)
      IL_078c:  ldloc.s    V_26
      IL_078e:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0793:  ldloc.s    V_26
      IL_0795:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_079a:  ldloc.s    V_26
      IL_079c:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_07a1:  ldloc.s    V_49
      IL_07a3:  ldloc.s    V_32
      IL_07a5:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_07aa:  ldloc.s    V_32
      IL_07ac:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_07b1:  ldloc.s    V_54
      IL_07b3:  ldloc.s    V_53
      IL_07b5:  ldc.i4.2
      IL_07b6:  add
      IL_07b7:  ldelema    Game.TerrainVertex
      IL_07bc:  call       void Game.BlockGeometryGenerator::SetupVertex(float32,
                                                                         float32,
                                                                         float32,
                                                                         valuetype [Engine]Engine.Color,
                                                                         float32,
                                                                         float32,
                                                                         valuetype Game.TerrainVertex&)
      IL_07c1:  ldloc.s    V_27
      IL_07c3:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_07c8:  ldloc.s    V_27
      IL_07ca:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_07cf:  ldloc.s    V_27
      IL_07d1:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_07d6:  ldloc.s    V_50
      IL_07d8:  ldloc.s    V_33
      IL_07da:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_07df:  ldloc.s    V_33
      IL_07e1:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_07e6:  ldloc.s    V_54
      IL_07e8:  ldloc.s    V_53
      IL_07ea:  ldc.i4.3
      IL_07eb:  add
      IL_07ec:  ldelema    Game.TerrainVertex
      IL_07f1:  call       void Game.BlockGeometryGenerator::SetupVertex(float32,
                                                                         float32,
                                                                         float32,
                                                                         valuetype [Engine]Engine.Color,
                                                                         float32,
                                                                         float32,
                                                                         valuetype Game.TerrainVertex&)
      IL_07f6:  ldloc.s    V_28
      IL_07f8:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_07fd:  ldloc.s    V_28
      IL_07ff:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_0804:  ldloc.s    V_28
      IL_0806:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_080b:  ldloc.s    V_51
      IL_080d:  ldloc.s    V_34
      IL_080f:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0814:  ldloc.s    V_34
      IL_0816:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_081b:  ldloc.s    V_54
      IL_081d:  ldloc.s    V_53
      IL_081f:  ldc.i4.4
      IL_0820:  add
      IL_0821:  ldelema    Game.TerrainVertex
      IL_0826:  call       void Game.BlockGeometryGenerator::SetupVertex(float32,
                                                                         float32,
                                                                         float32,
                                                                         valuetype [Engine]Engine.Color,
                                                                         float32,
                                                                         float32,
                                                                         valuetype Game.TerrainVertex&)
      IL_082b:  ldloc.s    V_29
      IL_082d:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0832:  ldloc.s    V_29
      IL_0834:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_0839:  ldloc.s    V_29
      IL_083b:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0840:  ldloc.s    V_52
      IL_0842:  ldloc.s    V_35
      IL_0844:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0849:  ldloc.s    V_35
      IL_084b:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0850:  ldloc.s    V_54
      IL_0852:  ldloc.s    V_53
      IL_0854:  ldc.i4.5
      IL_0855:  add
      IL_0856:  ldelema    Game.TerrainVertex
      IL_085b:  call       void Game.BlockGeometryGenerator::SetupVertex(float32,
                                                                         float32,
                                                                         float32,
                                                                         valuetype [Engine]Engine.Color,
                                                                         float32,
                                                                         float32,
                                                                         valuetype Game.TerrainVertex&)
      IL_0860:  ldarg.s    subset
      IL_0862:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
      IL_0867:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
      IL_086c:  stloc.s    V_55
      IL_086e:  ldarg.s    subset
      IL_0870:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
      IL_0875:  dup
      IL_0876:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
      IL_087b:  ldloc.s    V_17
      IL_087d:  stloc.s    V_57
      IL_087f:  ldc.i4.4
      IL_0880:  stloc.s    V_58
      IL_0882:  ldloca.s   V_57
      IL_0884:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::GetValueOrDefault()
      IL_0889:  ldloc.s    V_58
      IL_088b:  beq.s      IL_0890

      IL_088d:  ldc.i4.0
      IL_088e:  br.s       IL_0897

      IL_0890:  ldloca.s   V_57
      IL_0892:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
      IL_0897:  brtrue.s   IL_089d

      IL_0899:  ldc.i4.s   12
      IL_089b:  br.s       IL_089f

      IL_089d:  ldc.i4.s   15
      IL_089f:  add
      IL_08a0:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::set_Count(int32)
      IL_08a5:  ldarg.s    subset
      IL_08a7:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
      IL_08ac:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
      IL_08b1:  stloc.s    V_56
      IL_08b3:  ldloc.s    V_56
      IL_08b5:  ldloc.s    V_55
      IL_08b7:  ldloc.s    V_53
      IL_08b9:  conv.u2
      IL_08ba:  stelem.i2
      IL_08bb:  ldloc.s    V_56
      IL_08bd:  ldloc.s    V_55
      IL_08bf:  ldc.i4.1
      IL_08c0:  add
      IL_08c1:  ldloc.s    V_53
      IL_08c3:  ldc.i4.5
      IL_08c4:  add
      IL_08c5:  conv.u2
      IL_08c6:  stelem.i2
      IL_08c7:  ldloc.s    V_56
      IL_08c9:  ldloc.s    V_55
      IL_08cb:  ldc.i4.2
      IL_08cc:  add
      IL_08cd:  ldloc.s    V_53
      IL_08cf:  ldc.i4.1
      IL_08d0:  add
      IL_08d1:  conv.u2
      IL_08d2:  stelem.i2
      IL_08d3:  ldloc.s    V_56
      IL_08d5:  ldloc.s    V_55
      IL_08d7:  ldc.i4.3
      IL_08d8:  add
      IL_08d9:  ldloc.s    V_53
      IL_08db:  ldc.i4.5
      IL_08dc:  add
      IL_08dd:  conv.u2
      IL_08de:  stelem.i2
      IL_08df:  ldloc.s    V_56
      IL_08e1:  ldloc.s    V_55
      IL_08e3:  ldc.i4.4
      IL_08e4:  add
      IL_08e5:  ldloc.s    V_53
      IL_08e7:  conv.u2
      IL_08e8:  stelem.i2
      IL_08e9:  ldloc.s    V_56
      IL_08eb:  ldloc.s    V_55
      IL_08ed:  ldc.i4.5
      IL_08ee:  add
      IL_08ef:  ldloc.s    V_53
      IL_08f1:  ldc.i4.4
      IL_08f2:  add
      IL_08f3:  conv.u2
      IL_08f4:  stelem.i2
      IL_08f5:  ldloc.s    V_56
      IL_08f7:  ldloc.s    V_55
      IL_08f9:  ldc.i4.6
      IL_08fa:  add
      IL_08fb:  ldloc.s    V_53
      IL_08fd:  ldc.i4.4
      IL_08fe:  add
      IL_08ff:  conv.u2
      IL_0900:  stelem.i2
      IL_0901:  ldloc.s    V_56
      IL_0903:  ldloc.s    V_55
      IL_0905:  ldc.i4.7
      IL_0906:  add
      IL_0907:  ldloc.s    V_53
      IL_0909:  ldc.i4.2
      IL_090a:  add
      IL_090b:  conv.u2
      IL_090c:  stelem.i2
      IL_090d:  ldloc.s    V_56
      IL_090f:  ldloc.s    V_55
      IL_0911:  ldc.i4.8
      IL_0912:  add
      IL_0913:  ldloc.s    V_53
      IL_0915:  ldc.i4.5
      IL_0916:  add
      IL_0917:  conv.u2
      IL_0918:  stelem.i2
      IL_0919:  ldloc.s    V_56
      IL_091b:  ldloc.s    V_55
      IL_091d:  ldc.i4.s   9
      IL_091f:  add
      IL_0920:  ldloc.s    V_53
      IL_0922:  ldc.i4.2
      IL_0923:  add
      IL_0924:  conv.u2
      IL_0925:  stelem.i2
      IL_0926:  ldloc.s    V_56
      IL_0928:  ldloc.s    V_55
      IL_092a:  ldc.i4.s   10
      IL_092c:  add
      IL_092d:  ldloc.s    V_53
      IL_092f:  ldc.i4.4
      IL_0930:  add
      IL_0931:  conv.u2
      IL_0932:  stelem.i2
      IL_0933:  ldloc.s    V_56
      IL_0935:  ldloc.s    V_55
      IL_0937:  ldc.i4.s   11
      IL_0939:  add
      IL_093a:  ldloc.s    V_53
      IL_093c:  ldc.i4.3
      IL_093d:  add
      IL_093e:  conv.u2
      IL_093f:  stelem.i2
      IL_0940:  ldloc.s    V_17
      IL_0942:  stloc.s    V_57
      IL_0944:  ldc.i4.4
      IL_0945:  stloc.s    V_58
      IL_0947:  ldloca.s   V_57
      IL_0949:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::GetValueOrDefault()
      IL_094e:  ldloc.s    V_58
      IL_0950:  beq.s      IL_0955

      IL_0952:  ldc.i4.0
      IL_0953:  br.s       IL_095c

      IL_0955:  ldloca.s   V_57
      IL_0957:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
      IL_095c:  brfalse.s  IL_0985

      IL_095e:  ldloc.s    V_56
      IL_0960:  ldloc.s    V_55
      IL_0962:  ldc.i4.s   12
      IL_0964:  add
      IL_0965:  ldloc.s    V_53
      IL_0967:  ldc.i4.2
      IL_0968:  add
      IL_0969:  conv.u2
      IL_096a:  stelem.i2
      IL_096b:  ldloc.s    V_56
      IL_096d:  ldloc.s    V_55
      IL_096f:  ldc.i4.s   13
      IL_0971:  add
      IL_0972:  ldloc.s    V_53
      IL_0974:  ldc.i4.1
      IL_0975:  add
      IL_0976:  conv.u2
      IL_0977:  stelem.i2
      IL_0978:  ldloc.s    V_56
      IL_097a:  ldloc.s    V_55
      IL_097c:  ldc.i4.s   14
      IL_097e:  add
      IL_097f:  ldloc.s    V_53
      IL_0981:  ldc.i4.5
      IL_0982:  add
      IL_0983:  conv.u2
      IL_0984:  stelem.i2
      IL_0985:  ldloca.s   V_15
      IL_0987:  call       instance bool valuetype [Engine]Engine.DynamicArray`1/Enumerator<class Game.ElectricConnectionPath>::MoveNext()
      IL_098c:  brtrue     IL_0181

      IL_0991:  leave.s    IL_09a1

    }  // end .try
    finally
    {
      IL_0993:  ldloca.s   V_15
      IL_0995:  constrained. valuetype [Engine]Engine.DynamicArray`1/Enumerator<class Game.ElectricConnectionPath>
      IL_099b:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_09a0:  endfinally
    }  // end handler
    IL_09a1:  ldarg.s    centerBoxSize
    IL_09a3:  ldc.r4     0.0
    IL_09a8:  bne.un     IL_0c98

    IL_09ad:  ldloc.s    V_13
    IL_09af:  brtrue.s   IL_09bc

    IL_09b1:  ldloc.1
    IL_09b2:  ldc.i4     0x85
    IL_09b7:  bne.un     IL_0c98

    IL_09bc:  ldc.i4.0
    IL_09bd:  stloc.s    V_62
    IL_09bf:  br         IL_0c90

    IL_09c4:  ldloc.s    V_62
    IL_09c6:  ldarg.s    mountingFace
    IL_09c8:  beq        IL_0c8a

    IL_09cd:  ldloc.s    V_62
    IL_09cf:  ldarg.s    mountingFace
    IL_09d1:  call       int32 Game.CellFace::OppositeFace(int32)
    IL_09d6:  beq        IL_0c8a

    IL_09db:  ldloc.s    V_13
    IL_09dd:  ldc.i4.1
    IL_09de:  ldloc.s    V_62
    IL_09e0:  ldc.i4.s   31
    IL_09e2:  and
    IL_09e3:  shl
    IL_09e4:  and
    IL_09e5:  brtrue     IL_0c8a

    IL_09ea:  ldloc.s    V_62
    IL_09ec:  call       valuetype [Engine]Engine.Vector3 Game.CellFace::FaceToVector3(int32)
    IL_09f1:  stloc.s    V_63
    IL_09f3:  ldloc.s    V_5
    IL_09f5:  ldloc.s    V_63
    IL_09f7:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_09fc:  stloc.s    V_64
    IL_09fe:  ldloc.s    V_4
    IL_0a00:  ldloc.s    V_64
    IL_0a02:  ldc.r4     3.125e-002
    IL_0a07:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0a0c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0a11:  ldloc.s    V_63
    IL_0a13:  ldc.r4     3.125e-002
    IL_0a18:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0a1d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0a22:  stloc.s    V_65
    IL_0a24:  ldloc.s    V_4
    IL_0a26:  ldloc.s    V_64
    IL_0a28:  ldc.r4     3.125e-002
    IL_0a2d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0a32:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0a37:  ldloc.s    V_63
    IL_0a39:  ldc.r4     3.125e-002
    IL_0a3e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0a43:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0a48:  stloc.s    V_66
    IL_0a4a:  ldloc.s    V_4
    IL_0a4c:  ldloc.s    V_5
    IL_0a4e:  ldc.r4     3.125e-002
    IL_0a53:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0a58:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0a5d:  stloc.s    V_67
    IL_0a5f:  ldloc.s    V_10
    IL_0a61:  brfalse.s  IL_0aaa

    IL_0a63:  ldc.r4     0.25
    IL_0a68:  ldc.r4     0.5
    IL_0a6d:  ldloc.s    V_65
    IL_0a6f:  ldloc.s    V_66
    IL_0a71:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0a76:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0a7b:  ldloc.s    V_5
    IL_0a7d:  call       valuetype [Engine]Engine.Vector3 Game.BlockGeometryGenerator::GetRandomWireOffset(valuetype [Engine]Engine.Vector3,
                                                                                                           valuetype [Engine]Engine.Vector3)
    IL_0a82:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0a87:  stloc.s    V_78
    IL_0a89:  ldloc.s    V_65
    IL_0a8b:  ldloc.s    V_78
    IL_0a8d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0a92:  stloc.s    V_65
    IL_0a94:  ldloc.s    V_66
    IL_0a96:  ldloc.s    V_78
    IL_0a98:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0a9d:  stloc.s    V_66
    IL_0a9f:  ldloc.s    V_67
    IL_0aa1:  ldloc.s    V_78
    IL_0aa3:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0aa8:  stloc.s    V_67
    IL_0aaa:  ldloc.s    V_6
    IL_0aac:  ldloc.s    V_7
    IL_0aae:  ldc.r4     6.25e-002
    IL_0ab3:  ldc.r4     0.0
    IL_0ab8:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0abd:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0ac2:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0ac7:  stloc.s    V_68
    IL_0ac9:  ldloc.s    V_6
    IL_0acb:  ldloc.s    V_7
    IL_0acd:  ldc.r4     6.25e-002
    IL_0ad2:  ldc.r4     1.
    IL_0ad7:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0adc:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0ae1:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0ae6:  stloc.s    V_69
    IL_0ae8:  ldloc.s    V_6
    IL_0aea:  ldloc.s    V_7
    IL_0aec:  ldc.r4     0.0
    IL_0af1:  ldc.r4     0.5
    IL_0af6:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0afb:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0b00:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0b05:  stloc.s    V_70
    IL_0b07:  ldloc.s    V_63
    IL_0b09:  call       float32 Game.LightingManager::CalculateLighting(valuetype [Engine]Engine.Vector3)
    IL_0b0e:  ldloc.3
    IL_0b0f:  mul
    IL_0b10:  stloc.s    V_71
    IL_0b12:  ldloc.s    V_5
    IL_0b14:  call       float32 Game.LightingManager::CalculateLighting(valuetype [Engine]Engine.Vector3)
    IL_0b19:  ldloc.3
    IL_0b1a:  mul
    IL_0b1b:  stloc.s    V_72
    IL_0b1d:  ldloca.s   V_73
    IL_0b1f:  ldloca.s   V_0
    IL_0b21:  call       instance uint8 [Engine]Engine.Color::get_R()
    IL_0b26:  conv.r4
    IL_0b27:  ldloc.s    V_71
    IL_0b29:  mul
    IL_0b2a:  conv.u1
    IL_0b2b:  ldloca.s   V_0
    IL_0b2d:  call       instance uint8 [Engine]Engine.Color::get_G()
    IL_0b32:  conv.r4
    IL_0b33:  ldloc.s    V_71
    IL_0b35:  mul
    IL_0b36:  conv.u1
    IL_0b37:  ldloca.s   V_0
    IL_0b39:  call       instance uint8 [Engine]Engine.Color::get_B()
    IL_0b3e:  conv.r4
    IL_0b3f:  ldloc.s    V_71
    IL_0b41:  mul
    IL_0b42:  conv.u1
    IL_0b43:  call       instance void [Engine]Engine.Color::.ctor(uint8,
                                                                   uint8,
                                                                   uint8)
    IL_0b48:  ldloca.s   V_74
    IL_0b4a:  ldloca.s   V_0
    IL_0b4c:  call       instance uint8 [Engine]Engine.Color::get_R()
    IL_0b51:  conv.r4
    IL_0b52:  ldloc.s    V_72
    IL_0b54:  mul
    IL_0b55:  conv.u1
    IL_0b56:  ldloca.s   V_0
    IL_0b58:  call       instance uint8 [Engine]Engine.Color::get_G()
    IL_0b5d:  conv.r4
    IL_0b5e:  ldloc.s    V_72
    IL_0b60:  mul
    IL_0b61:  conv.u1
    IL_0b62:  ldloca.s   V_0
    IL_0b64:  call       instance uint8 [Engine]Engine.Color::get_B()
    IL_0b69:  conv.r4
    IL_0b6a:  ldloc.s    V_72
    IL_0b6c:  mul
    IL_0b6d:  conv.u1
    IL_0b6e:  call       instance void [Engine]Engine.Color::.ctor(uint8,
                                                                   uint8,
                                                                   uint8)
    IL_0b73:  ldarg.s    subset
    IL_0b75:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_0b7a:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_0b7f:  stloc.s    V_75
    IL_0b81:  ldarg.s    subset
    IL_0b83:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_0b88:  dup
    IL_0b89:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_0b8e:  ldc.i4.3
    IL_0b8f:  add
    IL_0b90:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
    IL_0b95:  ldarg.s    subset
    IL_0b97:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_0b9c:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0ba1:  stloc.s    V_76
    IL_0ba3:  ldloc.s    V_65
    IL_0ba5:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0baa:  ldloc.s    V_65
    IL_0bac:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0bb1:  ldloc.s    V_65
    IL_0bb3:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0bb8:  ldloc.s    V_73
    IL_0bba:  ldloc.s    V_68
    IL_0bbc:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0bc1:  ldloc.s    V_68
    IL_0bc3:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0bc8:  ldloc.s    V_76
    IL_0bca:  ldloc.s    V_75
    IL_0bcc:  ldelema    Game.TerrainVertex
    IL_0bd1:  call       void Game.BlockGeometryGenerator::SetupVertex(float32,
                                                                       float32,
                                                                       float32,
                                                                       valuetype [Engine]Engine.Color,
                                                                       float32,
                                                                       float32,
                                                                       valuetype Game.TerrainVertex&)
    IL_0bd6:  ldloc.s    V_66
    IL_0bd8:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0bdd:  ldloc.s    V_66
    IL_0bdf:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0be4:  ldloc.s    V_66
    IL_0be6:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0beb:  ldloc.s    V_73
    IL_0bed:  ldloc.s    V_69
    IL_0bef:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0bf4:  ldloc.s    V_69
    IL_0bf6:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0bfb:  ldloc.s    V_76
    IL_0bfd:  ldloc.s    V_75
    IL_0bff:  ldc.i4.1
    IL_0c00:  add
    IL_0c01:  ldelema    Game.TerrainVertex
    IL_0c06:  call       void Game.BlockGeometryGenerator::SetupVertex(float32,
                                                                       float32,
                                                                       float32,
                                                                       valuetype [Engine]Engine.Color,
                                                                       float32,
                                                                       float32,
                                                                       valuetype Game.TerrainVertex&)
    IL_0c0b:  ldloc.s    V_67
    IL_0c0d:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0c12:  ldloc.s    V_67
    IL_0c14:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0c19:  ldloc.s    V_67
    IL_0c1b:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0c20:  ldloc.s    V_74
    IL_0c22:  ldloc.s    V_70
    IL_0c24:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0c29:  ldloc.s    V_70
    IL_0c2b:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0c30:  ldloc.s    V_76
    IL_0c32:  ldloc.s    V_75
    IL_0c34:  ldc.i4.2
    IL_0c35:  add
    IL_0c36:  ldelema    Game.TerrainVertex
    IL_0c3b:  call       void Game.BlockGeometryGenerator::SetupVertex(float32,
                                                                       float32,
                                                                       float32,
                                                                       valuetype [Engine]Engine.Color,
                                                                       float32,
                                                                       float32,
                                                                       valuetype Game.TerrainVertex&)
    IL_0c40:  ldarg.s    subset
    IL_0c42:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_0c47:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_0c4c:  stloc.s    V_77
    IL_0c4e:  ldarg.s    subset
    IL_0c50:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_0c55:  dup
    IL_0c56:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_0c5b:  ldc.i4.3
    IL_0c5c:  add
    IL_0c5d:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::set_Count(int32)
    IL_0c62:  ldarg.s    subset
    IL_0c64:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_0c69:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0c6e:  dup
    IL_0c6f:  ldloc.s    V_77
    IL_0c71:  ldloc.s    V_75
    IL_0c73:  conv.u2
    IL_0c74:  stelem.i2
    IL_0c75:  dup
    IL_0c76:  ldloc.s    V_77
    IL_0c78:  ldc.i4.1
    IL_0c79:  add
    IL_0c7a:  ldloc.s    V_75
    IL_0c7c:  ldc.i4.2
    IL_0c7d:  add
    IL_0c7e:  conv.u2
    IL_0c7f:  stelem.i2
    IL_0c80:  ldloc.s    V_77
    IL_0c82:  ldc.i4.2
    IL_0c83:  add
    IL_0c84:  ldloc.s    V_75
    IL_0c86:  ldc.i4.1
    IL_0c87:  add
    IL_0c88:  conv.u2
    IL_0c89:  stelem.i2
    IL_0c8a:  ldloc.s    V_62
    IL_0c8c:  ldc.i4.1
    IL_0c8d:  add
    IL_0c8e:  stloc.s    V_62
    IL_0c90:  ldloc.s    V_62
    IL_0c92:  ldc.i4.6
    IL_0c93:  blt        IL_09c4

    IL_0c98:  ret
  } // end of method BlockGeometryGenerator::GenerateWireVertices

  .method private hidebysig instance int32 
          CalculateVertexLightFace0(int32 x,
                                    int32 y,
                                    int32 z) cil managed
  {
    // 代码大小       82 (0x52)
    .maxstack  4
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_0006:  ldarg.1
    IL_0007:  ldc.i4.1
    IL_0008:  sub
    IL_0009:  ldarg.2
    IL_000a:  ldc.i4.1
    IL_000b:  sub
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance int32 Game.TerrainData::CalculateCellIndex(int32,
                                                                             int32,
                                                                             int32)
    IL_0012:  stloc.0
    IL_0013:  ldarg.0
    IL_0014:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_0019:  ldarg.1
    IL_001a:  ldarg.2
    IL_001b:  ldc.i4.1
    IL_001c:  sub
    IL_001d:  ldarg.3
    IL_001e:  callvirt   instance int32 Game.TerrainData::CalculateCellIndex(int32,
                                                                             int32,
                                                                             int32)
    IL_0023:  stloc.1
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.1
    IL_0026:  add
    IL_0027:  stloc.2
    IL_0028:  ldloc.1
    IL_0029:  ldc.i4.1
    IL_002a:  add
    IL_002b:  stloc.3
    IL_002c:  ldc.i4.0
    IL_002d:  ldarg.0
    IL_002e:  ldloc.3
    IL_002f:  call       instance int32 Game.BlockGeometryGenerator::CalculateCubeVertexLight(int32)
    IL_0034:  add
    IL_0035:  ldarg.0
    IL_0036:  ldloc.2
    IL_0037:  call       instance int32 Game.BlockGeometryGenerator::CalculateCubeVertexLight(int32)
    IL_003c:  add
    IL_003d:  ldarg.0
    IL_003e:  ldloc.0
    IL_003f:  call       instance int32 Game.BlockGeometryGenerator::CalculateCubeVertexLight(int32)
    IL_0044:  add
    IL_0045:  ldarg.0
    IL_0046:  ldloc.1
    IL_0047:  call       instance int32 Game.BlockGeometryGenerator::CalculateCubeVertexLight(int32)
    IL_004c:  add
    IL_004d:  ldc.i4.3
    IL_004e:  add
    IL_004f:  ldc.i4.4
    IL_0050:  div
    IL_0051:  ret
  } // end of method BlockGeometryGenerator::CalculateVertexLightFace0

  .method private hidebysig instance int32 
          CalculateVertexLightFace1(int32 x,
                                    int32 y,
                                    int32 z) cil managed
  {
    // 代码大小       82 (0x52)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_0006:  ldarg.1
    IL_0007:  ldarg.2
    IL_0008:  ldc.i4.1
    IL_0009:  sub
    IL_000a:  ldarg.3
    IL_000b:  ldc.i4.1
    IL_000c:  sub
    IL_000d:  callvirt   instance int32 Game.TerrainData::CalculateCellIndex(int32,
                                                                             int32,
                                                                             int32)
    IL_0012:  stloc.0
    IL_0013:  ldarg.0
    IL_0014:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_0019:  ldarg.1
    IL_001a:  ldarg.2
    IL_001b:  ldc.i4.1
    IL_001c:  sub
    IL_001d:  ldarg.3
    IL_001e:  callvirt   instance int32 Game.TerrainData::CalculateCellIndex(int32,
                                                                             int32,
                                                                             int32)
    IL_0023:  stloc.1
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.1
    IL_0026:  add
    IL_0027:  stloc.2
    IL_0028:  ldloc.1
    IL_0029:  ldc.i4.1
    IL_002a:  add
    IL_002b:  stloc.3
    IL_002c:  ldc.i4.0
    IL_002d:  ldarg.0
    IL_002e:  ldloc.3
    IL_002f:  call       instance int32 Game.BlockGeometryGenerator::CalculateCubeVertexLight(int32)
    IL_0034:  add
    IL_0035:  ldarg.0
    IL_0036:  ldloc.1
    IL_0037:  call       instance int32 Game.BlockGeometryGenerator::CalculateCubeVertexLight(int32)
    IL_003c:  add
    IL_003d:  ldarg.0
    IL_003e:  ldloc.0
    IL_003f:  call       instance int32 Game.BlockGeometryGenerator::CalculateCubeVertexLight(int32)
    IL_0044:  add
    IL_0045:  ldarg.0
    IL_0046:  ldloc.2
    IL_0047:  call       instance int32 Game.BlockGeometryGenerator::CalculateCubeVertexLight(int32)
    IL_004c:  add
    IL_004d:  ldc.i4.3
    IL_004e:  add
    IL_004f:  ldc.i4.4
    IL_0050:  div
    IL_0051:  ret
  } // end of method BlockGeometryGenerator::CalculateVertexLightFace1

  .method private hidebysig instance int32 
          CalculateVertexLightFace2(int32 x,
                                    int32 y,
                                    int32 z) cil managed
  {
    // 代码大小       86 (0x56)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_0006:  ldarg.1
    IL_0007:  ldc.i4.1
    IL_0008:  sub
    IL_0009:  ldarg.2
    IL_000a:  ldc.i4.1
    IL_000b:  sub
    IL_000c:  ldarg.3
    IL_000d:  ldc.i4.1
    IL_000e:  sub
    IL_000f:  callvirt   instance int32 Game.TerrainData::CalculateCellIndex(int32,
                                                                             int32,
                                                                             int32)
    IL_0014:  stloc.0
    IL_0015:  ldarg.0
    IL_0016:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_001b:  ldarg.1
    IL_001c:  ldarg.2
    IL_001d:  ldc.i4.1
    IL_001e:  sub
    IL_001f:  ldarg.3
    IL_0020:  ldc.i4.1
    IL_0021:  sub
    IL_0022:  callvirt   instance int32 Game.TerrainData::CalculateCellIndex(int32,
                                                                             int32,
                                                                             int32)
    IL_0027:  stloc.1
    IL_0028:  ldloc.0
    IL_0029:  ldc.i4.1
    IL_002a:  add
    IL_002b:  stloc.2
    IL_002c:  ldloc.1
    IL_002d:  ldc.i4.1
    IL_002e:  add
    IL_002f:  stloc.3
    IL_0030:  ldc.i4.0
    IL_0031:  ldarg.0
    IL_0032:  ldloc.3
    IL_0033:  call       instance int32 Game.BlockGeometryGenerator::CalculateCubeVertexLight(int32)
    IL_0038:  add
    IL_0039:  ldarg.0
    IL_003a:  ldloc.2
    IL_003b:  call       instance int32 Game.BlockGeometryGenerator::CalculateCubeVertexLight(int32)
    IL_0040:  add
    IL_0041:  ldarg.0
    IL_0042:  ldloc.0
    IL_0043:  call       instance int32 Game.BlockGeometryGenerator::CalculateCubeVertexLight(int32)
    IL_0048:  add
    IL_0049:  ldarg.0
    IL_004a:  ldloc.1
    IL_004b:  call       instance int32 Game.BlockGeometryGenerator::CalculateCubeVertexLight(int32)
    IL_0050:  add
    IL_0051:  ldc.i4.3
    IL_0052:  add
    IL_0053:  ldc.i4.4
    IL_0054:  div
    IL_0055:  ret
  } // end of method BlockGeometryGenerator::CalculateVertexLightFace2

  .method private hidebysig instance int32 
          CalculateVertexLightFace3(int32 x,
                                    int32 y,
                                    int32 z) cil managed
  {
    // 代码大小       86 (0x56)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_0006:  ldarg.1
    IL_0007:  ldc.i4.1
    IL_0008:  sub
    IL_0009:  ldarg.2
    IL_000a:  ldc.i4.1
    IL_000b:  sub
    IL_000c:  ldarg.3
    IL_000d:  ldc.i4.1
    IL_000e:  sub
    IL_000f:  callvirt   instance int32 Game.TerrainData::CalculateCellIndex(int32,
                                                                             int32,
                                                                             int32)
    IL_0014:  stloc.0
    IL_0015:  ldarg.0
    IL_0016:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_001b:  ldarg.1
    IL_001c:  ldc.i4.1
    IL_001d:  sub
    IL_001e:  ldarg.2
    IL_001f:  ldc.i4.1
    IL_0020:  sub
    IL_0021:  ldarg.3
    IL_0022:  callvirt   instance int32 Game.TerrainData::CalculateCellIndex(int32,
                                                                             int32,
                                                                             int32)
    IL_0027:  stloc.1
    IL_0028:  ldloc.0
    IL_0029:  ldc.i4.1
    IL_002a:  add
    IL_002b:  stloc.2
    IL_002c:  ldloc.1
    IL_002d:  ldc.i4.1
    IL_002e:  add
    IL_002f:  stloc.3
    IL_0030:  ldc.i4.0
    IL_0031:  ldarg.0
    IL_0032:  ldloc.3
    IL_0033:  call       instance int32 Game.BlockGeometryGenerator::CalculateCubeVertexLight(int32)
    IL_0038:  add
    IL_0039:  ldarg.0
    IL_003a:  ldloc.1
    IL_003b:  call       instance int32 Game.BlockGeometryGenerator::CalculateCubeVertexLight(int32)
    IL_0040:  add
    IL_0041:  ldarg.0
    IL_0042:  ldloc.0
    IL_0043:  call       instance int32 Game.BlockGeometryGenerator::CalculateCubeVertexLight(int32)
    IL_0048:  add
    IL_0049:  ldarg.0
    IL_004a:  ldloc.2
    IL_004b:  call       instance int32 Game.BlockGeometryGenerator::CalculateCubeVertexLight(int32)
    IL_0050:  add
    IL_0051:  ldc.i4.3
    IL_0052:  add
    IL_0053:  ldc.i4.4
    IL_0054:  div
    IL_0055:  ret
  } // end of method BlockGeometryGenerator::CalculateVertexLightFace3

  .method private hidebysig instance int32 
          CalculateVertexLightFace4(int32 x,
                                    int32 y,
                                    int32 z) cil managed
  {
    // 代码大小       106 (0x6a)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_0006:  ldarg.1
    IL_0007:  ldc.i4.1
    IL_0008:  sub
    IL_0009:  ldarg.2
    IL_000a:  ldarg.3
    IL_000b:  ldc.i4.1
    IL_000c:  sub
    IL_000d:  callvirt   instance int32 Game.TerrainData::CalculateCellIndex(int32,
                                                                             int32,
                                                                             int32)
    IL_0012:  stloc.0
    IL_0013:  ldarg.0
    IL_0014:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_0019:  ldarg.1
    IL_001a:  ldarg.2
    IL_001b:  ldarg.3
    IL_001c:  ldc.i4.1
    IL_001d:  sub
    IL_001e:  callvirt   instance int32 Game.TerrainData::CalculateCellIndex(int32,
                                                                             int32,
                                                                             int32)
    IL_0023:  stloc.1
    IL_0024:  ldarg.0
    IL_0025:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_002a:  ldarg.1
    IL_002b:  ldc.i4.1
    IL_002c:  sub
    IL_002d:  ldarg.2
    IL_002e:  ldarg.3
    IL_002f:  callvirt   instance int32 Game.TerrainData::CalculateCellIndex(int32,
                                                                             int32,
                                                                             int32)
    IL_0034:  stloc.2
    IL_0035:  ldarg.0
    IL_0036:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_003b:  ldarg.1
    IL_003c:  ldarg.2
    IL_003d:  ldarg.3
    IL_003e:  callvirt   instance int32 Game.TerrainData::CalculateCellIndex(int32,
                                                                             int32,
                                                                             int32)
    IL_0043:  stloc.3
    IL_0044:  ldc.i4.0
    IL_0045:  ldarg.0
    IL_0046:  ldloc.3
    IL_0047:  call       instance int32 Game.BlockGeometryGenerator::CalculateCubeVertexLight(int32)
    IL_004c:  add
    IL_004d:  ldarg.0
    IL_004e:  ldloc.2
    IL_004f:  call       instance int32 Game.BlockGeometryGenerator::CalculateCubeVertexLight(int32)
    IL_0054:  add
    IL_0055:  ldarg.0
    IL_0056:  ldloc.0
    IL_0057:  call       instance int32 Game.BlockGeometryGenerator::CalculateCubeVertexLight(int32)
    IL_005c:  add
    IL_005d:  ldarg.0
    IL_005e:  ldloc.1
    IL_005f:  call       instance int32 Game.BlockGeometryGenerator::CalculateCubeVertexLight(int32)
    IL_0064:  add
    IL_0065:  ldc.i4.3
    IL_0066:  add
    IL_0067:  ldc.i4.4
    IL_0068:  div
    IL_0069:  ret
  } // end of method BlockGeometryGenerator::CalculateVertexLightFace4

  .method private hidebysig instance int32 
          CalculateVertexLightFace5(int32 x,
                                    int32 y,
                                    int32 z) cil managed
  {
    // 代码大小       114 (0x72)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_0006:  ldarg.1
    IL_0007:  ldc.i4.1
    IL_0008:  sub
    IL_0009:  ldarg.2
    IL_000a:  ldc.i4.1
    IL_000b:  sub
    IL_000c:  ldarg.3
    IL_000d:  ldc.i4.1
    IL_000e:  sub
    IL_000f:  callvirt   instance int32 Game.TerrainData::CalculateCellIndex(int32,
                                                                             int32,
                                                                             int32)
    IL_0014:  stloc.0
    IL_0015:  ldarg.0
    IL_0016:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_001b:  ldarg.1
    IL_001c:  ldarg.2
    IL_001d:  ldc.i4.1
    IL_001e:  sub
    IL_001f:  ldarg.3
    IL_0020:  ldc.i4.1
    IL_0021:  sub
    IL_0022:  callvirt   instance int32 Game.TerrainData::CalculateCellIndex(int32,
                                                                             int32,
                                                                             int32)
    IL_0027:  stloc.1
    IL_0028:  ldarg.0
    IL_0029:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_002e:  ldarg.1
    IL_002f:  ldc.i4.1
    IL_0030:  sub
    IL_0031:  ldarg.2
    IL_0032:  ldc.i4.1
    IL_0033:  sub
    IL_0034:  ldarg.3
    IL_0035:  callvirt   instance int32 Game.TerrainData::CalculateCellIndex(int32,
                                                                             int32,
                                                                             int32)
    IL_003a:  stloc.2
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_0041:  ldarg.1
    IL_0042:  ldarg.2
    IL_0043:  ldc.i4.1
    IL_0044:  sub
    IL_0045:  ldarg.3
    IL_0046:  callvirt   instance int32 Game.TerrainData::CalculateCellIndex(int32,
                                                                             int32,
                                                                             int32)
    IL_004b:  stloc.3
    IL_004c:  ldc.i4.0
    IL_004d:  ldarg.0
    IL_004e:  ldloc.3
    IL_004f:  call       instance int32 Game.BlockGeometryGenerator::CalculateCubeVertexLight(int32)
    IL_0054:  add
    IL_0055:  ldarg.0
    IL_0056:  ldloc.2
    IL_0057:  call       instance int32 Game.BlockGeometryGenerator::CalculateCubeVertexLight(int32)
    IL_005c:  add
    IL_005d:  ldarg.0
    IL_005e:  ldloc.0
    IL_005f:  call       instance int32 Game.BlockGeometryGenerator::CalculateCubeVertexLight(int32)
    IL_0064:  add
    IL_0065:  ldarg.0
    IL_0066:  ldloc.1
    IL_0067:  call       instance int32 Game.BlockGeometryGenerator::CalculateCubeVertexLight(int32)
    IL_006c:  add
    IL_006d:  ldc.i4.3
    IL_006e:  add
    IL_006f:  ldc.i4.4
    IL_0070:  div
    IL_0071:  ret
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
          CalculateCubeVertexLight(int32 index) cil managed
  {
    // 代码大小       65 (0x41)
    .maxstack  2
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32)
    IL_000c:  stloc.0
    IL_000d:  ldloc.0
    IL_000e:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0013:  stloc.1
    IL_0014:  ldloc.1
    IL_0015:  brtrue.s   IL_001e

    IL_0017:  ldloc.0
    IL_0018:  call       int32 Game.TerrainData::ExtractLight(int32)
    IL_001d:  ret

    IL_001e:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0023:  ldloc.1
    IL_0024:  ldelem.ref
    IL_0025:  ldloc.0
    IL_0026:  callvirt   instance int32 Game.Block::GetShadowStrength(int32)
    IL_002b:  stloc.2
    IL_002c:  ldloc.2
    IL_002d:  ldc.i4.0
    IL_002e:  blt.s      IL_003f

    IL_0030:  ldloc.0
    IL_0031:  call       int32 Game.TerrainData::ExtractLight(int32)
    IL_0036:  ldloc.2
    IL_0037:  sub
    IL_0038:  ldc.i4.0
    IL_0039:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_003e:  ret

    IL_003f:  ldc.i4.0
    IL_0040:  ret
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