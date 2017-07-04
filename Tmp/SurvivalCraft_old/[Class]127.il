.class public auto ansi beforefieldinit Game.BlockColorsMap
       extends [System.Runtime]System.Object
{
  .field private valuetype [Engine]Engine.Color[] m_map
  .field public static class Game.BlockColorsMap WaterColorsMap
  .field public static class Game.BlockColorsMap GrassColorsMap
  .field public static class Game.BlockColorsMap OakLeavesColorsMap
  .field public static class Game.BlockColorsMap BirchLeavesColorsMap
  .field public static class Game.BlockColorsMap SpruceLeavesColorsMap
  .field public static class Game.BlockColorsMap TallSpruceLeavesColorsMap
  .field public static class Game.BlockColorsMap IvyColorsMap
  .field public static class Game.BlockColorsMap KelpColorsMap
  .field public static class Game.BlockColorsMap SeagrassColorsMap
  .method private hidebysig specialname rtspecialname 
          instance void  .ctor(valuetype [Engine]Engine.Color th11,
                               valuetype [Engine]Engine.Color th21,
                               valuetype [Engine]Engine.Color th12,
                               valuetype [Engine]Engine.Color th22) cil managed
  {
    // 代码大小       131 (0x83)
    .maxstack  4
    .locals init (int32 V_0,
             int32 V_1,
             float32 V_2,
             float32 V_3,
             valuetype [Engine]Engine.Color V_4,
             valuetype [Engine]Engine.Color V_5,
             int32 V_6)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0x100
    IL_0006:  newarr     [Engine]Engine.Color
    IL_000b:  stfld      valuetype [Engine]Engine.Color[] Game.BlockColorsMap::m_map
    IL_0010:  ldarg.0
    IL_0011:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0016:  ldc.i4.0
    IL_0017:  stloc.0
    IL_0018:  br.s       IL_007d

    IL_001a:  ldc.i4.0
    IL_001b:  stloc.1
    IL_001c:  br.s       IL_0074

    IL_001e:  ldloc.0
    IL_001f:  conv.r4
    IL_0020:  ldc.r4     8.
    IL_0025:  div
    IL_0026:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_002b:  stloc.2
    IL_002c:  ldloc.1
    IL_002d:  ldc.i4.4
    IL_002e:  sub
    IL_002f:  conv.r4
    IL_0030:  ldc.r4     10.
    IL_0035:  div
    IL_0036:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_003b:  stloc.3
    IL_003c:  ldarg.1
    IL_003d:  ldarg.2
    IL_003e:  ldloc.2
    IL_003f:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::Lerp(valuetype [Engine]Engine.Color,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   float32)
    IL_0044:  ldarg.3
    IL_0045:  ldarg.s    th22
    IL_0047:  ldloc.2
    IL_0048:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::Lerp(valuetype [Engine]Engine.Color,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   float32)
    IL_004d:  stloc.s    V_4
    IL_004f:  ldloc.s    V_4
    IL_0051:  ldloc.3
    IL_0052:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::Lerp(valuetype [Engine]Engine.Color,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   float32)
    IL_0057:  stloc.s    V_5
    IL_0059:  ldloc.0
    IL_005a:  ldloc.1
    IL_005b:  ldc.i4.s   16
    IL_005d:  mul
    IL_005e:  add
    IL_005f:  stloc.s    V_6
    IL_0061:  ldarg.0
    IL_0062:  ldfld      valuetype [Engine]Engine.Color[] Game.BlockColorsMap::m_map
    IL_0067:  ldloc.s    V_6
    IL_0069:  ldloc.s    V_5
    IL_006b:  stelem     [Engine]Engine.Color
    IL_0070:  ldloc.1
    IL_0071:  ldc.i4.1
    IL_0072:  add
    IL_0073:  stloc.1
    IL_0074:  ldloc.1
    IL_0075:  ldc.i4.s   16
    IL_0077:  blt.s      IL_001e

    IL_0079:  ldloc.0
    IL_007a:  ldc.i4.1
    IL_007b:  add
    IL_007c:  stloc.0
    IL_007d:  ldloc.0
    IL_007e:  ldc.i4.s   16
    IL_0080:  blt.s      IL_001a

    IL_0082:  ret
  } // end of method BlockColorsMap::.ctor

  .method public hidebysig instance valuetype [Engine]Engine.Color 
          Lookup(int32 temperature,
                 int32 humidity) cil managed
  {
    // 代码大小       20 (0x14)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.s   16
    IL_0003:  ldarg.2
    IL_0004:  mul
    IL_0005:  add
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldfld      valuetype [Engine]Engine.Color[] Game.BlockColorsMap::m_map
    IL_000d:  ldloc.0
    IL_000e:  ldelem     [Engine]Engine.Color
    IL_0013:  ret
  } // end of method BlockColorsMap::Lookup

  .method public hidebysig instance valuetype [Engine]Engine.Color 
          Lookup(class Game.Terrain terrain,
                 int32 x,
                 int32 z) cil managed
  {
    // 代码大小       30 (0x1e)
    .maxstack  3
    .locals init (int32 V_0,
             int32 V_1)
    IL_0000:  ldarg.1
    IL_0001:  ldarg.2
    IL_0002:  ldarg.3
    IL_0003:  callvirt   instance int32 Game.Terrain::GetShaftValue(int32,
                                                                    int32)
    IL_0008:  dup
    IL_0009:  call       int32 Game.Terrain::ExtractHumidity(int32)
    IL_000e:  stloc.0
    IL_000f:  call       int32 Game.Terrain::ExtractTemperature(int32)
    IL_0014:  stloc.1
    IL_0015:  ldarg.0
    IL_0016:  ldloc.1
    IL_0017:  ldloc.0
    IL_0018:  call       instance valuetype [Engine]Engine.Color Game.BlockColorsMap::Lookup(int32,
                                                                                             int32)
    IL_001d:  ret
  } // end of method BlockColorsMap::Lookup

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       588 (0x24c)
    .maxstack  6
    IL_0000:  ldc.i4.0
    IL_0001:  ldc.i4.0
    IL_0002:  ldc.i4     0x80
    IL_0007:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_000c:  ldc.i4.0
    IL_000d:  ldc.i4.s   80
    IL_000f:  ldc.i4.s   100
    IL_0011:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0016:  ldc.i4.0
    IL_0017:  ldc.i4.s   45
    IL_0019:  ldc.i4.s   85
    IL_001b:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0020:  ldc.i4.0
    IL_0021:  ldc.i4.s   113
    IL_0023:  ldc.i4.s   97
    IL_0025:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_002a:  newobj     instance void Game.BlockColorsMap::.ctor(valuetype [Engine]Engine.Color,
                                                                  valuetype [Engine]Engine.Color,
                                                                  valuetype [Engine]Engine.Color,
                                                                  valuetype [Engine]Engine.Color)
    IL_002f:  stsfld     class Game.BlockColorsMap Game.BlockColorsMap::WaterColorsMap
    IL_0034:  ldc.i4     0x8d
    IL_0039:  ldc.i4     0xc6
    IL_003e:  ldc.i4     0xa6
    IL_0043:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0048:  ldc.i4     0xd2
    IL_004d:  ldc.i4     0xc9
    IL_0052:  ldc.i4.s   93
    IL_0054:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0059:  ldc.i4     0x8d
    IL_005e:  ldc.i4     0xc6
    IL_0063:  ldc.i4     0xa6
    IL_0068:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_006d:  ldc.i4.s   79
    IL_006f:  ldc.i4     0xe1
    IL_0074:  ldc.i4.s   56
    IL_0076:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_007b:  newobj     instance void Game.BlockColorsMap::.ctor(valuetype [Engine]Engine.Color,
                                                                  valuetype [Engine]Engine.Color,
                                                                  valuetype [Engine]Engine.Color,
                                                                  valuetype [Engine]Engine.Color)
    IL_0080:  stsfld     class Game.BlockColorsMap Game.BlockColorsMap::GrassColorsMap
    IL_0085:  ldc.i4.s   96
    IL_0087:  ldc.i4     0xa1
    IL_008c:  ldc.i4.s   123
    IL_008e:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0093:  ldc.i4     0xae
    IL_0098:  ldc.i4     0xa4
    IL_009d:  ldc.i4.s   42
    IL_009f:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_00a4:  ldc.i4.s   96
    IL_00a6:  ldc.i4     0xa1
    IL_00ab:  ldc.i4.s   123
    IL_00ad:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_00b2:  ldc.i4.s   30
    IL_00b4:  ldc.i4     0xbf
    IL_00b9:  ldc.i4.1
    IL_00ba:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_00bf:  newobj     instance void Game.BlockColorsMap::.ctor(valuetype [Engine]Engine.Color,
                                                                  valuetype [Engine]Engine.Color,
                                                                  valuetype [Engine]Engine.Color,
                                                                  valuetype [Engine]Engine.Color)
    IL_00c4:  stsfld     class Game.BlockColorsMap Game.BlockColorsMap::OakLeavesColorsMap
    IL_00c9:  ldc.i4.s   96
    IL_00cb:  ldc.i4     0xa1
    IL_00d0:  ldc.i4.s   96
    IL_00d2:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_00d7:  ldc.i4     0xae
    IL_00dc:  ldc.i4.s   109
    IL_00de:  ldc.i4.s   42
    IL_00e0:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_00e5:  ldc.i4.s   96
    IL_00e7:  ldc.i4     0xa1
    IL_00ec:  ldc.i4.s   96
    IL_00ee:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_00f3:  ldc.i4.s   107
    IL_00f5:  ldc.i4     0xbf
    IL_00fa:  ldc.i4.1
    IL_00fb:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0100:  newobj     instance void Game.BlockColorsMap::.ctor(valuetype [Engine]Engine.Color,
                                                                  valuetype [Engine]Engine.Color,
                                                                  valuetype [Engine]Engine.Color,
                                                                  valuetype [Engine]Engine.Color)
    IL_0105:  stsfld     class Game.BlockColorsMap Game.BlockColorsMap::BirchLeavesColorsMap
    IL_010a:  ldc.i4.s   96
    IL_010c:  ldc.i4     0xa1
    IL_0111:  ldc.i4     0x96
    IL_0116:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_011b:  ldc.i4     0x81
    IL_0120:  ldc.i4     0xae
    IL_0125:  ldc.i4.s   42
    IL_0127:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_012c:  ldc.i4.s   96
    IL_012e:  ldc.i4     0xa1
    IL_0133:  ldc.i4     0x96
    IL_0138:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_013d:  ldc.i4.1
    IL_013e:  ldc.i4     0xbf
    IL_0143:  ldc.i4.s   53
    IL_0145:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_014a:  newobj     instance void Game.BlockColorsMap::.ctor(valuetype [Engine]Engine.Color,
                                                                  valuetype [Engine]Engine.Color,
                                                                  valuetype [Engine]Engine.Color,
                                                                  valuetype [Engine]Engine.Color)
    IL_014f:  stsfld     class Game.BlockColorsMap Game.BlockColorsMap::SpruceLeavesColorsMap
    IL_0154:  ldc.i4.s   90
    IL_0156:  ldc.i4     0x8d
    IL_015b:  ldc.i4     0xa0
    IL_0160:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0165:  ldc.i4.s   119
    IL_0167:  ldc.i4     0x98
    IL_016c:  ldc.i4.s   51
    IL_016e:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0173:  ldc.i4.s   86
    IL_0175:  ldc.i4     0x8d
    IL_017a:  ldc.i4     0xa2
    IL_017f:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0184:  ldc.i4.1
    IL_0185:  ldc.i4     0x9e
    IL_018a:  ldc.i4.s   65
    IL_018c:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0191:  newobj     instance void Game.BlockColorsMap::.ctor(valuetype [Engine]Engine.Color,
                                                                  valuetype [Engine]Engine.Color,
                                                                  valuetype [Engine]Engine.Color,
                                                                  valuetype [Engine]Engine.Color)
    IL_0196:  stsfld     class Game.BlockColorsMap Game.BlockColorsMap::TallSpruceLeavesColorsMap
    IL_019b:  ldc.i4.s   96
    IL_019d:  ldc.i4     0xa1
    IL_01a2:  ldc.i4.s   123
    IL_01a4:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_01a9:  ldc.i4     0xae
    IL_01ae:  ldc.i4     0xa4
    IL_01b3:  ldc.i4.s   42
    IL_01b5:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_01ba:  ldc.i4.s   96
    IL_01bc:  ldc.i4     0xa1
    IL_01c1:  ldc.i4.s   123
    IL_01c3:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_01c8:  ldc.i4.s   30
    IL_01ca:  ldc.i4     0xbf
    IL_01cf:  ldc.i4.1
    IL_01d0:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_01d5:  newobj     instance void Game.BlockColorsMap::.ctor(valuetype [Engine]Engine.Color,
                                                                  valuetype [Engine]Engine.Color,
                                                                  valuetype [Engine]Engine.Color,
                                                                  valuetype [Engine]Engine.Color)
    IL_01da:  stsfld     class Game.BlockColorsMap Game.BlockColorsMap::IvyColorsMap
    IL_01df:  ldc.i4.s   80
    IL_01e1:  ldc.i4.s   110
    IL_01e3:  ldc.i4.s   90
    IL_01e5:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_01ea:  ldc.i4.s   110
    IL_01ec:  ldc.i4.s   110
    IL_01ee:  ldc.i4.s   50
    IL_01f0:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_01f5:  ldc.i4.s   80
    IL_01f7:  ldc.i4.s   110
    IL_01f9:  ldc.i4.s   90
    IL_01fb:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0200:  ldc.i4.s   110
    IL_0202:  ldc.i4.s   110
    IL_0204:  ldc.i4.s   50
    IL_0206:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_020b:  newobj     instance void Game.BlockColorsMap::.ctor(valuetype [Engine]Engine.Color,
                                                                  valuetype [Engine]Engine.Color,
                                                                  valuetype [Engine]Engine.Color,
                                                                  valuetype [Engine]Engine.Color)
    IL_0210:  stsfld     class Game.BlockColorsMap Game.BlockColorsMap::KelpColorsMap
    IL_0215:  ldc.i4.s   50
    IL_0217:  ldc.i4.s   120
    IL_0219:  ldc.i4.s   110
    IL_021b:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0220:  ldc.i4.s   80
    IL_0222:  ldc.i4.s   120
    IL_0224:  ldc.i4.s   70
    IL_0226:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_022b:  ldc.i4.s   50
    IL_022d:  ldc.i4.s   120
    IL_022f:  ldc.i4.s   110
    IL_0231:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0236:  ldc.i4.s   80
    IL_0238:  ldc.i4.s   120
    IL_023a:  ldc.i4.s   70
    IL_023c:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0241:  newobj     instance void Game.BlockColorsMap::.ctor(valuetype [Engine]Engine.Color,
                                                                  valuetype [Engine]Engine.Color,
                                                                  valuetype [Engine]Engine.Color,
                                                                  valuetype [Engine]Engine.Color)
    IL_0246:  stsfld     class Game.BlockColorsMap Game.BlockColorsMap::SeagrassColorsMap
    IL_024b:  ret
  } // end of method BlockColorsMap::.cctor

} // end of class Game.BlockColorsMap