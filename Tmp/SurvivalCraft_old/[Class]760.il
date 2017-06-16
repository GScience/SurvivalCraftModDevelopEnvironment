.class public sequential ansi sealed beforefieldinit Game.CellFace
       extends [System.Runtime]System.ValueType
       implements class [System.Runtime]System.IEquatable`1<valuetype Game.CellFace>
{
  .field public int32 X
  .field public int32 Y
  .field public int32 Z
  .field public int32 Face
  .field private static initonly int32[] m_oppositeFaces
  .field private static initonly valuetype [Engine]Engine.Point3[] m_faceToPoint3
  .field private static initonly valuetype [Engine]Engine.Vector3[] m_faceToVector3
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(int32 x,
                               int32 y,
                               int32 z,
                               int32 face) cil managed
  {
    // 代码大小       30 (0x1e)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 Game.CellFace::X
    IL_0007:  ldarg.0
    IL_0008:  ldarg.2
    IL_0009:  stfld      int32 Game.CellFace::Y
    IL_000e:  ldarg.0
    IL_000f:  ldarg.3
    IL_0010:  stfld      int32 Game.CellFace::Z
    IL_0015:  ldarg.0
    IL_0016:  ldarg.s    face
    IL_0018:  stfld      int32 Game.CellFace::Face
    IL_001d:  ret
  } // end of method CellFace::.ctor

  .method public hidebysig specialname instance valuetype [Engine]Engine.Point3 
          get_Point() cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.CellFace::X
    IL_0006:  ldarg.0
    IL_0007:  ldfld      int32 Game.CellFace::Y
    IL_000c:  ldarg.0
    IL_000d:  ldfld      int32 Game.CellFace::Z
    IL_0012:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0017:  ret
  } // end of method CellFace::get_Point

  .method public hidebysig specialname instance void 
          set_Point(valuetype [Engine]Engine.Point3 'value') cil managed
  {
    // 代码大小       37 (0x25)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0007:  stfld      int32 Game.CellFace::X
    IL_000c:  ldarg.0
    IL_000d:  ldarg.1
    IL_000e:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0013:  stfld      int32 Game.CellFace::Y
    IL_0018:  ldarg.0
    IL_0019:  ldarg.1
    IL_001a:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_001f:  stfld      int32 Game.CellFace::Z
    IL_0024:  ret
  } // end of method CellFace::set_Point

  .method public hidebysig static int32  OppositeFace(int32 face) cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldsfld     int32[] Game.CellFace::m_oppositeFaces
    IL_0005:  ldarg.0
    IL_0006:  ldelem.i4
    IL_0007:  ret
  } // end of method CellFace::OppositeFace

  .method public hidebysig static valuetype [Engine]Engine.Point3 
          FaceToPoint3(int32 face) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldsfld     valuetype [Engine]Engine.Point3[] Game.CellFace::m_faceToPoint3
    IL_0005:  ldarg.0
    IL_0006:  ldelem     [Engine]Engine.Point3
    IL_000b:  ret
  } // end of method CellFace::FaceToPoint3

  .method public hidebysig static valuetype [Engine]Engine.Vector3 
          FaceToVector3(int32 face) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldsfld     valuetype [Engine]Engine.Vector3[] Game.CellFace::m_faceToVector3
    IL_0005:  ldarg.0
    IL_0006:  ldelem     [Engine]Engine.Vector3
    IL_000b:  ret
  } // end of method CellFace::FaceToVector3

  .method public hidebysig static int32  Point3ToFace(valuetype [Engine]Engine.Point3 p,
                                                      [opt] int32 maxFace) cil managed
  {
    .param [2] = int32(0x00000005)
    // 代码大小       54 (0x36)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.0
    IL_0002:  ldc.i4.5
    IL_0003:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_0008:  starg.s    maxFace
    IL_000a:  ldc.i4.0
    IL_000b:  stloc.0
    IL_000c:  br.s       IL_0027

    IL_000e:  ldsfld     valuetype [Engine]Engine.Point3[] Game.CellFace::m_faceToPoint3
    IL_0013:  ldloc.0
    IL_0014:  ldelem     [Engine]Engine.Point3
    IL_0019:  ldarg.0
    IL_001a:  call       bool [Engine]Engine.Point3::op_Equality(valuetype [Engine]Engine.Point3,
                                                                 valuetype [Engine]Engine.Point3)
    IL_001f:  brfalse.s  IL_0023

    IL_0021:  ldloc.0
    IL_0022:  ret

    IL_0023:  ldloc.0
    IL_0024:  ldc.i4.1
    IL_0025:  add
    IL_0026:  stloc.0
    IL_0027:  ldloc.0
    IL_0028:  ldarg.1
    IL_0029:  blt.s      IL_000e

    IL_002b:  ldstr      "Invalid Point3."
    IL_0030:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0035:  throw
  } // end of method CellFace::Point3ToFace

  .method public hidebysig static int32  Vector3ToFace(valuetype [Engine]Engine.Vector3 v,
                                                       [opt] int32 maxFace) cil managed
  {
    .param [2] = int32(0x00000005)
    // 代码大小       58 (0x3a)
    .maxstack  3
    .locals init (float32 V_0,
             int32 V_1,
             int32 V_2,
             float32 V_3)
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.0
    IL_0002:  ldc.i4.5
    IL_0003:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_0008:  starg.s    maxFace
    IL_000a:  ldc.r4     (00 00 80 FF)
    IL_000f:  stloc.0
    IL_0010:  ldc.i4.0
    IL_0011:  stloc.1
    IL_0012:  ldc.i4.0
    IL_0013:  stloc.2
    IL_0014:  br.s       IL_0034

    IL_0016:  ldsfld     valuetype [Engine]Engine.Vector3[] Game.CellFace::m_faceToVector3
    IL_001b:  ldloc.2
    IL_001c:  ldelem     [Engine]Engine.Vector3
    IL_0021:  ldarg.0
    IL_0022:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_0027:  stloc.3
    IL_0028:  ldloc.3
    IL_0029:  ldloc.0
    IL_002a:  ble.un.s   IL_0030

    IL_002c:  ldloc.2
    IL_002d:  stloc.1
    IL_002e:  ldloc.3
    IL_002f:  stloc.0
    IL_0030:  ldloc.2
    IL_0031:  ldc.i4.1
    IL_0032:  add
    IL_0033:  stloc.2
    IL_0034:  ldloc.2
    IL_0035:  ldarg.1
    IL_0036:  ble.s      IL_0016

    IL_0038:  ldloc.1
    IL_0039:  ret
  } // end of method CellFace::Vector3ToFace

  .method public hidebysig static valuetype Game.CellFace 
          FromAxisAndDirection(int32 x,
                               int32 y,
                               int32 z,
                               int32 axis,
                               float32 direction) cil managed
  {
    // 代码大小       109 (0x6d)
    .maxstack  3
    .locals init (valuetype Game.CellFace V_0)
    IL_0000:  ldloca.s   V_0
    IL_0002:  initobj    Game.CellFace
    IL_0008:  ldloca.s   V_0
    IL_000a:  ldarg.0
    IL_000b:  stfld      int32 Game.CellFace::X
    IL_0010:  ldloca.s   V_0
    IL_0012:  ldarg.1
    IL_0013:  stfld      int32 Game.CellFace::Y
    IL_0018:  ldloca.s   V_0
    IL_001a:  ldarg.2
    IL_001b:  stfld      int32 Game.CellFace::Z
    IL_0020:  ldarg.3
    IL_0021:  brtrue.s   IL_0039

    IL_0023:  ldloca.s   V_0
    IL_0025:  ldarg.s    direction
    IL_0027:  ldc.r4     0.0
    IL_002c:  bgt.s      IL_0031

    IL_002e:  ldc.i4.3
    IL_002f:  br.s       IL_0032

    IL_0031:  ldc.i4.1
    IL_0032:  stfld      int32 Game.CellFace::Face
    IL_0037:  br.s       IL_006b

    IL_0039:  ldarg.3
    IL_003a:  ldc.i4.1
    IL_003b:  bne.un.s   IL_0053

    IL_003d:  ldloca.s   V_0
    IL_003f:  ldarg.s    direction
    IL_0041:  ldc.r4     0.0
    IL_0046:  bgt.s      IL_004b

    IL_0048:  ldc.i4.5
    IL_0049:  br.s       IL_004c

    IL_004b:  ldc.i4.4
    IL_004c:  stfld      int32 Game.CellFace::Face
    IL_0051:  br.s       IL_006b

    IL_0053:  ldarg.3
    IL_0054:  ldc.i4.2
    IL_0055:  bne.un.s   IL_006b

    IL_0057:  ldloca.s   V_0
    IL_0059:  ldarg.s    direction
    IL_005b:  ldc.r4     0.0
    IL_0060:  bgt.s      IL_0065

    IL_0062:  ldc.i4.2
    IL_0063:  br.s       IL_0066

    IL_0065:  ldc.i4.0
    IL_0066:  stfld      int32 Game.CellFace::Face
    IL_006b:  ldloc.0
    IL_006c:  ret
  } // end of method CellFace::FromAxisAndDirection

  .method public hidebysig instance valuetype [Engine]Engine.Plane 
          CalculatePlane() cil managed
  {
    // 代码大小       245 (0xf5)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.CellFace::Face
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  switch     ( 
                          IL_0026,
                          IL_004a,
                          IL_006d,
                          IL_008e,
                          IL_00b0)
    IL_0021:  br         IL_00d4

    IL_0026:  ldc.r4     0.0
    IL_002b:  ldc.r4     0.0
    IL_0030:  ldc.r4     1.
    IL_0035:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_003a:  ldarg.0
    IL_003b:  ldfld      int32 Game.CellFace::Z
    IL_0040:  ldc.i4.1
    IL_0041:  add
    IL_0042:  neg
    IL_0043:  conv.r4
    IL_0044:  newobj     instance void [Engine]Engine.Plane::.ctor(valuetype [Engine]Engine.Vector3,
                                                                   float32)
    IL_0049:  ret

    IL_004a:  ldc.r4     -1.
    IL_004f:  ldc.r4     0.0
    IL_0054:  ldc.r4     0.0
    IL_0059:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_005e:  ldarg.0
    IL_005f:  ldfld      int32 Game.CellFace::X
    IL_0064:  ldc.i4.1
    IL_0065:  add
    IL_0066:  conv.r4
    IL_0067:  newobj     instance void [Engine]Engine.Plane::.ctor(valuetype [Engine]Engine.Vector3,
                                                                   float32)
    IL_006c:  ret

    IL_006d:  ldc.r4     0.0
    IL_0072:  ldc.r4     0.0
    IL_0077:  ldc.r4     -1.
    IL_007c:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0081:  ldarg.0
    IL_0082:  ldfld      int32 Game.CellFace::Z
    IL_0087:  conv.r4
    IL_0088:  newobj     instance void [Engine]Engine.Plane::.ctor(valuetype [Engine]Engine.Vector3,
                                                                   float32)
    IL_008d:  ret

    IL_008e:  ldc.r4     1.
    IL_0093:  ldc.r4     0.0
    IL_0098:  ldc.r4     0.0
    IL_009d:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00a2:  ldarg.0
    IL_00a3:  ldfld      int32 Game.CellFace::X
    IL_00a8:  neg
    IL_00a9:  conv.r4
    IL_00aa:  newobj     instance void [Engine]Engine.Plane::.ctor(valuetype [Engine]Engine.Vector3,
                                                                   float32)
    IL_00af:  ret

    IL_00b0:  ldc.r4     0.0
    IL_00b5:  ldc.r4     1.
    IL_00ba:  ldc.r4     0.0
    IL_00bf:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00c4:  ldarg.0
    IL_00c5:  ldfld      int32 Game.CellFace::Y
    IL_00ca:  ldc.i4.1
    IL_00cb:  add
    IL_00cc:  neg
    IL_00cd:  conv.r4
    IL_00ce:  newobj     instance void [Engine]Engine.Plane::.ctor(valuetype [Engine]Engine.Vector3,
                                                                   float32)
    IL_00d3:  ret

    IL_00d4:  ldc.r4     0.0
    IL_00d9:  ldc.r4     -1.
    IL_00de:  ldc.r4     0.0
    IL_00e3:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00e8:  ldarg.0
    IL_00e9:  ldfld      int32 Game.CellFace::Y
    IL_00ee:  conv.r4
    IL_00ef:  newobj     instance void [Engine]Engine.Plane::.ctor(valuetype [Engine]Engine.Vector3,
                                                                   float32)
    IL_00f4:  ret
  } // end of method CellFace::CalculatePlane

  .method public hidebysig virtual instance int32 
          GetHashCode() cil managed
  {
    // 代码大小       35 (0x23)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.CellFace::X
    IL_0006:  ldc.i4.s   11
    IL_0008:  shl
    IL_0009:  ldarg.0
    IL_000a:  ldfld      int32 Game.CellFace::Y
    IL_000f:  ldc.i4.7
    IL_0010:  shl
    IL_0011:  add
    IL_0012:  ldarg.0
    IL_0013:  ldfld      int32 Game.CellFace::Z
    IL_0018:  ldc.i4.3
    IL_0019:  shl
    IL_001a:  add
    IL_001b:  ldarg.0
    IL_001c:  ldfld      int32 Game.CellFace::Face
    IL_0021:  add
    IL_0022:  ret
  } // end of method CellFace::GetHashCode

  .method public hidebysig virtual instance bool 
          Equals(object obj) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  isinst     Game.CellFace
    IL_0006:  brtrue.s   IL_000a

    IL_0008:  ldc.i4.0
    IL_0009:  ret

    IL_000a:  ldarg.0
    IL_000b:  ldarg.1
    IL_000c:  unbox.any  Game.CellFace
    IL_0011:  call       instance bool Game.CellFace::Equals(valuetype Game.CellFace)
    IL_0016:  ret
  } // end of method CellFace::Equals

  .method public hidebysig newslot virtual final 
          instance bool  Equals(valuetype Game.CellFace other) cil managed
  {
    // 代码大小       59 (0x3b)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldfld      int32 Game.CellFace::X
    IL_0006:  ldarg.0
    IL_0007:  ldfld      int32 Game.CellFace::X
    IL_000c:  bne.un.s   IL_0039

    IL_000e:  ldarg.1
    IL_000f:  ldfld      int32 Game.CellFace::Y
    IL_0014:  ldarg.0
    IL_0015:  ldfld      int32 Game.CellFace::Y
    IL_001a:  bne.un.s   IL_0039

    IL_001c:  ldarg.1
    IL_001d:  ldfld      int32 Game.CellFace::Z
    IL_0022:  ldarg.0
    IL_0023:  ldfld      int32 Game.CellFace::Z
    IL_0028:  bne.un.s   IL_0039

    IL_002a:  ldarg.1
    IL_002b:  ldfld      int32 Game.CellFace::Face
    IL_0030:  ldarg.0
    IL_0031:  ldfld      int32 Game.CellFace::Face
    IL_0036:  ceq
    IL_0038:  ret

    IL_0039:  ldc.i4.0
    IL_003a:  ret
  } // end of method CellFace::Equals

  .method public hidebysig virtual instance string 
          ToString() cil managed
  {
    // 代码大小       92 (0x5c)
    .maxstack  4
    IL_0000:  ldc.i4.7
    IL_0001:  newarr     [System.Runtime]System.String
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldarg.0
    IL_0009:  ldflda     int32 Game.CellFace::X
    IL_000e:  call       instance string [System.Runtime]System.Int32::ToString()
    IL_0013:  stelem.ref
    IL_0014:  dup
    IL_0015:  ldc.i4.1
    IL_0016:  ldstr      ", "
    IL_001b:  stelem.ref
    IL_001c:  dup
    IL_001d:  ldc.i4.2
    IL_001e:  ldarg.0
    IL_001f:  ldflda     int32 Game.CellFace::Y
    IL_0024:  call       instance string [System.Runtime]System.Int32::ToString()
    IL_0029:  stelem.ref
    IL_002a:  dup
    IL_002b:  ldc.i4.3
    IL_002c:  ldstr      ", "
    IL_0031:  stelem.ref
    IL_0032:  dup
    IL_0033:  ldc.i4.4
    IL_0034:  ldarg.0
    IL_0035:  ldflda     int32 Game.CellFace::Z
    IL_003a:  call       instance string [System.Runtime]System.Int32::ToString()
    IL_003f:  stelem.ref
    IL_0040:  dup
    IL_0041:  ldc.i4.5
    IL_0042:  ldstr      ", face "
    IL_0047:  stelem.ref
    IL_0048:  dup
    IL_0049:  ldc.i4.6
    IL_004a:  ldarg.0
    IL_004b:  ldflda     int32 Game.CellFace::Face
    IL_0050:  call       instance string [System.Runtime]System.Int32::ToString()
    IL_0055:  stelem.ref
    IL_0056:  call       string [System.Runtime]System.String::Concat(string[])
    IL_005b:  ret
  } // end of method CellFace::ToString

  .method public hidebysig specialname static 
          bool  op_Equality(valuetype Game.CellFace c1,
                            valuetype Game.CellFace c2) cil managed
  {
    // 代码大小       9 (0x9)
    .maxstack  8
    IL_0000:  ldarga.s   c1
    IL_0002:  ldarg.1
    IL_0003:  call       instance bool Game.CellFace::Equals(valuetype Game.CellFace)
    IL_0008:  ret
  } // end of method CellFace::op_Equality

  .method public hidebysig specialname static 
          bool  op_Inequality(valuetype Game.CellFace c1,
                              valuetype Game.CellFace c2) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarga.s   c1
    IL_0002:  ldarg.1
    IL_0003:  call       instance bool Game.CellFace::Equals(valuetype Game.CellFace)
    IL_0008:  ldc.i4.0
    IL_0009:  ceq
    IL_000b:  ret
  } // end of method CellFace::op_Inequality

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       297 (0x129)
    .maxstack  6
    IL_0000:  ldc.i4.6
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  dup
    IL_0007:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=24' '<PrivateImplementationDetails>'::'4A3AE00BDCFE6C85D93E81E06B2DD45A3486F0E7'
    IL_000c:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_0011:  stsfld     int32[] Game.CellFace::m_oppositeFaces
    IL_0016:  ldc.i4.6
    IL_0017:  newarr     [Engine]Engine.Point3
    IL_001c:  dup
    IL_001d:  ldc.i4.0
    IL_001e:  ldc.i4.0
    IL_001f:  ldc.i4.0
    IL_0020:  ldc.i4.1
    IL_0021:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0026:  stelem     [Engine]Engine.Point3
    IL_002b:  dup
    IL_002c:  ldc.i4.1
    IL_002d:  ldc.i4.1
    IL_002e:  ldc.i4.0
    IL_002f:  ldc.i4.0
    IL_0030:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0035:  stelem     [Engine]Engine.Point3
    IL_003a:  dup
    IL_003b:  ldc.i4.2
    IL_003c:  ldc.i4.0
    IL_003d:  ldc.i4.0
    IL_003e:  ldc.i4.m1
    IL_003f:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0044:  stelem     [Engine]Engine.Point3
    IL_0049:  dup
    IL_004a:  ldc.i4.3
    IL_004b:  ldc.i4.m1
    IL_004c:  ldc.i4.0
    IL_004d:  ldc.i4.0
    IL_004e:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0053:  stelem     [Engine]Engine.Point3
    IL_0058:  dup
    IL_0059:  ldc.i4.4
    IL_005a:  ldc.i4.0
    IL_005b:  ldc.i4.1
    IL_005c:  ldc.i4.0
    IL_005d:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0062:  stelem     [Engine]Engine.Point3
    IL_0067:  dup
    IL_0068:  ldc.i4.5
    IL_0069:  ldc.i4.0
    IL_006a:  ldc.i4.m1
    IL_006b:  ldc.i4.0
    IL_006c:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0071:  stelem     [Engine]Engine.Point3
    IL_0076:  stsfld     valuetype [Engine]Engine.Point3[] Game.CellFace::m_faceToPoint3
    IL_007b:  ldc.i4.6
    IL_007c:  newarr     [Engine]Engine.Vector3
    IL_0081:  dup
    IL_0082:  ldc.i4.0
    IL_0083:  ldc.r4     0.0
    IL_0088:  ldc.r4     0.0
    IL_008d:  ldc.r4     1.
    IL_0092:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0097:  stelem     [Engine]Engine.Vector3
    IL_009c:  dup
    IL_009d:  ldc.i4.1
    IL_009e:  ldc.r4     1.
    IL_00a3:  ldc.r4     0.0
    IL_00a8:  ldc.r4     0.0
    IL_00ad:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00b2:  stelem     [Engine]Engine.Vector3
    IL_00b7:  dup
    IL_00b8:  ldc.i4.2
    IL_00b9:  ldc.r4     0.0
    IL_00be:  ldc.r4     0.0
    IL_00c3:  ldc.r4     -1.
    IL_00c8:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00cd:  stelem     [Engine]Engine.Vector3
    IL_00d2:  dup
    IL_00d3:  ldc.i4.3
    IL_00d4:  ldc.r4     -1.
    IL_00d9:  ldc.r4     0.0
    IL_00de:  ldc.r4     0.0
    IL_00e3:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00e8:  stelem     [Engine]Engine.Vector3
    IL_00ed:  dup
    IL_00ee:  ldc.i4.4
    IL_00ef:  ldc.r4     0.0
    IL_00f4:  ldc.r4     1.
    IL_00f9:  ldc.r4     0.0
    IL_00fe:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0103:  stelem     [Engine]Engine.Vector3
    IL_0108:  dup
    IL_0109:  ldc.i4.5
    IL_010a:  ldc.r4     0.0
    IL_010f:  ldc.r4     -1.
    IL_0114:  ldc.r4     0.0
    IL_0119:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_011e:  stelem     [Engine]Engine.Vector3
    IL_0123:  stsfld     valuetype [Engine]Engine.Vector3[] Game.CellFace::m_faceToVector3
    IL_0128:  ret
  } // end of method CellFace::.cctor

  .property instance valuetype [Engine]Engine.Point3
          Point()
  {
    .get instance valuetype [Engine]Engine.Point3 Game.CellFace::get_Point()
    .set instance void Game.CellFace::set_Point(valuetype [Engine]Engine.Point3)
  } // end of property CellFace::Point
} // end of class Game.CellFace