.class public auto ansi beforefieldinit Game.Random
       extends [System.Runtime]System.Object
{
  .field private static int32 m_counter
  .field private uint64 m_seed
  .field private static literal uint64 m_multiplier = uint64(0x5DEECE66D)
  .field private static literal uint64 m_addend = uint64(0xB)
  .field private static literal uint64 m_mask = uint64(0xFFFFFFFFFFFF)
  .field public static initonly class Game.Random GlobalRandom
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       26 (0x1a)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0x3e5
    IL_0006:  ldsfld     int32 Game.Random::m_counter
    IL_000b:  dup
    IL_000c:  ldc.i4.1
    IL_000d:  add
    IL_000e:  stsfld     int32 Game.Random::m_counter
    IL_0013:  mul
    IL_0014:  call       instance void Game.Random::.ctor(int32)
    IL_0019:  ret
  } // end of method Random::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(int32 seed) cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  call       instance void Game.Random::Reset(int32)
    IL_000d:  ret
  } // end of method Random::.ctor

  .method public hidebysig instance void 
          Reset(int32 seed) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  conv.i8
    IL_0003:  ldc.i8     0x5deece66d
    IL_000c:  xor
    IL_000d:  stfld      uint64 Game.Random::m_seed
    IL_0012:  ret
  } // end of method Random::Reset

  .method public hidebysig instance int32 
          Sign() cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance int32 Game.Random::Int()
    IL_0006:  ldc.i4.2
    IL_0007:  rem
    IL_0008:  brfalse.s  IL_000c

    IL_000a:  ldc.i4.1
    IL_000b:  ret

    IL_000c:  ldc.i4.m1
    IL_000d:  ret
  } // end of method Random::Sign

  .method public hidebysig instance bool 
          Bool() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance int32 Game.Random::Int()
    IL_0006:  ldc.i4.2
    IL_0007:  rem
    IL_0008:  ldc.i4.0
    IL_0009:  ceq
    IL_000b:  ret
  } // end of method Random::Bool

  .method public hidebysig instance bool 
          Bool(float32 probability) cil managed
  {
    // 代码大小       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance int32 Game.Random::Int()
    IL_0006:  conv.r4
    IL_0007:  ldc.r4     2.1474839e+009
    IL_000c:  div
    IL_000d:  ldarg.1
    IL_000e:  clt
    IL_0010:  ret
  } // end of method Random::Bool

  .method public hidebysig instance int32 
          Int() cil managed
  {
    // 代码大小       47 (0x2f)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      uint64 Game.Random::m_seed
    IL_0007:  ldc.i8     0x5deece66d
    IL_0010:  mul
    IL_0011:  ldc.i4.s   11
    IL_0013:  conv.i8
    IL_0014:  add
    IL_0015:  ldc.i8     0xffffffffffff
    IL_001e:  and
    IL_001f:  stfld      uint64 Game.Random::m_seed
    IL_0024:  ldarg.0
    IL_0025:  ldfld      uint64 Game.Random::m_seed
    IL_002a:  ldc.i4.s   17
    IL_002c:  shr.un
    IL_002d:  conv.i4
    IL_002e:  ret
  } // end of method Random::Int

  .method public hidebysig instance int32 
          UniformInt(int32 min,
                     int32 max) cil managed
  {
    // 代码大小       26 (0x1a)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  conv.i8
    IL_0002:  ldarg.0
    IL_0003:  call       instance int32 Game.Random::Int()
    IL_0008:  conv.i8
    IL_0009:  ldarg.2
    IL_000a:  ldarg.1
    IL_000b:  sub
    IL_000c:  ldc.i4.1
    IL_000d:  add
    IL_000e:  conv.i8
    IL_000f:  mul
    IL_0010:  ldc.i4     0x80000000
    IL_0015:  conv.u8
    IL_0016:  div
    IL_0017:  add
    IL_0018:  conv.i4
    IL_0019:  ret
  } // end of method Random::UniformInt

  .method public hidebysig instance float32 
          UniformFloat(float32 min,
                       float32 max) cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  4
    .locals init (float32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance int32 Game.Random::Int()
    IL_0006:  conv.r4
    IL_0007:  ldc.r4     2.1474839e+009
    IL_000c:  div
    IL_000d:  stloc.0
    IL_000e:  ldarg.1
    IL_000f:  ldloc.0
    IL_0010:  ldarg.2
    IL_0011:  ldarg.1
    IL_0012:  sub
    IL_0013:  mul
    IL_0014:  add
    IL_0015:  ret
  } // end of method Random::UniformFloat

  .method public hidebysig instance float32 
          NormalFloat(float32 mean,
                      float32 stddev) cil managed
  {
    // 代码大小       258 (0x102)
    .maxstack  9
    .locals init (float32 V_0,
             float32 V_1,
             float32 V_2,
             float32 V_3,
             float32 V_4,
             float32 V_5,
             float32 V_6)
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     0.0
    IL_0006:  ldc.r4     1.
    IL_000b:  call       instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  conv.r8
    IL_0013:  ldc.r8     0.5
    IL_001c:  bge.un.s   IL_0086

    IL_001e:  ldc.r4     -2.
    IL_0023:  ldloc.0
    IL_0024:  call       float32 [Engine]Engine.MathUtils::Log(float32)
    IL_0029:  mul
    IL_002a:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
    IL_002f:  stloc.1
    IL_0030:  ldc.r4     0.32223243
    IL_0035:  ldloc.1
    IL_0036:  ldc.r4     1.
    IL_003b:  ldloc.1
    IL_003c:  ldc.r4     0.34224209
    IL_0041:  ldloc.1
    IL_0042:  ldc.r4     2.0423122e-002
    IL_0047:  ldloc.1
    IL_0048:  ldc.r4     4.5364221e-005
    IL_004d:  mul
    IL_004e:  add
    IL_004f:  mul
    IL_0050:  add
    IL_0051:  mul
    IL_0052:  add
    IL_0053:  mul
    IL_0054:  add
    IL_0055:  stloc.2
    IL_0056:  ldc.r4     9.9348463e-002
    IL_005b:  ldloc.1
    IL_005c:  ldc.r4     0.58858156
    IL_0061:  ldloc.1
    IL_0062:  ldc.r4     0.53110349
    IL_0067:  ldloc.1
    IL_0068:  ldc.r4     0.10353775
    IL_006d:  ldloc.1
    IL_006e:  ldc.r4     3.8560701e-003
    IL_0073:  mul
    IL_0074:  add
    IL_0075:  mul
    IL_0076:  add
    IL_0077:  mul
    IL_0078:  add
    IL_0079:  mul
    IL_007a:  add
    IL_007b:  stloc.3
    IL_007c:  ldarg.1
    IL_007d:  ldarg.2
    IL_007e:  ldloc.2
    IL_007f:  ldloc.3
    IL_0080:  div
    IL_0081:  ldloc.1
    IL_0082:  sub
    IL_0083:  mul
    IL_0084:  add
    IL_0085:  ret

    IL_0086:  ldc.r4     -2.
    IL_008b:  ldc.r4     1.
    IL_0090:  ldloc.0
    IL_0091:  sub
    IL_0092:  call       float32 [Engine]Engine.MathUtils::Log(float32)
    IL_0097:  mul
    IL_0098:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
    IL_009d:  stloc.s    V_4
    IL_009f:  ldc.r4     0.32223243
    IL_00a4:  ldloc.s    V_4
    IL_00a6:  ldc.r4     1.
    IL_00ab:  ldloc.s    V_4
    IL_00ad:  ldc.r4     0.34224209
    IL_00b2:  ldloc.s    V_4
    IL_00b4:  ldc.r4     2.0423122e-002
    IL_00b9:  ldloc.s    V_4
    IL_00bb:  ldc.r4     4.5364221e-005
    IL_00c0:  mul
    IL_00c1:  add
    IL_00c2:  mul
    IL_00c3:  add
    IL_00c4:  mul
    IL_00c5:  add
    IL_00c6:  mul
    IL_00c7:  add
    IL_00c8:  stloc.s    V_5
    IL_00ca:  ldc.r4     9.9348463e-002
    IL_00cf:  ldloc.s    V_4
    IL_00d1:  ldc.r4     0.58858156
    IL_00d6:  ldloc.s    V_4
    IL_00d8:  ldc.r4     0.53110349
    IL_00dd:  ldloc.s    V_4
    IL_00df:  ldc.r4     0.10353775
    IL_00e4:  ldloc.s    V_4
    IL_00e6:  ldc.r4     3.8560701e-003
    IL_00eb:  mul
    IL_00ec:  add
    IL_00ed:  mul
    IL_00ee:  add
    IL_00ef:  mul
    IL_00f0:  add
    IL_00f1:  mul
    IL_00f2:  add
    IL_00f3:  stloc.s    V_6
    IL_00f5:  ldarg.1
    IL_00f6:  ldarg.2
    IL_00f7:  ldloc.s    V_5
    IL_00f9:  ldloc.s    V_6
    IL_00fb:  div
    IL_00fc:  ldloc.s    V_4
    IL_00fe:  sub
    IL_00ff:  mul
    IL_0100:  sub
    IL_0101:  ret
  } // end of method Random::NormalFloat

  .method public hidebysig instance valuetype [Engine]Engine.Vector2 
          Vector2(float32 length,
                  [opt] bool circular) cil managed
  {
    .param [2] = bool(false)
    // 代码大小       73 (0x49)
    .maxstack  5
    .locals init (valuetype [Engine]Engine.Vector2 V_0,
             float32 V_1)
    IL_0000:  ldloca.s   V_0
    IL_0002:  ldarg.0
    IL_0003:  ldc.r4     -1.
    IL_0008:  ldc.r4     1.
    IL_000d:  call       instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0012:  ldarg.0
    IL_0013:  ldc.r4     -1.
    IL_0018:  ldc.r4     1.
    IL_001d:  call       instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0022:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0027:  ldloca.s   V_0
    IL_0029:  call       instance float32 [Engine]Engine.Vector2::LengthSquared()
    IL_002e:  stloc.1
    IL_002f:  ldarg.2
    IL_0030:  brfalse.s  IL_003a

    IL_0032:  ldloc.1
    IL_0033:  ldc.r4     1.
    IL_0038:  bgt.s      IL_0000

    IL_003a:  ldloc.0
    IL_003b:  ldarg.1
    IL_003c:  ldloc.1
    IL_003d:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
    IL_0042:  div
    IL_0043:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0048:  ret
  } // end of method Random::Vector2

  .method public hidebysig instance valuetype [Engine]Engine.Vector2 
          UniformVector2(float32 minLength,
                         float32 maxLength,
                         [opt] bool circular) cil managed
  {
    .param [3] = bool(false)
    // 代码大小       80 (0x50)
    .maxstack  5
    .locals init (valuetype [Engine]Engine.Vector2 V_0,
             float32 V_1)
    IL_0000:  ldloca.s   V_0
    IL_0002:  ldarg.0
    IL_0003:  ldc.r4     -1.
    IL_0008:  ldc.r4     1.
    IL_000d:  call       instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0012:  ldarg.0
    IL_0013:  ldc.r4     -1.
    IL_0018:  ldc.r4     1.
    IL_001d:  call       instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0022:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0027:  ldloca.s   V_0
    IL_0029:  call       instance float32 [Engine]Engine.Vector2::LengthSquared()
    IL_002e:  stloc.1
    IL_002f:  ldarg.3
    IL_0030:  brfalse.s  IL_003a

    IL_0032:  ldloc.1
    IL_0033:  ldc.r4     1.
    IL_0038:  bgt.s      IL_0000

    IL_003a:  ldloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldarg.1
    IL_003d:  ldarg.2
    IL_003e:  call       instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0043:  ldloc.1
    IL_0044:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
    IL_0049:  div
    IL_004a:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_004f:  ret
  } // end of method Random::UniformVector2

  .method public hidebysig instance valuetype [Engine]Engine.Vector3 
          Vector3(float32 length,
                  [opt] bool spherical) cil managed
  {
    .param [2] = bool(false)
    // 代码大小       89 (0x59)
    .maxstack  6
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             float32 V_1)
    IL_0000:  ldloca.s   V_0
    IL_0002:  ldarg.0
    IL_0003:  ldc.r4     -1.
    IL_0008:  ldc.r4     1.
    IL_000d:  call       instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0012:  ldarg.0
    IL_0013:  ldc.r4     -1.
    IL_0018:  ldc.r4     1.
    IL_001d:  call       instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0022:  ldarg.0
    IL_0023:  ldc.r4     -1.
    IL_0028:  ldc.r4     1.
    IL_002d:  call       instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0032:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0037:  ldloca.s   V_0
    IL_0039:  call       instance float32 [Engine]Engine.Vector3::LengthSquared()
    IL_003e:  stloc.1
    IL_003f:  ldarg.2
    IL_0040:  brfalse.s  IL_004a

    IL_0042:  ldloc.1
    IL_0043:  ldc.r4     1.
    IL_0048:  bgt.s      IL_0000

    IL_004a:  ldloc.0
    IL_004b:  ldarg.1
    IL_004c:  ldloc.1
    IL_004d:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
    IL_0052:  div
    IL_0053:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0058:  ret
  } // end of method Random::Vector3

  .method public hidebysig instance valuetype [Engine]Engine.Vector3 
          UniformVector3(float32 minLength,
                         float32 maxLength,
                         [opt] bool spherical) cil managed
  {
    .param [3] = bool(false)
    // 代码大小       96 (0x60)
    .maxstack  6
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             float32 V_1)
    IL_0000:  ldloca.s   V_0
    IL_0002:  ldarg.0
    IL_0003:  ldc.r4     -1.
    IL_0008:  ldc.r4     1.
    IL_000d:  call       instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0012:  ldarg.0
    IL_0013:  ldc.r4     -1.
    IL_0018:  ldc.r4     1.
    IL_001d:  call       instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0022:  ldarg.0
    IL_0023:  ldc.r4     -1.
    IL_0028:  ldc.r4     1.
    IL_002d:  call       instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0032:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0037:  ldloca.s   V_0
    IL_0039:  call       instance float32 [Engine]Engine.Vector3::LengthSquared()
    IL_003e:  stloc.1
    IL_003f:  ldarg.3
    IL_0040:  brfalse.s  IL_004a

    IL_0042:  ldloc.1
    IL_0043:  ldc.r4     1.
    IL_0048:  bgt.s      IL_0000

    IL_004a:  ldloc.0
    IL_004b:  ldarg.0
    IL_004c:  ldarg.1
    IL_004d:  ldarg.2
    IL_004e:  call       instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0053:  ldloc.1
    IL_0054:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
    IL_0059:  div
    IL_005a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_005f:  ret
  } // end of method Random::UniformVector3

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  call       int64 [System.Runtime.Extensions]System.Diagnostics.Stopwatch::GetTimestamp()
    IL_0005:  conv.i4
    IL_0006:  stsfld     int32 Game.Random::m_counter
    IL_000b:  ldc.i4.0
    IL_000c:  newobj     instance void Game.Random::.ctor(int32)
    IL_0011:  stsfld     class Game.Random Game.Random::GlobalRandom
    IL_0016:  ret
  } // end of method Random::.cctor

} // end of class Game.Random