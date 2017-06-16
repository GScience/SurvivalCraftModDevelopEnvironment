.class public abstract auto ansi sealed beforefieldinit Game.LightingManager
       extends [System.Runtime]System.Object
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.LightingManager/'<>c' '<>9'
    .field public static class [System.Runtime]System.Action`1<string> '<>9__5_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.LightingManager/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.LightingManager/'<>c' Game.LightingManager/'<>c'::'<>9'
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
            '<Initialize>b__5_0'(string name) cil managed
    {
      // 代码大小       19 (0x13)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldstr      "Brightness"
      IL_0006:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_000b:  brfalse.s  IL_0012

      IL_000d:  call       void Game.LightingManager::CalculateLightingTables()
      IL_0012:  ret
    } // end of method '<>c'::'<Initialize>b__5_0'

  } // end of class '<>c'

  .field public static initonly float32 LightAmbient
  .field public static initonly valuetype [Engine]Engine.Vector3 LightDirection1
  .field public static initonly valuetype [Engine]Engine.Vector3 LightDirection2
  .field public static initonly float32[] LightIntensityByLightValue
  .field public static initonly float32[] LightIntensityByLightValueAndFace
  .method public hidebysig static void  Initialize() cil managed
  {
    // 代码大小       42 (0x2a)
    .maxstack  8
    IL_0000:  ldsfld     class [System.Runtime]System.Action`1<string> Game.LightingManager/'<>c'::'<>9__5_0'
    IL_0005:  dup
    IL_0006:  brtrue.s   IL_001f

    IL_0008:  pop
    IL_0009:  ldsfld     class Game.LightingManager/'<>c' Game.LightingManager/'<>c'::'<>9'
    IL_000e:  ldftn      instance void Game.LightingManager/'<>c'::'<Initialize>b__5_0'(string)
    IL_0014:  newobj     instance void class [System.Runtime]System.Action`1<string>::.ctor(object,
                                                                                            native int)
    IL_0019:  dup
    IL_001a:  stsfld     class [System.Runtime]System.Action`1<string> Game.LightingManager/'<>c'::'<>9__5_0'
    IL_001f:  call       void Game.SettingsManager::add_SettingChanged(class [System.Runtime]System.Action`1<string>)
    IL_0024:  call       void Game.LightingManager::CalculateLightingTables()
    IL_0029:  ret
  } // end of method LightingManager::Initialize

  .method public hidebysig static float32 
          CalculateLighting(valuetype [Engine]Engine.Vector3 normal) cil managed
  {
    // 代码大小       50 (0x32)
    .maxstack  8
    IL_0000:  ldsfld     float32 Game.LightingManager::LightAmbient
    IL_0005:  ldarg.0
    IL_0006:  ldsfld     valuetype [Engine]Engine.Vector3 Game.LightingManager::LightDirection1
    IL_000b:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_0010:  ldc.r4     0.0
    IL_0015:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_001a:  add
    IL_001b:  ldarg.0
    IL_001c:  ldsfld     valuetype [Engine]Engine.Vector3 Game.LightingManager::LightDirection2
    IL_0021:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_0026:  ldc.r4     0.0
    IL_002b:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0030:  add
    IL_0031:  ret
  } // end of method LightingManager::CalculateLighting

  .method public hidebysig static valuetype [System.Runtime]System.Nullable`1<float32> 
          CalculateSmoothLight(class Game.SubsystemTerrain terrain,
                               valuetype [Engine]Engine.Vector3 p) cil managed
  {
    // 代码大小       554 (0x22a)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             class Game.TerrainChunk V_6,
             class Game.TerrainChunk V_7,
             class Game.TerrainChunk V_8,
             class Game.TerrainChunk V_9,
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
             float32 V_22,
             float32 V_23,
             int32 V_24,
             int32 V_25,
             float32 V_26,
             valuetype [System.Runtime]System.Nullable`1<float32> V_27)
    IL_0000:  ldarg.1
    IL_0001:  ldc.r4     0.5
    IL_0006:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
    IL_000b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0010:  starg.s    p
    IL_0012:  ldarg.1
    IL_0013:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0018:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_001d:  conv.i4
    IL_001e:  stloc.0
    IL_001f:  ldarg.1
    IL_0020:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0025:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_002a:  conv.i4
    IL_002b:  stloc.1
    IL_002c:  ldarg.1
    IL_002d:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0032:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0037:  conv.i4
    IL_0038:  stloc.2
    IL_0039:  ldarg.1
    IL_003a:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_003f:  call       float32 [Engine]Engine.MathUtils::Ceiling(float32)
    IL_0044:  conv.i4
    IL_0045:  stloc.3
    IL_0046:  ldarg.1
    IL_0047:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_004c:  call       float32 [Engine]Engine.MathUtils::Ceiling(float32)
    IL_0051:  conv.i4
    IL_0052:  stloc.s    V_4
    IL_0054:  ldarg.1
    IL_0055:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_005a:  call       float32 [Engine]Engine.MathUtils::Ceiling(float32)
    IL_005f:  conv.i4
    IL_0060:  stloc.s    V_5
    IL_0062:  ldloc.1
    IL_0063:  ldc.i4.0
    IL_0064:  blt        IL_021f

    IL_0069:  ldloc.s    V_4
    IL_006b:  ldc.i4.s   127
    IL_006d:  bgt        IL_021f

    IL_0072:  ldarg.0
    IL_0073:  ldloc.0
    IL_0074:  ldloc.2
    IL_0075:  callvirt   instance class Game.TerrainChunk Game.SubsystemTerrain::CellToChunk(int32,
                                                                                             int32)
    IL_007a:  stloc.s    V_6
    IL_007c:  ldarg.0
    IL_007d:  ldloc.3
    IL_007e:  ldloc.2
    IL_007f:  callvirt   instance class Game.TerrainChunk Game.SubsystemTerrain::CellToChunk(int32,
                                                                                             int32)
    IL_0084:  stloc.s    V_7
    IL_0086:  ldarg.0
    IL_0087:  ldloc.0
    IL_0088:  ldloc.s    V_5
    IL_008a:  callvirt   instance class Game.TerrainChunk Game.SubsystemTerrain::CellToChunk(int32,
                                                                                             int32)
    IL_008f:  stloc.s    V_8
    IL_0091:  ldarg.0
    IL_0092:  ldloc.3
    IL_0093:  ldloc.s    V_5
    IL_0095:  callvirt   instance class Game.TerrainChunk Game.SubsystemTerrain::CellToChunk(int32,
                                                                                             int32)
    IL_009a:  stloc.s    V_9
    IL_009c:  ldloc.s    V_6
    IL_009e:  brfalse    IL_021f

    IL_00a3:  ldloc.s    V_6
    IL_00a5:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
    IL_00aa:  ldc.i4.7
    IL_00ab:  blt        IL_021f

    IL_00b0:  ldloc.s    V_7
    IL_00b2:  brfalse    IL_021f

    IL_00b7:  ldloc.s    V_7
    IL_00b9:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
    IL_00be:  ldc.i4.7
    IL_00bf:  blt        IL_021f

    IL_00c4:  ldloc.s    V_8
    IL_00c6:  brfalse    IL_021f

    IL_00cb:  ldloc.s    V_8
    IL_00cd:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
    IL_00d2:  ldc.i4.7
    IL_00d3:  blt        IL_021f

    IL_00d8:  ldloc.s    V_9
    IL_00da:  brfalse    IL_021f

    IL_00df:  ldloc.s    V_9
    IL_00e1:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
    IL_00e6:  ldc.i4.7
    IL_00e7:  blt        IL_021f

    IL_00ec:  ldarg.1
    IL_00ed:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00f2:  ldloc.0
    IL_00f3:  conv.r4
    IL_00f4:  sub
    IL_00f5:  stloc.s    V_10
    IL_00f7:  ldarg.1
    IL_00f8:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00fd:  ldloc.1
    IL_00fe:  conv.r4
    IL_00ff:  sub
    IL_0100:  stloc.s    V_11
    IL_0102:  ldarg.1
    IL_0103:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0108:  ldloc.2
    IL_0109:  conv.r4
    IL_010a:  sub
    IL_010b:  stloc.s    V_12
    IL_010d:  ldarg.0
    IL_010e:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0113:  ldloc.0
    IL_0114:  ldloc.1
    IL_0115:  ldloc.2
    IL_0116:  callvirt   instance int32 Game.TerrainData::GetCellLightFast(int32,
                                                                           int32,
                                                                           int32)
    IL_011b:  conv.r4
    IL_011c:  ldarg.0
    IL_011d:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0122:  ldloc.0
    IL_0123:  ldloc.1
    IL_0124:  ldloc.s    V_5
    IL_0126:  callvirt   instance int32 Game.TerrainData::GetCellLightFast(int32,
                                                                           int32,
                                                                           int32)
    IL_012b:  conv.r4
    IL_012c:  stloc.s    V_13
    IL_012e:  ldarg.0
    IL_012f:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0134:  ldloc.0
    IL_0135:  ldloc.s    V_4
    IL_0137:  ldloc.2
    IL_0138:  callvirt   instance int32 Game.TerrainData::GetCellLightFast(int32,
                                                                           int32,
                                                                           int32)
    IL_013d:  conv.r4
    IL_013e:  stloc.s    V_14
    IL_0140:  ldarg.0
    IL_0141:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0146:  ldloc.0
    IL_0147:  ldloc.s    V_4
    IL_0149:  ldloc.s    V_5
    IL_014b:  callvirt   instance int32 Game.TerrainData::GetCellLightFast(int32,
                                                                           int32,
                                                                           int32)
    IL_0150:  conv.r4
    IL_0151:  stloc.s    V_15
    IL_0153:  ldarg.0
    IL_0154:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0159:  ldloc.3
    IL_015a:  ldloc.1
    IL_015b:  ldloc.2
    IL_015c:  callvirt   instance int32 Game.TerrainData::GetCellLightFast(int32,
                                                                           int32,
                                                                           int32)
    IL_0161:  conv.r4
    IL_0162:  stloc.s    V_16
    IL_0164:  ldarg.0
    IL_0165:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_016a:  ldloc.3
    IL_016b:  ldloc.1
    IL_016c:  ldloc.s    V_5
    IL_016e:  callvirt   instance int32 Game.TerrainData::GetCellLightFast(int32,
                                                                           int32,
                                                                           int32)
    IL_0173:  conv.r4
    IL_0174:  stloc.s    V_17
    IL_0176:  ldarg.0
    IL_0177:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_017c:  ldloc.3
    IL_017d:  ldloc.s    V_4
    IL_017f:  ldloc.2
    IL_0180:  callvirt   instance int32 Game.TerrainData::GetCellLightFast(int32,
                                                                           int32,
                                                                           int32)
    IL_0185:  conv.r4
    IL_0186:  stloc.s    V_18
    IL_0188:  ldarg.0
    IL_0189:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_018e:  ldloc.3
    IL_018f:  ldloc.s    V_4
    IL_0191:  ldloc.s    V_5
    IL_0193:  callvirt   instance int32 Game.TerrainData::GetCellLightFast(int32,
                                                                           int32,
                                                                           int32)
    IL_0198:  conv.r4
    IL_0199:  stloc.s    V_19
    IL_019b:  ldloc.s    V_16
    IL_019d:  ldloc.s    V_10
    IL_019f:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_01a4:  ldloc.s    V_13
    IL_01a6:  ldloc.s    V_17
    IL_01a8:  ldloc.s    V_10
    IL_01aa:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_01af:  stloc.s    V_20
    IL_01b1:  ldloc.s    V_14
    IL_01b3:  ldloc.s    V_18
    IL_01b5:  ldloc.s    V_10
    IL_01b7:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_01bc:  stloc.s    V_21
    IL_01be:  ldloc.s    V_15
    IL_01c0:  ldloc.s    V_19
    IL_01c2:  ldloc.s    V_10
    IL_01c4:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_01c9:  stloc.s    V_22
    IL_01cb:  ldloc.s    V_21
    IL_01cd:  ldloc.s    V_11
    IL_01cf:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_01d4:  ldloc.s    V_20
    IL_01d6:  ldloc.s    V_22
    IL_01d8:  ldloc.s    V_11
    IL_01da:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_01df:  stloc.s    V_23
    IL_01e1:  ldloc.s    V_23
    IL_01e3:  ldloc.s    V_12
    IL_01e5:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_01ea:  dup
    IL_01eb:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_01f0:  conv.i4
    IL_01f1:  stloc.s    V_24
    IL_01f3:  dup
    IL_01f4:  call       float32 [Engine]Engine.MathUtils::Ceiling(float32)
    IL_01f9:  conv.i4
    IL_01fa:  stloc.s    V_25
    IL_01fc:  ldloc.s    V_24
    IL_01fe:  conv.r4
    IL_01ff:  sub
    IL_0200:  stloc.s    V_26
    IL_0202:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_0207:  ldloc.s    V_24
    IL_0209:  ldelem.r4
    IL_020a:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_020f:  ldloc.s    V_25
    IL_0211:  ldelem.r4
    IL_0212:  ldloc.s    V_26
    IL_0214:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0219:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float32>::.ctor(!0)
    IL_021e:  ret

    IL_021f:  ldloca.s   V_27
    IL_0221:  initobj    valuetype [System.Runtime]System.Nullable`1<float32>
    IL_0227:  ldloc.s    V_27
    IL_0229:  ret
  } // end of method LightingManager::CalculateSmoothLight

  .method private hidebysig static void  CalculateLightingTables() cil managed
  {
    // 代码大小       140 (0x8c)
    .maxstack  6
    .locals init (float32 V_0,
             int32 V_1,
             int32 V_2,
             float32 V_3,
             int32 V_4)
    IL_0000:  ldc.r4     0.0
    IL_0005:  ldc.r4     0.1
    IL_000a:  call       float32 Game.SettingsManager::get_Brightness()
    IL_000f:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0014:  stloc.0
    IL_0015:  ldc.i4.0
    IL_0016:  stloc.1
    IL_0017:  br.s       IL_0046

    IL_0019:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_001e:  ldloc.1
    IL_001f:  ldloc.0
    IL_0020:  ldc.r4     1.
    IL_0025:  ldloc.1
    IL_0026:  conv.r4
    IL_0027:  ldc.r4     15.
    IL_002c:  div
    IL_002d:  ldc.r4     1.25
    IL_0032:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_0037:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_003c:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0041:  stelem.r4
    IL_0042:  ldloc.1
    IL_0043:  ldc.i4.1
    IL_0044:  add
    IL_0045:  stloc.1
    IL_0046:  ldloc.1
    IL_0047:  ldc.i4.s   16
    IL_0049:  blt.s      IL_0019

    IL_004b:  ldc.i4.0
    IL_004c:  stloc.2
    IL_004d:  br.s       IL_0087

    IL_004f:  ldloc.2
    IL_0050:  call       valuetype [Engine]Engine.Vector3 Game.CellFace::FaceToVector3(int32)
    IL_0055:  call       float32 Game.LightingManager::CalculateLighting(valuetype [Engine]Engine.Vector3)
    IL_005a:  stloc.3
    IL_005b:  ldc.i4.0
    IL_005c:  stloc.s    V_4
    IL_005e:  br.s       IL_007d

    IL_0060:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValueAndFace
    IL_0065:  ldloc.s    V_4
    IL_0067:  ldloc.2
    IL_0068:  ldc.i4.s   16
    IL_006a:  mul
    IL_006b:  add
    IL_006c:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_0071:  ldloc.s    V_4
    IL_0073:  ldelem.r4
    IL_0074:  ldloc.3
    IL_0075:  mul
    IL_0076:  stelem.r4
    IL_0077:  ldloc.s    V_4
    IL_0079:  ldc.i4.1
    IL_007a:  add
    IL_007b:  stloc.s    V_4
    IL_007d:  ldloc.s    V_4
    IL_007f:  ldc.i4.s   16
    IL_0081:  blt.s      IL_0060

    IL_0083:  ldloc.2
    IL_0084:  ldc.i4.1
    IL_0085:  add
    IL_0086:  stloc.2
    IL_0087:  ldloc.2
    IL_0088:  ldc.i4.6
    IL_0089:  blt.s      IL_004f

    IL_008b:  ret
  } // end of method LightingManager::CalculateLightingTables

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       85 (0x55)
    .maxstack  3
    IL_0000:  ldc.r4     0.5
    IL_0005:  stsfld     float32 Game.LightingManager::LightAmbient
    IL_000a:  ldc.r4     0.12
    IL_000f:  ldc.r4     0.25
    IL_0014:  ldc.r4     0.34
    IL_0019:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_001e:  stsfld     valuetype [Engine]Engine.Vector3 Game.LightingManager::LightDirection1
    IL_0023:  ldc.r4     -0.12
    IL_0028:  ldc.r4     0.25
    IL_002d:  ldc.r4     -0.34
    IL_0032:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0037:  stsfld     valuetype [Engine]Engine.Vector3 Game.LightingManager::LightDirection2
    IL_003c:  ldc.i4.s   16
    IL_003e:  newarr     [System.Runtime]System.Single
    IL_0043:  stsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_0048:  ldc.i4.s   96
    IL_004a:  newarr     [System.Runtime]System.Single
    IL_004f:  stsfld     float32[] Game.LightingManager::LightIntensityByLightValueAndFace
    IL_0054:  ret
  } // end of method LightingManager::.cctor

} // end of class Game.LightingManager