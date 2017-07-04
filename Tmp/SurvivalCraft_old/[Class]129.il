.class public auto ansi beforefieldinit Game.BlockMesh
       extends [System.Runtime]System.Object
{
  .class sequential ansi sealed nested private beforefieldinit InternalVertex
         extends [System.Runtime]System.ValueType
  {
    .field public valuetype [Engine]Engine.Vector3 Position
    .field public valuetype [Engine]Engine.Vector3 Normal
    .field public valuetype [Engine]Engine.Vector2 TextureCoordinate
  } // end of class InternalVertex

  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.BlockMesh/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<valuetype Game.BlockMeshVertex,valuetype [Engine]Engine.Vector3> '<>9__3_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.BlockMesh/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.BlockMesh/'<>c' Game.BlockMesh/'<>c'::'<>9'
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

    .method assembly hidebysig instance valuetype [Engine]Engine.Vector3 
            '<CalculateBoundingBox>b__3_0'(valuetype Game.BlockMeshVertex v) cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
      IL_0006:  ret
    } // end of method '<>c'::'<CalculateBoundingBox>b__3_0'

  } // end of class '<>c'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass4_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public valuetype [Engine]Engine.Matrix matrix
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass4_0'::.ctor

    .method assembly hidebysig instance valuetype [Engine]Engine.Vector3 
            '<CalculateBoundingBox>b__0'(valuetype Game.BlockMeshVertex v) cil managed
    {
      // 代码大小       18 (0x12)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
      IL_0006:  ldarg.0
      IL_0007:  ldfld      valuetype [Engine]Engine.Matrix Game.BlockMesh/'<>c__DisplayClass4_0'::matrix
      IL_000c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Matrix)
      IL_0011:  ret
    } // end of method '<>c__DisplayClass4_0'::'<CalculateBoundingBox>b__0'

  } // end of class '<>c__DisplayClass4_0'

  .field public class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Vertices
  .field public class [Engine]Engine.DynamicArray`1<uint16> Indices
  .method public hidebysig instance valuetype [Engine]Engine.BoundingBox 
          CalculateBoundingBox() cil managed
  {
    // 代码大小       48 (0x30)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
    IL_0006:  ldsfld     class [System.Runtime]System.Func`2<valuetype Game.BlockMeshVertex,valuetype [Engine]Engine.Vector3> Game.BlockMesh/'<>c'::'<>9__3_0'
    IL_000b:  dup
    IL_000c:  brtrue.s   IL_0025

    IL_000e:  pop
    IL_000f:  ldsfld     class Game.BlockMesh/'<>c' Game.BlockMesh/'<>c'::'<>9'
    IL_0014:  ldftn      instance valuetype [Engine]Engine.Vector3 Game.BlockMesh/'<>c'::'<CalculateBoundingBox>b__3_0'(valuetype Game.BlockMeshVertex)
    IL_001a:  newobj     instance void class [System.Runtime]System.Func`2<valuetype Game.BlockMeshVertex,valuetype [Engine]Engine.Vector3>::.ctor(object,
                                                                                                                                                   native int)
    IL_001f:  dup
    IL_0020:  stsfld     class [System.Runtime]System.Func`2<valuetype Game.BlockMeshVertex,valuetype [Engine]Engine.Vector3> Game.BlockMesh/'<>c'::'<>9__3_0'
    IL_0025:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!1> [System.Linq]System.Linq.Enumerable::Select<valuetype Game.BlockMeshVertex,valuetype [Engine]Engine.Vector3>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                          class [System.Runtime]System.Func`2<!!0,!!1>)
    IL_002a:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(class [System.Runtime]System.Collections.Generic.IEnumerable`1<valuetype [Engine]Engine.Vector3>)
    IL_002f:  ret
  } // end of method BlockMesh::CalculateBoundingBox

  .method public hidebysig instance valuetype [Engine]Engine.BoundingBox 
          CalculateBoundingBox(valuetype [Engine]Engine.Matrix matrix) cil managed
  {
    // 代码大小       42 (0x2a)
    .maxstack  3
    .locals init (class Game.BlockMesh/'<>c__DisplayClass4_0' V_0)
    IL_0000:  newobj     instance void Game.BlockMesh/'<>c__DisplayClass4_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      valuetype [Engine]Engine.Matrix Game.BlockMesh/'<>c__DisplayClass4_0'::matrix
    IL_000d:  ldarg.0
    IL_000e:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
    IL_0013:  ldloc.0
    IL_0014:  ldftn      instance valuetype [Engine]Engine.Vector3 Game.BlockMesh/'<>c__DisplayClass4_0'::'<CalculateBoundingBox>b__0'(valuetype Game.BlockMeshVertex)
    IL_001a:  newobj     instance void class [System.Runtime]System.Func`2<valuetype Game.BlockMeshVertex,valuetype [Engine]Engine.Vector3>::.ctor(object,
                                                                                                                                                   native int)
    IL_001f:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!1> [System.Linq]System.Linq.Enumerable::Select<valuetype Game.BlockMeshVertex,valuetype [Engine]Engine.Vector3>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                          class [System.Runtime]System.Func`2<!!0,!!1>)
    IL_0024:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(class [System.Runtime]System.Collections.Generic.IEnumerable`1<valuetype [Engine]Engine.Vector3>)
    IL_0029:  ret
  } // end of method BlockMesh::CalculateBoundingBox

  .method public hidebysig static valuetype [Engine]Engine.Matrix 
          GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone modelBone) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelBone::get_ParentBone()
    IL_0006:  brfalse.s  IL_001f

    IL_0008:  ldarg.0
    IL_0009:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelBone::get_ParentBone()
    IL_000e:  call       valuetype [Engine]Engine.Matrix Game.BlockMesh::GetBoneAbsoluteTransform(class [Engine]Engine.Graphics.ModelBone)
    IL_0013:  ldarg.0
    IL_0014:  callvirt   instance valuetype [Engine]Engine.Matrix [Engine]Engine.Graphics.ModelBone::get_Transform()
    IL_0019:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_001e:  ret

    IL_001f:  ldarg.0
    IL_0020:  callvirt   instance valuetype [Engine]Engine.Matrix [Engine]Engine.Graphics.ModelBone::get_Transform()
    IL_0025:  ret
  } // end of method BlockMesh::GetBoneAbsoluteTransform

  .method public hidebysig instance void 
          AppendImageExtrusion(class [Engine]Engine.Media.Image image,
                               valuetype [Engine]Engine.Rectangle bounds,
                               valuetype [Engine]Engine.Vector3 size,
                               valuetype [Engine]Engine.Color color) cil managed
  {
    // 代码大小       3609 (0xe19)
    .maxstack  5
    .locals init (class Game.BlockMesh V_0,
             class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> V_1,
             class [Engine]Engine.DynamicArray`1<uint16> V_2,
             valuetype Game.BlockMeshVertex V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             bool V_7,
             int32 V_8,
             int32 V_9,
             int32 V_10,
             bool V_11,
             int32 V_12,
             int32 V_13,
             int32 V_14,
             bool V_15,
             int32 V_16,
             int32 V_17,
             int32 V_18,
             bool V_19,
             int32 V_20)
    IL_0000:  newobj     instance void Game.BlockMesh::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
    IL_000c:  stloc.1
    IL_000d:  ldloc.0
    IL_000e:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.BlockMesh::Indices
    IL_0013:  stloc.2
    IL_0014:  ldloc.1
    IL_0015:  ldloca.s   V_3
    IL_0017:  initobj    Game.BlockMeshVertex
    IL_001d:  ldloca.s   V_3
    IL_001f:  ldarg.2
    IL_0020:  ldfld      int32 [Engine]Engine.Rectangle::Left
    IL_0025:  conv.r4
    IL_0026:  ldarg.2
    IL_0027:  ldfld      int32 [Engine]Engine.Rectangle::Top
    IL_002c:  conv.r4
    IL_002d:  ldc.r4     -1.
    IL_0032:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0037:  stfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_003c:  ldloca.s   V_3
    IL_003e:  ldarg.2
    IL_003f:  ldfld      int32 [Engine]Engine.Rectangle::Left
    IL_0044:  conv.r4
    IL_0045:  ldarg.2
    IL_0046:  ldfld      int32 [Engine]Engine.Rectangle::Top
    IL_004b:  conv.r4
    IL_004c:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0051:  stfld      valuetype [Engine]Engine.Vector2 Game.BlockMeshVertex::TextureCoordinates
    IL_0056:  ldloc.3
    IL_0057:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::Add(!0)
    IL_005c:  ldloc.1
    IL_005d:  ldloca.s   V_3
    IL_005f:  initobj    Game.BlockMeshVertex
    IL_0065:  ldloca.s   V_3
    IL_0067:  ldarga.s   bounds
    IL_0069:  call       instance int32 [Engine]Engine.Rectangle::get_Right()
    IL_006e:  conv.r4
    IL_006f:  ldarg.2
    IL_0070:  ldfld      int32 [Engine]Engine.Rectangle::Top
    IL_0075:  conv.r4
    IL_0076:  ldc.r4     -1.
    IL_007b:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0080:  stfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_0085:  ldloca.s   V_3
    IL_0087:  ldarga.s   bounds
    IL_0089:  call       instance int32 [Engine]Engine.Rectangle::get_Right()
    IL_008e:  conv.r4
    IL_008f:  ldarg.2
    IL_0090:  ldfld      int32 [Engine]Engine.Rectangle::Top
    IL_0095:  conv.r4
    IL_0096:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_009b:  stfld      valuetype [Engine]Engine.Vector2 Game.BlockMeshVertex::TextureCoordinates
    IL_00a0:  ldloc.3
    IL_00a1:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::Add(!0)
    IL_00a6:  ldloc.1
    IL_00a7:  ldloca.s   V_3
    IL_00a9:  initobj    Game.BlockMeshVertex
    IL_00af:  ldloca.s   V_3
    IL_00b1:  ldarg.2
    IL_00b2:  ldfld      int32 [Engine]Engine.Rectangle::Left
    IL_00b7:  conv.r4
    IL_00b8:  ldarga.s   bounds
    IL_00ba:  call       instance int32 [Engine]Engine.Rectangle::get_Bottom()
    IL_00bf:  conv.r4
    IL_00c0:  ldc.r4     -1.
    IL_00c5:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00ca:  stfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_00cf:  ldloca.s   V_3
    IL_00d1:  ldarg.2
    IL_00d2:  ldfld      int32 [Engine]Engine.Rectangle::Left
    IL_00d7:  conv.r4
    IL_00d8:  ldarga.s   bounds
    IL_00da:  call       instance int32 [Engine]Engine.Rectangle::get_Bottom()
    IL_00df:  conv.r4
    IL_00e0:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00e5:  stfld      valuetype [Engine]Engine.Vector2 Game.BlockMeshVertex::TextureCoordinates
    IL_00ea:  ldloc.3
    IL_00eb:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::Add(!0)
    IL_00f0:  ldloc.1
    IL_00f1:  ldloca.s   V_3
    IL_00f3:  initobj    Game.BlockMeshVertex
    IL_00f9:  ldloca.s   V_3
    IL_00fb:  ldarga.s   bounds
    IL_00fd:  call       instance int32 [Engine]Engine.Rectangle::get_Right()
    IL_0102:  conv.r4
    IL_0103:  ldarga.s   bounds
    IL_0105:  call       instance int32 [Engine]Engine.Rectangle::get_Bottom()
    IL_010a:  conv.r4
    IL_010b:  ldc.r4     -1.
    IL_0110:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0115:  stfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_011a:  ldloca.s   V_3
    IL_011c:  ldarga.s   bounds
    IL_011e:  call       instance int32 [Engine]Engine.Rectangle::get_Right()
    IL_0123:  conv.r4
    IL_0124:  ldarga.s   bounds
    IL_0126:  call       instance int32 [Engine]Engine.Rectangle::get_Bottom()
    IL_012b:  conv.r4
    IL_012c:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0131:  stfld      valuetype [Engine]Engine.Vector2 Game.BlockMeshVertex::TextureCoordinates
    IL_0136:  ldloc.3
    IL_0137:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::Add(!0)
    IL_013c:  ldloc.2
    IL_013d:  ldloc.1
    IL_013e:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_0143:  ldc.i4.4
    IL_0144:  sub
    IL_0145:  conv.u2
    IL_0146:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_014b:  ldloc.2
    IL_014c:  ldloc.1
    IL_014d:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_0152:  ldc.i4.1
    IL_0153:  sub
    IL_0154:  conv.u2
    IL_0155:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_015a:  ldloc.2
    IL_015b:  ldloc.1
    IL_015c:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_0161:  ldc.i4.3
    IL_0162:  sub
    IL_0163:  conv.u2
    IL_0164:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0169:  ldloc.2
    IL_016a:  ldloc.1
    IL_016b:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_0170:  ldc.i4.1
    IL_0171:  sub
    IL_0172:  conv.u2
    IL_0173:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0178:  ldloc.2
    IL_0179:  ldloc.1
    IL_017a:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_017f:  ldc.i4.4
    IL_0180:  sub
    IL_0181:  conv.u2
    IL_0182:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0187:  ldloc.2
    IL_0188:  ldloc.1
    IL_0189:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_018e:  ldc.i4.2
    IL_018f:  sub
    IL_0190:  conv.u2
    IL_0191:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0196:  ldloc.1
    IL_0197:  ldloca.s   V_3
    IL_0199:  initobj    Game.BlockMeshVertex
    IL_019f:  ldloca.s   V_3
    IL_01a1:  ldarg.2
    IL_01a2:  ldfld      int32 [Engine]Engine.Rectangle::Left
    IL_01a7:  conv.r4
    IL_01a8:  ldarg.2
    IL_01a9:  ldfld      int32 [Engine]Engine.Rectangle::Top
    IL_01ae:  conv.r4
    IL_01af:  ldc.r4     1.
    IL_01b4:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01b9:  stfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_01be:  ldloca.s   V_3
    IL_01c0:  ldarg.2
    IL_01c1:  ldfld      int32 [Engine]Engine.Rectangle::Left
    IL_01c6:  conv.r4
    IL_01c7:  ldarg.2
    IL_01c8:  ldfld      int32 [Engine]Engine.Rectangle::Top
    IL_01cd:  conv.r4
    IL_01ce:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_01d3:  stfld      valuetype [Engine]Engine.Vector2 Game.BlockMeshVertex::TextureCoordinates
    IL_01d8:  ldloc.3
    IL_01d9:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::Add(!0)
    IL_01de:  ldloc.1
    IL_01df:  ldloca.s   V_3
    IL_01e1:  initobj    Game.BlockMeshVertex
    IL_01e7:  ldloca.s   V_3
    IL_01e9:  ldarga.s   bounds
    IL_01eb:  call       instance int32 [Engine]Engine.Rectangle::get_Right()
    IL_01f0:  conv.r4
    IL_01f1:  ldarg.2
    IL_01f2:  ldfld      int32 [Engine]Engine.Rectangle::Top
    IL_01f7:  conv.r4
    IL_01f8:  ldc.r4     1.
    IL_01fd:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0202:  stfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_0207:  ldloca.s   V_3
    IL_0209:  ldarga.s   bounds
    IL_020b:  call       instance int32 [Engine]Engine.Rectangle::get_Right()
    IL_0210:  conv.r4
    IL_0211:  ldarg.2
    IL_0212:  ldfld      int32 [Engine]Engine.Rectangle::Top
    IL_0217:  conv.r4
    IL_0218:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_021d:  stfld      valuetype [Engine]Engine.Vector2 Game.BlockMeshVertex::TextureCoordinates
    IL_0222:  ldloc.3
    IL_0223:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::Add(!0)
    IL_0228:  ldloc.1
    IL_0229:  ldloca.s   V_3
    IL_022b:  initobj    Game.BlockMeshVertex
    IL_0231:  ldloca.s   V_3
    IL_0233:  ldarg.2
    IL_0234:  ldfld      int32 [Engine]Engine.Rectangle::Left
    IL_0239:  conv.r4
    IL_023a:  ldarga.s   bounds
    IL_023c:  call       instance int32 [Engine]Engine.Rectangle::get_Bottom()
    IL_0241:  conv.r4
    IL_0242:  ldc.r4     1.
    IL_0247:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_024c:  stfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_0251:  ldloca.s   V_3
    IL_0253:  ldarg.2
    IL_0254:  ldfld      int32 [Engine]Engine.Rectangle::Left
    IL_0259:  conv.r4
    IL_025a:  ldarga.s   bounds
    IL_025c:  call       instance int32 [Engine]Engine.Rectangle::get_Bottom()
    IL_0261:  conv.r4
    IL_0262:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0267:  stfld      valuetype [Engine]Engine.Vector2 Game.BlockMeshVertex::TextureCoordinates
    IL_026c:  ldloc.3
    IL_026d:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::Add(!0)
    IL_0272:  ldloc.1
    IL_0273:  ldloca.s   V_3
    IL_0275:  initobj    Game.BlockMeshVertex
    IL_027b:  ldloca.s   V_3
    IL_027d:  ldarga.s   bounds
    IL_027f:  call       instance int32 [Engine]Engine.Rectangle::get_Right()
    IL_0284:  conv.r4
    IL_0285:  ldarga.s   bounds
    IL_0287:  call       instance int32 [Engine]Engine.Rectangle::get_Bottom()
    IL_028c:  conv.r4
    IL_028d:  ldc.r4     1.
    IL_0292:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0297:  stfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_029c:  ldloca.s   V_3
    IL_029e:  ldarga.s   bounds
    IL_02a0:  call       instance int32 [Engine]Engine.Rectangle::get_Right()
    IL_02a5:  conv.r4
    IL_02a6:  ldarga.s   bounds
    IL_02a8:  call       instance int32 [Engine]Engine.Rectangle::get_Bottom()
    IL_02ad:  conv.r4
    IL_02ae:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_02b3:  stfld      valuetype [Engine]Engine.Vector2 Game.BlockMeshVertex::TextureCoordinates
    IL_02b8:  ldloc.3
    IL_02b9:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::Add(!0)
    IL_02be:  ldloc.2
    IL_02bf:  ldloc.1
    IL_02c0:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_02c5:  ldc.i4.4
    IL_02c6:  sub
    IL_02c7:  conv.u2
    IL_02c8:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_02cd:  ldloc.2
    IL_02ce:  ldloc.1
    IL_02cf:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_02d4:  ldc.i4.3
    IL_02d5:  sub
    IL_02d6:  conv.u2
    IL_02d7:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_02dc:  ldloc.2
    IL_02dd:  ldloc.1
    IL_02de:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_02e3:  ldc.i4.1
    IL_02e4:  sub
    IL_02e5:  conv.u2
    IL_02e6:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_02eb:  ldloc.2
    IL_02ec:  ldloc.1
    IL_02ed:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_02f2:  ldc.i4.1
    IL_02f3:  sub
    IL_02f4:  conv.u2
    IL_02f5:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_02fa:  ldloc.2
    IL_02fb:  ldloc.1
    IL_02fc:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_0301:  ldc.i4.2
    IL_0302:  sub
    IL_0303:  conv.u2
    IL_0304:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0309:  ldloc.2
    IL_030a:  ldloc.1
    IL_030b:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_0310:  ldc.i4.4
    IL_0311:  sub
    IL_0312:  conv.u2
    IL_0313:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0318:  ldarg.2
    IL_0319:  ldfld      int32 [Engine]Engine.Rectangle::Left
    IL_031e:  ldc.i4.1
    IL_031f:  sub
    IL_0320:  stloc.s    V_4
    IL_0322:  br         IL_056a

    IL_0327:  ldc.i4.m1
    IL_0328:  stloc.s    V_5
    IL_032a:  ldarg.2
    IL_032b:  ldfld      int32 [Engine]Engine.Rectangle::Top
    IL_0330:  ldc.i4.1
    IL_0331:  sub
    IL_0332:  stloc.s    V_6
    IL_0334:  br         IL_0556

    IL_0339:  ldarga.s   bounds
    IL_033b:  ldloc.s    V_4
    IL_033d:  ldloc.s    V_6
    IL_033f:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_0344:  call       instance bool [Engine]Engine.Rectangle::Contains(valuetype [Engine]Engine.Point2)
    IL_0349:  brfalse.s  IL_0361

    IL_034b:  ldarg.1
    IL_034c:  ldloc.s    V_4
    IL_034e:  ldloc.s    V_6
    IL_0350:  callvirt   instance valuetype [Engine]Engine.Color [Engine]Engine.Media.Image::GetPixel(int32,
                                                                                                      int32)
    IL_0355:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_035a:  call       bool [Engine]Engine.Color::op_Equality(valuetype [Engine]Engine.Color,
                                                                valuetype [Engine]Engine.Color)
    IL_035f:  br.s       IL_0362

    IL_0361:  ldc.i4.1
    IL_0362:  ldarga.s   bounds
    IL_0364:  ldloc.s    V_4
    IL_0366:  ldc.i4.1
    IL_0367:  sub
    IL_0368:  ldloc.s    V_6
    IL_036a:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_036f:  call       instance bool [Engine]Engine.Rectangle::Contains(valuetype [Engine]Engine.Point2)
    IL_0374:  brfalse.s  IL_038e

    IL_0376:  ldarg.1
    IL_0377:  ldloc.s    V_4
    IL_0379:  ldc.i4.1
    IL_037a:  sub
    IL_037b:  ldloc.s    V_6
    IL_037d:  callvirt   instance valuetype [Engine]Engine.Color [Engine]Engine.Media.Image::GetPixel(int32,
                                                                                                      int32)
    IL_0382:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_0387:  call       bool [Engine]Engine.Color::op_Inequality(valuetype [Engine]Engine.Color,
                                                                  valuetype [Engine]Engine.Color)
    IL_038c:  br.s       IL_038f

    IL_038e:  ldc.i4.0
    IL_038f:  stloc.s    V_7
    IL_0391:  ldloc.s    V_7
    IL_0393:  and
    IL_0394:  brfalse.s  IL_03a7

    IL_0396:  ldloc.s    V_5
    IL_0398:  ldc.i4.0
    IL_0399:  bge        IL_0550

    IL_039e:  ldloc.s    V_6
    IL_03a0:  stloc.s    V_5
    IL_03a2:  br         IL_0550

    IL_03a7:  ldloc.s    V_5
    IL_03a9:  ldc.i4.0
    IL_03aa:  blt        IL_0550

    IL_03af:  ldloc.1
    IL_03b0:  ldloca.s   V_3
    IL_03b2:  initobj    Game.BlockMeshVertex
    IL_03b8:  ldloca.s   V_3
    IL_03ba:  ldloc.s    V_4
    IL_03bc:  conv.r4
    IL_03bd:  ldc.r4     9.9999998e-003
    IL_03c2:  sub
    IL_03c3:  ldloc.s    V_5
    IL_03c5:  conv.r4
    IL_03c6:  ldc.r4     9.9999998e-003
    IL_03cb:  sub
    IL_03cc:  ldc.r4     -1.01
    IL_03d1:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_03d6:  stfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_03db:  ldloca.s   V_3
    IL_03dd:  ldloc.s    V_4
    IL_03df:  ldc.i4.1
    IL_03e0:  sub
    IL_03e1:  conv.r4
    IL_03e2:  ldc.r4     9.9999998e-003
    IL_03e7:  add
    IL_03e8:  ldloc.s    V_5
    IL_03ea:  conv.r4
    IL_03eb:  ldc.r4     9.9999998e-003
    IL_03f0:  add
    IL_03f1:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_03f6:  stfld      valuetype [Engine]Engine.Vector2 Game.BlockMeshVertex::TextureCoordinates
    IL_03fb:  ldloc.3
    IL_03fc:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::Add(!0)
    IL_0401:  ldloc.1
    IL_0402:  ldloca.s   V_3
    IL_0404:  initobj    Game.BlockMeshVertex
    IL_040a:  ldloca.s   V_3
    IL_040c:  ldloc.s    V_4
    IL_040e:  conv.r4
    IL_040f:  ldc.r4     9.9999998e-003
    IL_0414:  sub
    IL_0415:  ldloc.s    V_5
    IL_0417:  conv.r4
    IL_0418:  ldc.r4     9.9999998e-003
    IL_041d:  sub
    IL_041e:  ldc.r4     1.01
    IL_0423:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0428:  stfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_042d:  ldloca.s   V_3
    IL_042f:  ldloc.s    V_4
    IL_0431:  conv.r4
    IL_0432:  ldc.r4     9.9999998e-003
    IL_0437:  sub
    IL_0438:  ldloc.s    V_5
    IL_043a:  conv.r4
    IL_043b:  ldc.r4     9.9999998e-003
    IL_0440:  add
    IL_0441:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0446:  stfld      valuetype [Engine]Engine.Vector2 Game.BlockMeshVertex::TextureCoordinates
    IL_044b:  ldloc.3
    IL_044c:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::Add(!0)
    IL_0451:  ldloc.1
    IL_0452:  ldloca.s   V_3
    IL_0454:  initobj    Game.BlockMeshVertex
    IL_045a:  ldloca.s   V_3
    IL_045c:  ldloc.s    V_4
    IL_045e:  conv.r4
    IL_045f:  ldc.r4     9.9999998e-003
    IL_0464:  sub
    IL_0465:  ldloc.s    V_6
    IL_0467:  conv.r4
    IL_0468:  ldc.r4     9.9999998e-003
    IL_046d:  add
    IL_046e:  ldc.r4     -1.01
    IL_0473:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0478:  stfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_047d:  ldloca.s   V_3
    IL_047f:  ldloc.s    V_4
    IL_0481:  ldc.i4.1
    IL_0482:  sub
    IL_0483:  conv.r4
    IL_0484:  ldc.r4     9.9999998e-003
    IL_0489:  add
    IL_048a:  ldloc.s    V_6
    IL_048c:  conv.r4
    IL_048d:  ldc.r4     9.9999998e-003
    IL_0492:  sub
    IL_0493:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0498:  stfld      valuetype [Engine]Engine.Vector2 Game.BlockMeshVertex::TextureCoordinates
    IL_049d:  ldloc.3
    IL_049e:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::Add(!0)
    IL_04a3:  ldloc.1
    IL_04a4:  ldloca.s   V_3
    IL_04a6:  initobj    Game.BlockMeshVertex
    IL_04ac:  ldloca.s   V_3
    IL_04ae:  ldloc.s    V_4
    IL_04b0:  conv.r4
    IL_04b1:  ldc.r4     9.9999998e-003
    IL_04b6:  sub
    IL_04b7:  ldloc.s    V_6
    IL_04b9:  conv.r4
    IL_04ba:  ldc.r4     9.9999998e-003
    IL_04bf:  add
    IL_04c0:  ldc.r4     1.01
    IL_04c5:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_04ca:  stfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_04cf:  ldloca.s   V_3
    IL_04d1:  ldloc.s    V_4
    IL_04d3:  conv.r4
    IL_04d4:  ldc.r4     9.9999998e-003
    IL_04d9:  sub
    IL_04da:  ldloc.s    V_6
    IL_04dc:  conv.r4
    IL_04dd:  ldc.r4     9.9999998e-003
    IL_04e2:  sub
    IL_04e3:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_04e8:  stfld      valuetype [Engine]Engine.Vector2 Game.BlockMeshVertex::TextureCoordinates
    IL_04ed:  ldloc.3
    IL_04ee:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::Add(!0)
    IL_04f3:  ldloc.2
    IL_04f4:  ldloc.1
    IL_04f5:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_04fa:  ldc.i4.4
    IL_04fb:  sub
    IL_04fc:  conv.u2
    IL_04fd:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0502:  ldloc.2
    IL_0503:  ldloc.1
    IL_0504:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_0509:  ldc.i4.1
    IL_050a:  sub
    IL_050b:  conv.u2
    IL_050c:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0511:  ldloc.2
    IL_0512:  ldloc.1
    IL_0513:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_0518:  ldc.i4.3
    IL_0519:  sub
    IL_051a:  conv.u2
    IL_051b:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0520:  ldloc.2
    IL_0521:  ldloc.1
    IL_0522:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_0527:  ldc.i4.1
    IL_0528:  sub
    IL_0529:  conv.u2
    IL_052a:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_052f:  ldloc.2
    IL_0530:  ldloc.1
    IL_0531:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_0536:  ldc.i4.4
    IL_0537:  sub
    IL_0538:  conv.u2
    IL_0539:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_053e:  ldloc.2
    IL_053f:  ldloc.1
    IL_0540:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_0545:  ldc.i4.2
    IL_0546:  sub
    IL_0547:  conv.u2
    IL_0548:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_054d:  ldc.i4.m1
    IL_054e:  stloc.s    V_5
    IL_0550:  ldloc.s    V_6
    IL_0552:  ldc.i4.1
    IL_0553:  add
    IL_0554:  stloc.s    V_6
    IL_0556:  ldloc.s    V_6
    IL_0558:  ldarga.s   bounds
    IL_055a:  call       instance int32 [Engine]Engine.Rectangle::get_Bottom()
    IL_055f:  ble        IL_0339

    IL_0564:  ldloc.s    V_4
    IL_0566:  ldc.i4.1
    IL_0567:  add
    IL_0568:  stloc.s    V_4
    IL_056a:  ldloc.s    V_4
    IL_056c:  ldarga.s   bounds
    IL_056e:  call       instance int32 [Engine]Engine.Rectangle::get_Right()
    IL_0573:  ble        IL_0327

    IL_0578:  ldarg.2
    IL_0579:  ldfld      int32 [Engine]Engine.Rectangle::Left
    IL_057e:  ldc.i4.1
    IL_057f:  sub
    IL_0580:  stloc.s    V_8
    IL_0582:  br         IL_07d6

    IL_0587:  ldc.i4.m1
    IL_0588:  stloc.s    V_9
    IL_058a:  ldarg.2
    IL_058b:  ldfld      int32 [Engine]Engine.Rectangle::Top
    IL_0590:  ldc.i4.1
    IL_0591:  sub
    IL_0592:  stloc.s    V_10
    IL_0594:  br         IL_07c2

    IL_0599:  ldarga.s   bounds
    IL_059b:  ldloc.s    V_8
    IL_059d:  ldloc.s    V_10
    IL_059f:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_05a4:  call       instance bool [Engine]Engine.Rectangle::Contains(valuetype [Engine]Engine.Point2)
    IL_05a9:  brfalse.s  IL_05c1

    IL_05ab:  ldarg.1
    IL_05ac:  ldloc.s    V_8
    IL_05ae:  ldloc.s    V_10
    IL_05b0:  callvirt   instance valuetype [Engine]Engine.Color [Engine]Engine.Media.Image::GetPixel(int32,
                                                                                                      int32)
    IL_05b5:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_05ba:  call       bool [Engine]Engine.Color::op_Equality(valuetype [Engine]Engine.Color,
                                                                valuetype [Engine]Engine.Color)
    IL_05bf:  br.s       IL_05c2

    IL_05c1:  ldc.i4.1
    IL_05c2:  ldarga.s   bounds
    IL_05c4:  ldloc.s    V_8
    IL_05c6:  ldc.i4.1
    IL_05c7:  add
    IL_05c8:  ldloc.s    V_10
    IL_05ca:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_05cf:  call       instance bool [Engine]Engine.Rectangle::Contains(valuetype [Engine]Engine.Point2)
    IL_05d4:  brfalse.s  IL_05ee

    IL_05d6:  ldarg.1
    IL_05d7:  ldloc.s    V_8
    IL_05d9:  ldc.i4.1
    IL_05da:  add
    IL_05db:  ldloc.s    V_10
    IL_05dd:  callvirt   instance valuetype [Engine]Engine.Color [Engine]Engine.Media.Image::GetPixel(int32,
                                                                                                      int32)
    IL_05e2:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_05e7:  call       bool [Engine]Engine.Color::op_Inequality(valuetype [Engine]Engine.Color,
                                                                  valuetype [Engine]Engine.Color)
    IL_05ec:  br.s       IL_05ef

    IL_05ee:  ldc.i4.0
    IL_05ef:  stloc.s    V_11
    IL_05f1:  ldloc.s    V_11
    IL_05f3:  and
    IL_05f4:  brfalse.s  IL_0607

    IL_05f6:  ldloc.s    V_9
    IL_05f8:  ldc.i4.0
    IL_05f9:  bge        IL_07bc

    IL_05fe:  ldloc.s    V_10
    IL_0600:  stloc.s    V_9
    IL_0602:  br         IL_07bc

    IL_0607:  ldloc.s    V_9
    IL_0609:  ldc.i4.0
    IL_060a:  blt        IL_07bc

    IL_060f:  ldloc.1
    IL_0610:  ldloca.s   V_3
    IL_0612:  initobj    Game.BlockMeshVertex
    IL_0618:  ldloca.s   V_3
    IL_061a:  ldloc.s    V_8
    IL_061c:  ldc.i4.1
    IL_061d:  add
    IL_061e:  conv.r4
    IL_061f:  ldc.r4     9.9999998e-003
    IL_0624:  add
    IL_0625:  ldloc.s    V_9
    IL_0627:  conv.r4
    IL_0628:  ldc.r4     9.9999998e-003
    IL_062d:  sub
    IL_062e:  ldc.r4     -1.01
    IL_0633:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0638:  stfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_063d:  ldloca.s   V_3
    IL_063f:  ldloc.s    V_8
    IL_0641:  ldc.i4.1
    IL_0642:  add
    IL_0643:  conv.r4
    IL_0644:  ldc.r4     9.9999998e-003
    IL_0649:  add
    IL_064a:  ldloc.s    V_9
    IL_064c:  conv.r4
    IL_064d:  ldc.r4     9.9999998e-003
    IL_0652:  add
    IL_0653:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0658:  stfld      valuetype [Engine]Engine.Vector2 Game.BlockMeshVertex::TextureCoordinates
    IL_065d:  ldloc.3
    IL_065e:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::Add(!0)
    IL_0663:  ldloc.1
    IL_0664:  ldloca.s   V_3
    IL_0666:  initobj    Game.BlockMeshVertex
    IL_066c:  ldloca.s   V_3
    IL_066e:  ldloc.s    V_8
    IL_0670:  ldc.i4.1
    IL_0671:  add
    IL_0672:  conv.r4
    IL_0673:  ldc.r4     9.9999998e-003
    IL_0678:  add
    IL_0679:  ldloc.s    V_9
    IL_067b:  conv.r4
    IL_067c:  ldc.r4     9.9999998e-003
    IL_0681:  sub
    IL_0682:  ldc.r4     1.01
    IL_0687:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_068c:  stfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_0691:  ldloca.s   V_3
    IL_0693:  ldloc.s    V_8
    IL_0695:  ldc.i4.2
    IL_0696:  add
    IL_0697:  conv.r4
    IL_0698:  ldc.r4     9.9999998e-003
    IL_069d:  sub
    IL_069e:  ldloc.s    V_9
    IL_06a0:  conv.r4
    IL_06a1:  ldc.r4     9.9999998e-003
    IL_06a6:  add
    IL_06a7:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_06ac:  stfld      valuetype [Engine]Engine.Vector2 Game.BlockMeshVertex::TextureCoordinates
    IL_06b1:  ldloc.3
    IL_06b2:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::Add(!0)
    IL_06b7:  ldloc.1
    IL_06b8:  ldloca.s   V_3
    IL_06ba:  initobj    Game.BlockMeshVertex
    IL_06c0:  ldloca.s   V_3
    IL_06c2:  ldloc.s    V_8
    IL_06c4:  ldc.i4.1
    IL_06c5:  add
    IL_06c6:  conv.r4
    IL_06c7:  ldc.r4     9.9999998e-003
    IL_06cc:  add
    IL_06cd:  ldloc.s    V_10
    IL_06cf:  conv.r4
    IL_06d0:  ldc.r4     9.9999998e-003
    IL_06d5:  add
    IL_06d6:  ldc.r4     -1.01
    IL_06db:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_06e0:  stfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_06e5:  ldloca.s   V_3
    IL_06e7:  ldloc.s    V_8
    IL_06e9:  ldc.i4.1
    IL_06ea:  add
    IL_06eb:  conv.r4
    IL_06ec:  ldc.r4     9.9999998e-003
    IL_06f1:  add
    IL_06f2:  ldloc.s    V_10
    IL_06f4:  conv.r4
    IL_06f5:  ldc.r4     9.9999998e-003
    IL_06fa:  sub
    IL_06fb:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0700:  stfld      valuetype [Engine]Engine.Vector2 Game.BlockMeshVertex::TextureCoordinates
    IL_0705:  ldloc.3
    IL_0706:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::Add(!0)
    IL_070b:  ldloc.1
    IL_070c:  ldloca.s   V_3
    IL_070e:  initobj    Game.BlockMeshVertex
    IL_0714:  ldloca.s   V_3
    IL_0716:  ldloc.s    V_8
    IL_0718:  ldc.i4.1
    IL_0719:  add
    IL_071a:  conv.r4
    IL_071b:  ldc.r4     9.9999998e-003
    IL_0720:  add
    IL_0721:  ldloc.s    V_10
    IL_0723:  conv.r4
    IL_0724:  ldc.r4     9.9999998e-003
    IL_0729:  add
    IL_072a:  ldc.r4     1.01
    IL_072f:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0734:  stfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_0739:  ldloca.s   V_3
    IL_073b:  ldloc.s    V_8
    IL_073d:  ldc.i4.2
    IL_073e:  add
    IL_073f:  conv.r4
    IL_0740:  ldc.r4     9.9999998e-003
    IL_0745:  sub
    IL_0746:  ldloc.s    V_10
    IL_0748:  conv.r4
    IL_0749:  ldc.r4     9.9999998e-003
    IL_074e:  sub
    IL_074f:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0754:  stfld      valuetype [Engine]Engine.Vector2 Game.BlockMeshVertex::TextureCoordinates
    IL_0759:  ldloc.3
    IL_075a:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::Add(!0)
    IL_075f:  ldloc.2
    IL_0760:  ldloc.1
    IL_0761:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_0766:  ldc.i4.4
    IL_0767:  sub
    IL_0768:  conv.u2
    IL_0769:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_076e:  ldloc.2
    IL_076f:  ldloc.1
    IL_0770:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_0775:  ldc.i4.3
    IL_0776:  sub
    IL_0777:  conv.u2
    IL_0778:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_077d:  ldloc.2
    IL_077e:  ldloc.1
    IL_077f:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_0784:  ldc.i4.1
    IL_0785:  sub
    IL_0786:  conv.u2
    IL_0787:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_078c:  ldloc.2
    IL_078d:  ldloc.1
    IL_078e:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_0793:  ldc.i4.1
    IL_0794:  sub
    IL_0795:  conv.u2
    IL_0796:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_079b:  ldloc.2
    IL_079c:  ldloc.1
    IL_079d:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_07a2:  ldc.i4.2
    IL_07a3:  sub
    IL_07a4:  conv.u2
    IL_07a5:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_07aa:  ldloc.2
    IL_07ab:  ldloc.1
    IL_07ac:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_07b1:  ldc.i4.4
    IL_07b2:  sub
    IL_07b3:  conv.u2
    IL_07b4:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_07b9:  ldc.i4.m1
    IL_07ba:  stloc.s    V_9
    IL_07bc:  ldloc.s    V_10
    IL_07be:  ldc.i4.1
    IL_07bf:  add
    IL_07c0:  stloc.s    V_10
    IL_07c2:  ldloc.s    V_10
    IL_07c4:  ldarga.s   bounds
    IL_07c6:  call       instance int32 [Engine]Engine.Rectangle::get_Bottom()
    IL_07cb:  ble        IL_0599

    IL_07d0:  ldloc.s    V_8
    IL_07d2:  ldc.i4.1
    IL_07d3:  add
    IL_07d4:  stloc.s    V_8
    IL_07d6:  ldloc.s    V_8
    IL_07d8:  ldarga.s   bounds
    IL_07da:  call       instance int32 [Engine]Engine.Rectangle::get_Right()
    IL_07df:  ble        IL_0587

    IL_07e4:  ldarg.2
    IL_07e5:  ldfld      int32 [Engine]Engine.Rectangle::Top
    IL_07ea:  ldc.i4.1
    IL_07eb:  sub
    IL_07ec:  stloc.s    V_12
    IL_07ee:  br         IL_0a36

    IL_07f3:  ldc.i4.m1
    IL_07f4:  stloc.s    V_13
    IL_07f6:  ldarg.2
    IL_07f7:  ldfld      int32 [Engine]Engine.Rectangle::Left
    IL_07fc:  ldc.i4.1
    IL_07fd:  sub
    IL_07fe:  stloc.s    V_14
    IL_0800:  br         IL_0a22

    IL_0805:  ldarga.s   bounds
    IL_0807:  ldloc.s    V_14
    IL_0809:  ldloc.s    V_12
    IL_080b:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_0810:  call       instance bool [Engine]Engine.Rectangle::Contains(valuetype [Engine]Engine.Point2)
    IL_0815:  brfalse.s  IL_082d

    IL_0817:  ldarg.1
    IL_0818:  ldloc.s    V_14
    IL_081a:  ldloc.s    V_12
    IL_081c:  callvirt   instance valuetype [Engine]Engine.Color [Engine]Engine.Media.Image::GetPixel(int32,
                                                                                                      int32)
    IL_0821:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_0826:  call       bool [Engine]Engine.Color::op_Equality(valuetype [Engine]Engine.Color,
                                                                valuetype [Engine]Engine.Color)
    IL_082b:  br.s       IL_082e

    IL_082d:  ldc.i4.1
    IL_082e:  ldarga.s   bounds
    IL_0830:  ldloc.s    V_14
    IL_0832:  ldloc.s    V_12
    IL_0834:  ldc.i4.1
    IL_0835:  sub
    IL_0836:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_083b:  call       instance bool [Engine]Engine.Rectangle::Contains(valuetype [Engine]Engine.Point2)
    IL_0840:  brfalse.s  IL_085a

    IL_0842:  ldarg.1
    IL_0843:  ldloc.s    V_14
    IL_0845:  ldloc.s    V_12
    IL_0847:  ldc.i4.1
    IL_0848:  sub
    IL_0849:  callvirt   instance valuetype [Engine]Engine.Color [Engine]Engine.Media.Image::GetPixel(int32,
                                                                                                      int32)
    IL_084e:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_0853:  call       bool [Engine]Engine.Color::op_Inequality(valuetype [Engine]Engine.Color,
                                                                  valuetype [Engine]Engine.Color)
    IL_0858:  br.s       IL_085b

    IL_085a:  ldc.i4.0
    IL_085b:  stloc.s    V_15
    IL_085d:  ldloc.s    V_15
    IL_085f:  and
    IL_0860:  brfalse.s  IL_0873

    IL_0862:  ldloc.s    V_13
    IL_0864:  ldc.i4.0
    IL_0865:  bge        IL_0a1c

    IL_086a:  ldloc.s    V_14
    IL_086c:  stloc.s    V_13
    IL_086e:  br         IL_0a1c

    IL_0873:  ldloc.s    V_13
    IL_0875:  ldc.i4.0
    IL_0876:  blt        IL_0a1c

    IL_087b:  ldloc.1
    IL_087c:  ldloca.s   V_3
    IL_087e:  initobj    Game.BlockMeshVertex
    IL_0884:  ldloca.s   V_3
    IL_0886:  ldloc.s    V_13
    IL_0888:  conv.r4
    IL_0889:  ldc.r4     9.9999998e-003
    IL_088e:  sub
    IL_088f:  ldloc.s    V_12
    IL_0891:  conv.r4
    IL_0892:  ldc.r4     9.9999998e-003
    IL_0897:  sub
    IL_0898:  ldc.r4     -1.01
    IL_089d:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_08a2:  stfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_08a7:  ldloca.s   V_3
    IL_08a9:  ldloc.s    V_13
    IL_08ab:  conv.r4
    IL_08ac:  ldc.r4     9.9999998e-003
    IL_08b1:  add
    IL_08b2:  ldloc.s    V_12
    IL_08b4:  ldc.i4.1
    IL_08b5:  sub
    IL_08b6:  conv.r4
    IL_08b7:  ldc.r4     9.9999998e-003
    IL_08bc:  add
    IL_08bd:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_08c2:  stfld      valuetype [Engine]Engine.Vector2 Game.BlockMeshVertex::TextureCoordinates
    IL_08c7:  ldloc.3
    IL_08c8:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::Add(!0)
    IL_08cd:  ldloc.1
    IL_08ce:  ldloca.s   V_3
    IL_08d0:  initobj    Game.BlockMeshVertex
    IL_08d6:  ldloca.s   V_3
    IL_08d8:  ldloc.s    V_13
    IL_08da:  conv.r4
    IL_08db:  ldc.r4     9.9999998e-003
    IL_08e0:  sub
    IL_08e1:  ldloc.s    V_12
    IL_08e3:  conv.r4
    IL_08e4:  ldc.r4     9.9999998e-003
    IL_08e9:  sub
    IL_08ea:  ldc.r4     1.01
    IL_08ef:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_08f4:  stfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_08f9:  ldloca.s   V_3
    IL_08fb:  ldloc.s    V_13
    IL_08fd:  conv.r4
    IL_08fe:  ldc.r4     9.9999998e-003
    IL_0903:  add
    IL_0904:  ldloc.s    V_12
    IL_0906:  conv.r4
    IL_0907:  ldc.r4     9.9999998e-003
    IL_090c:  sub
    IL_090d:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0912:  stfld      valuetype [Engine]Engine.Vector2 Game.BlockMeshVertex::TextureCoordinates
    IL_0917:  ldloc.3
    IL_0918:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::Add(!0)
    IL_091d:  ldloc.1
    IL_091e:  ldloca.s   V_3
    IL_0920:  initobj    Game.BlockMeshVertex
    IL_0926:  ldloca.s   V_3
    IL_0928:  ldloc.s    V_14
    IL_092a:  conv.r4
    IL_092b:  ldc.r4     9.9999998e-003
    IL_0930:  add
    IL_0931:  ldloc.s    V_12
    IL_0933:  conv.r4
    IL_0934:  ldc.r4     9.9999998e-003
    IL_0939:  sub
    IL_093a:  ldc.r4     -1.01
    IL_093f:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0944:  stfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_0949:  ldloca.s   V_3
    IL_094b:  ldloc.s    V_14
    IL_094d:  conv.r4
    IL_094e:  ldc.r4     9.9999998e-003
    IL_0953:  sub
    IL_0954:  ldloc.s    V_12
    IL_0956:  ldc.i4.1
    IL_0957:  sub
    IL_0958:  conv.r4
    IL_0959:  ldc.r4     9.9999998e-003
    IL_095e:  add
    IL_095f:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0964:  stfld      valuetype [Engine]Engine.Vector2 Game.BlockMeshVertex::TextureCoordinates
    IL_0969:  ldloc.3
    IL_096a:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::Add(!0)
    IL_096f:  ldloc.1
    IL_0970:  ldloca.s   V_3
    IL_0972:  initobj    Game.BlockMeshVertex
    IL_0978:  ldloca.s   V_3
    IL_097a:  ldloc.s    V_14
    IL_097c:  conv.r4
    IL_097d:  ldc.r4     9.9999998e-003
    IL_0982:  add
    IL_0983:  ldloc.s    V_12
    IL_0985:  conv.r4
    IL_0986:  ldc.r4     9.9999998e-003
    IL_098b:  sub
    IL_098c:  ldc.r4     1.01
    IL_0991:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0996:  stfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_099b:  ldloca.s   V_3
    IL_099d:  ldloc.s    V_14
    IL_099f:  conv.r4
    IL_09a0:  ldc.r4     9.9999998e-003
    IL_09a5:  sub
    IL_09a6:  ldloc.s    V_12
    IL_09a8:  conv.r4
    IL_09a9:  ldc.r4     9.9999998e-003
    IL_09ae:  sub
    IL_09af:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_09b4:  stfld      valuetype [Engine]Engine.Vector2 Game.BlockMeshVertex::TextureCoordinates
    IL_09b9:  ldloc.3
    IL_09ba:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::Add(!0)
    IL_09bf:  ldloc.2
    IL_09c0:  ldloc.1
    IL_09c1:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_09c6:  ldc.i4.4
    IL_09c7:  sub
    IL_09c8:  conv.u2
    IL_09c9:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_09ce:  ldloc.2
    IL_09cf:  ldloc.1
    IL_09d0:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_09d5:  ldc.i4.3
    IL_09d6:  sub
    IL_09d7:  conv.u2
    IL_09d8:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_09dd:  ldloc.2
    IL_09de:  ldloc.1
    IL_09df:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_09e4:  ldc.i4.1
    IL_09e5:  sub
    IL_09e6:  conv.u2
    IL_09e7:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_09ec:  ldloc.2
    IL_09ed:  ldloc.1
    IL_09ee:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_09f3:  ldc.i4.1
    IL_09f4:  sub
    IL_09f5:  conv.u2
    IL_09f6:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_09fb:  ldloc.2
    IL_09fc:  ldloc.1
    IL_09fd:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_0a02:  ldc.i4.2
    IL_0a03:  sub
    IL_0a04:  conv.u2
    IL_0a05:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0a0a:  ldloc.2
    IL_0a0b:  ldloc.1
    IL_0a0c:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_0a11:  ldc.i4.4
    IL_0a12:  sub
    IL_0a13:  conv.u2
    IL_0a14:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0a19:  ldc.i4.m1
    IL_0a1a:  stloc.s    V_13
    IL_0a1c:  ldloc.s    V_14
    IL_0a1e:  ldc.i4.1
    IL_0a1f:  add
    IL_0a20:  stloc.s    V_14
    IL_0a22:  ldloc.s    V_14
    IL_0a24:  ldarga.s   bounds
    IL_0a26:  call       instance int32 [Engine]Engine.Rectangle::get_Right()
    IL_0a2b:  ble        IL_0805

    IL_0a30:  ldloc.s    V_12
    IL_0a32:  ldc.i4.1
    IL_0a33:  add
    IL_0a34:  stloc.s    V_12
    IL_0a36:  ldloc.s    V_12
    IL_0a38:  ldarga.s   bounds
    IL_0a3a:  call       instance int32 [Engine]Engine.Rectangle::get_Bottom()
    IL_0a3f:  ble        IL_07f3

    IL_0a44:  ldarg.2
    IL_0a45:  ldfld      int32 [Engine]Engine.Rectangle::Top
    IL_0a4a:  ldc.i4.1
    IL_0a4b:  sub
    IL_0a4c:  stloc.s    V_16
    IL_0a4e:  br         IL_0ca2

    IL_0a53:  ldc.i4.m1
    IL_0a54:  stloc.s    V_17
    IL_0a56:  ldarg.2
    IL_0a57:  ldfld      int32 [Engine]Engine.Rectangle::Left
    IL_0a5c:  ldc.i4.1
    IL_0a5d:  sub
    IL_0a5e:  stloc.s    V_18
    IL_0a60:  br         IL_0c8e

    IL_0a65:  ldarga.s   bounds
    IL_0a67:  ldloc.s    V_18
    IL_0a69:  ldloc.s    V_16
    IL_0a6b:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_0a70:  call       instance bool [Engine]Engine.Rectangle::Contains(valuetype [Engine]Engine.Point2)
    IL_0a75:  brfalse.s  IL_0a8d

    IL_0a77:  ldarg.1
    IL_0a78:  ldloc.s    V_18
    IL_0a7a:  ldloc.s    V_16
    IL_0a7c:  callvirt   instance valuetype [Engine]Engine.Color [Engine]Engine.Media.Image::GetPixel(int32,
                                                                                                      int32)
    IL_0a81:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_0a86:  call       bool [Engine]Engine.Color::op_Equality(valuetype [Engine]Engine.Color,
                                                                valuetype [Engine]Engine.Color)
    IL_0a8b:  br.s       IL_0a8e

    IL_0a8d:  ldc.i4.1
    IL_0a8e:  ldarga.s   bounds
    IL_0a90:  ldloc.s    V_18
    IL_0a92:  ldloc.s    V_16
    IL_0a94:  ldc.i4.1
    IL_0a95:  add
    IL_0a96:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_0a9b:  call       instance bool [Engine]Engine.Rectangle::Contains(valuetype [Engine]Engine.Point2)
    IL_0aa0:  brfalse.s  IL_0aba

    IL_0aa2:  ldarg.1
    IL_0aa3:  ldloc.s    V_18
    IL_0aa5:  ldloc.s    V_16
    IL_0aa7:  ldc.i4.1
    IL_0aa8:  add
    IL_0aa9:  callvirt   instance valuetype [Engine]Engine.Color [Engine]Engine.Media.Image::GetPixel(int32,
                                                                                                      int32)
    IL_0aae:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_0ab3:  call       bool [Engine]Engine.Color::op_Inequality(valuetype [Engine]Engine.Color,
                                                                  valuetype [Engine]Engine.Color)
    IL_0ab8:  br.s       IL_0abb

    IL_0aba:  ldc.i4.0
    IL_0abb:  stloc.s    V_19
    IL_0abd:  ldloc.s    V_19
    IL_0abf:  and
    IL_0ac0:  brfalse.s  IL_0ad3

    IL_0ac2:  ldloc.s    V_17
    IL_0ac4:  ldc.i4.0
    IL_0ac5:  bge        IL_0c88

    IL_0aca:  ldloc.s    V_18
    IL_0acc:  stloc.s    V_17
    IL_0ace:  br         IL_0c88

    IL_0ad3:  ldloc.s    V_17
    IL_0ad5:  ldc.i4.0
    IL_0ad6:  blt        IL_0c88

    IL_0adb:  ldloc.1
    IL_0adc:  ldloca.s   V_3
    IL_0ade:  initobj    Game.BlockMeshVertex
    IL_0ae4:  ldloca.s   V_3
    IL_0ae6:  ldloc.s    V_17
    IL_0ae8:  conv.r4
    IL_0ae9:  ldc.r4     9.9999998e-003
    IL_0aee:  sub
    IL_0aef:  ldloc.s    V_16
    IL_0af1:  ldc.i4.1
    IL_0af2:  add
    IL_0af3:  conv.r4
    IL_0af4:  ldc.r4     9.9999998e-003
    IL_0af9:  add
    IL_0afa:  ldc.r4     -1.01
    IL_0aff:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0b04:  stfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_0b09:  ldloca.s   V_3
    IL_0b0b:  ldloc.s    V_17
    IL_0b0d:  conv.r4
    IL_0b0e:  ldc.r4     9.9999998e-003
    IL_0b13:  add
    IL_0b14:  ldloc.s    V_16
    IL_0b16:  ldc.i4.1
    IL_0b17:  add
    IL_0b18:  conv.r4
    IL_0b19:  ldc.r4     9.9999998e-003
    IL_0b1e:  add
    IL_0b1f:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0b24:  stfld      valuetype [Engine]Engine.Vector2 Game.BlockMeshVertex::TextureCoordinates
    IL_0b29:  ldloc.3
    IL_0b2a:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::Add(!0)
    IL_0b2f:  ldloc.1
    IL_0b30:  ldloca.s   V_3
    IL_0b32:  initobj    Game.BlockMeshVertex
    IL_0b38:  ldloca.s   V_3
    IL_0b3a:  ldloc.s    V_17
    IL_0b3c:  conv.r4
    IL_0b3d:  ldc.r4     9.9999998e-003
    IL_0b42:  sub
    IL_0b43:  ldloc.s    V_16
    IL_0b45:  ldc.i4.1
    IL_0b46:  add
    IL_0b47:  conv.r4
    IL_0b48:  ldc.r4     9.9999998e-003
    IL_0b4d:  add
    IL_0b4e:  ldc.r4     1.01
    IL_0b53:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0b58:  stfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_0b5d:  ldloca.s   V_3
    IL_0b5f:  ldloc.s    V_17
    IL_0b61:  conv.r4
    IL_0b62:  ldc.r4     9.9999998e-003
    IL_0b67:  add
    IL_0b68:  ldloc.s    V_16
    IL_0b6a:  ldc.i4.2
    IL_0b6b:  add
    IL_0b6c:  conv.r4
    IL_0b6d:  ldc.r4     9.9999998e-003
    IL_0b72:  sub
    IL_0b73:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0b78:  stfld      valuetype [Engine]Engine.Vector2 Game.BlockMeshVertex::TextureCoordinates
    IL_0b7d:  ldloc.3
    IL_0b7e:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::Add(!0)
    IL_0b83:  ldloc.1
    IL_0b84:  ldloca.s   V_3
    IL_0b86:  initobj    Game.BlockMeshVertex
    IL_0b8c:  ldloca.s   V_3
    IL_0b8e:  ldloc.s    V_18
    IL_0b90:  conv.r4
    IL_0b91:  ldc.r4     9.9999998e-003
    IL_0b96:  add
    IL_0b97:  ldloc.s    V_16
    IL_0b99:  ldc.i4.1
    IL_0b9a:  add
    IL_0b9b:  conv.r4
    IL_0b9c:  ldc.r4     9.9999998e-003
    IL_0ba1:  add
    IL_0ba2:  ldc.r4     -1.01
    IL_0ba7:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0bac:  stfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_0bb1:  ldloca.s   V_3
    IL_0bb3:  ldloc.s    V_18
    IL_0bb5:  conv.r4
    IL_0bb6:  ldc.r4     9.9999998e-003
    IL_0bbb:  sub
    IL_0bbc:  ldloc.s    V_16
    IL_0bbe:  ldc.i4.1
    IL_0bbf:  add
    IL_0bc0:  conv.r4
    IL_0bc1:  ldc.r4     9.9999998e-003
    IL_0bc6:  add
    IL_0bc7:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0bcc:  stfld      valuetype [Engine]Engine.Vector2 Game.BlockMeshVertex::TextureCoordinates
    IL_0bd1:  ldloc.3
    IL_0bd2:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::Add(!0)
    IL_0bd7:  ldloc.1
    IL_0bd8:  ldloca.s   V_3
    IL_0bda:  initobj    Game.BlockMeshVertex
    IL_0be0:  ldloca.s   V_3
    IL_0be2:  ldloc.s    V_18
    IL_0be4:  conv.r4
    IL_0be5:  ldc.r4     9.9999998e-003
    IL_0bea:  add
    IL_0beb:  ldloc.s    V_16
    IL_0bed:  ldc.i4.1
    IL_0bee:  add
    IL_0bef:  conv.r4
    IL_0bf0:  ldc.r4     9.9999998e-003
    IL_0bf5:  add
    IL_0bf6:  ldc.r4     1.01
    IL_0bfb:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0c00:  stfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_0c05:  ldloca.s   V_3
    IL_0c07:  ldloc.s    V_18
    IL_0c09:  conv.r4
    IL_0c0a:  ldc.r4     9.9999998e-003
    IL_0c0f:  sub
    IL_0c10:  ldloc.s    V_16
    IL_0c12:  ldc.i4.2
    IL_0c13:  add
    IL_0c14:  conv.r4
    IL_0c15:  ldc.r4     9.9999998e-003
    IL_0c1a:  sub
    IL_0c1b:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0c20:  stfld      valuetype [Engine]Engine.Vector2 Game.BlockMeshVertex::TextureCoordinates
    IL_0c25:  ldloc.3
    IL_0c26:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::Add(!0)
    IL_0c2b:  ldloc.2
    IL_0c2c:  ldloc.1
    IL_0c2d:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_0c32:  ldc.i4.4
    IL_0c33:  sub
    IL_0c34:  conv.u2
    IL_0c35:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0c3a:  ldloc.2
    IL_0c3b:  ldloc.1
    IL_0c3c:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_0c41:  ldc.i4.1
    IL_0c42:  sub
    IL_0c43:  conv.u2
    IL_0c44:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0c49:  ldloc.2
    IL_0c4a:  ldloc.1
    IL_0c4b:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_0c50:  ldc.i4.3
    IL_0c51:  sub
    IL_0c52:  conv.u2
    IL_0c53:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0c58:  ldloc.2
    IL_0c59:  ldloc.1
    IL_0c5a:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_0c5f:  ldc.i4.1
    IL_0c60:  sub
    IL_0c61:  conv.u2
    IL_0c62:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0c67:  ldloc.2
    IL_0c68:  ldloc.1
    IL_0c69:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_0c6e:  ldc.i4.4
    IL_0c6f:  sub
    IL_0c70:  conv.u2
    IL_0c71:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0c76:  ldloc.2
    IL_0c77:  ldloc.1
    IL_0c78:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_0c7d:  ldc.i4.2
    IL_0c7e:  sub
    IL_0c7f:  conv.u2
    IL_0c80:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0c85:  ldc.i4.m1
    IL_0c86:  stloc.s    V_17
    IL_0c88:  ldloc.s    V_18
    IL_0c8a:  ldc.i4.1
    IL_0c8b:  add
    IL_0c8c:  stloc.s    V_18
    IL_0c8e:  ldloc.s    V_18
    IL_0c90:  ldarga.s   bounds
    IL_0c92:  call       instance int32 [Engine]Engine.Rectangle::get_Right()
    IL_0c97:  ble        IL_0a65

    IL_0c9c:  ldloc.s    V_16
    IL_0c9e:  ldc.i4.1
    IL_0c9f:  add
    IL_0ca0:  stloc.s    V_16
    IL_0ca2:  ldloc.s    V_16
    IL_0ca4:  ldarga.s   bounds
    IL_0ca6:  call       instance int32 [Engine]Engine.Rectangle::get_Bottom()
    IL_0cab:  ble        IL_0a53

    IL_0cb0:  ldc.i4.0
    IL_0cb1:  stloc.s    V_20
    IL_0cb3:  br         IL_0e04

    IL_0cb8:  ldloc.1
    IL_0cb9:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Array()
    IL_0cbe:  ldloc.s    V_20
    IL_0cc0:  ldelema    Game.BlockMeshVertex
    IL_0cc5:  ldflda     valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_0cca:  ldflda     float32 [Engine]Engine.Vector3::X
    IL_0ccf:  dup
    IL_0cd0:  ldind.r4
    IL_0cd1:  ldarg.2
    IL_0cd2:  ldfld      int32 [Engine]Engine.Rectangle::Left
    IL_0cd7:  conv.r4
    IL_0cd8:  ldarg.2
    IL_0cd9:  ldfld      int32 [Engine]Engine.Rectangle::Width
    IL_0cde:  conv.r4
    IL_0cdf:  ldc.r4     2.
    IL_0ce4:  div
    IL_0ce5:  add
    IL_0ce6:  sub
    IL_0ce7:  stind.r4
    IL_0ce8:  ldloc.1
    IL_0ce9:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Array()
    IL_0cee:  ldloc.s    V_20
    IL_0cf0:  ldelema    Game.BlockMeshVertex
    IL_0cf5:  ldflda     valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_0cfa:  ldarga.s   bounds
    IL_0cfc:  call       instance int32 [Engine]Engine.Rectangle::get_Bottom()
    IL_0d01:  conv.r4
    IL_0d02:  ldloc.1
    IL_0d03:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Array()
    IL_0d08:  ldloc.s    V_20
    IL_0d0a:  ldelema    Game.BlockMeshVertex
    IL_0d0f:  ldflda     valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_0d14:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0d19:  sub
    IL_0d1a:  ldarg.2
    IL_0d1b:  ldfld      int32 [Engine]Engine.Rectangle::Height
    IL_0d20:  conv.r4
    IL_0d21:  ldc.r4     2.
    IL_0d26:  div
    IL_0d27:  sub
    IL_0d28:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_0d2d:  ldloc.1
    IL_0d2e:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Array()
    IL_0d33:  ldloc.s    V_20
    IL_0d35:  ldelema    Game.BlockMeshVertex
    IL_0d3a:  ldflda     valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_0d3f:  ldflda     float32 [Engine]Engine.Vector3::X
    IL_0d44:  dup
    IL_0d45:  ldind.r4
    IL_0d46:  ldarg.3
    IL_0d47:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0d4c:  ldarg.2
    IL_0d4d:  ldfld      int32 [Engine]Engine.Rectangle::Width
    IL_0d52:  conv.r4
    IL_0d53:  div
    IL_0d54:  mul
    IL_0d55:  stind.r4
    IL_0d56:  ldloc.1
    IL_0d57:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Array()
    IL_0d5c:  ldloc.s    V_20
    IL_0d5e:  ldelema    Game.BlockMeshVertex
    IL_0d63:  ldflda     valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_0d68:  ldflda     float32 [Engine]Engine.Vector3::Y
    IL_0d6d:  dup
    IL_0d6e:  ldind.r4
    IL_0d6f:  ldarg.3
    IL_0d70:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0d75:  ldarg.2
    IL_0d76:  ldfld      int32 [Engine]Engine.Rectangle::Height
    IL_0d7b:  conv.r4
    IL_0d7c:  div
    IL_0d7d:  mul
    IL_0d7e:  stind.r4
    IL_0d7f:  ldloc.1
    IL_0d80:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Array()
    IL_0d85:  ldloc.s    V_20
    IL_0d87:  ldelema    Game.BlockMeshVertex
    IL_0d8c:  ldflda     valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_0d91:  ldflda     float32 [Engine]Engine.Vector3::Z
    IL_0d96:  dup
    IL_0d97:  ldind.r4
    IL_0d98:  ldarg.3
    IL_0d99:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0d9e:  ldc.r4     2.
    IL_0da3:  div
    IL_0da4:  mul
    IL_0da5:  stind.r4
    IL_0da6:  ldloc.1
    IL_0da7:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Array()
    IL_0dac:  ldloc.s    V_20
    IL_0dae:  ldelema    Game.BlockMeshVertex
    IL_0db3:  ldflda     valuetype [Engine]Engine.Vector2 Game.BlockMeshVertex::TextureCoordinates
    IL_0db8:  ldflda     float32 [Engine]Engine.Vector2::X
    IL_0dbd:  dup
    IL_0dbe:  ldind.r4
    IL_0dbf:  ldarg.1
    IL_0dc0:  ldfld      int32 [Engine]Engine.Media.Image::Width
    IL_0dc5:  conv.r4
    IL_0dc6:  div
    IL_0dc7:  stind.r4
    IL_0dc8:  ldloc.1
    IL_0dc9:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Array()
    IL_0dce:  ldloc.s    V_20
    IL_0dd0:  ldelema    Game.BlockMeshVertex
    IL_0dd5:  ldflda     valuetype [Engine]Engine.Vector2 Game.BlockMeshVertex::TextureCoordinates
    IL_0dda:  ldflda     float32 [Engine]Engine.Vector2::Y
    IL_0ddf:  dup
    IL_0de0:  ldind.r4
    IL_0de1:  ldarg.1
    IL_0de2:  ldfld      int32 [Engine]Engine.Media.Image::Height
    IL_0de7:  conv.r4
    IL_0de8:  div
    IL_0de9:  stind.r4
    IL_0dea:  ldloc.1
    IL_0deb:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Array()
    IL_0df0:  ldloc.s    V_20
    IL_0df2:  ldelema    Game.BlockMeshVertex
    IL_0df7:  ldarg.s    color
    IL_0df9:  stfld      valuetype [Engine]Engine.Color Game.BlockMeshVertex::Color
    IL_0dfe:  ldloc.s    V_20
    IL_0e00:  ldc.i4.1
    IL_0e01:  add
    IL_0e02:  stloc.s    V_20
    IL_0e04:  ldloc.s    V_20
    IL_0e06:  ldloc.1
    IL_0e07:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_0e0c:  blt        IL_0cb8

    IL_0e11:  ldarg.0
    IL_0e12:  ldloc.0
    IL_0e13:  call       instance void Game.BlockMesh::AppendBlockMesh(class Game.BlockMesh)
    IL_0e18:  ret
  } // end of method BlockMesh::AppendImageExtrusion

  .method public hidebysig instance void 
          AppendModelMeshPart(class [Engine]Engine.Graphics.ModelMeshPart meshPart,
                              valuetype [Engine]Engine.Matrix matrix,
                              bool makeEmissive,
                              bool flipWindingOrder,
                              bool doubleSided,
                              bool flipNormals,
                              valuetype [Engine]Engine.Color color) cil managed
  {
    // 代码大小       910 (0x38e)
    .maxstack  6
    .locals init (class [Engine]Engine.Graphics.IndexBuffer V_0,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.VertexElement> V_1,
             valuetype Game.BlockMesh/InternalVertex[] V_2,
             uint16[] V_3,
             class [System.Collections]System.Collections.Generic.Dictionary`2<uint16,uint16> V_4,
             int32 V_5,
             uint16 V_6,
             valuetype Game.BlockMeshVertex V_7,
             valuetype [Engine]Engine.Vector3 V_8,
             int32 V_9)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance class [Engine]Engine.Graphics.VertexBuffer [Engine]Engine.Graphics.ModelMeshPart::get_VertexBuffer()
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance class [Engine]Engine.Graphics.IndexBuffer [Engine]Engine.Graphics.ModelMeshPart::get_IndexBuffer()
    IL_000c:  stloc.0
    IL_000d:  dup
    IL_000e:  callvirt   instance class [Engine]Engine.Graphics.VertexDeclaration [Engine]Engine.Graphics.VertexBuffer::get_VertexDeclaration()
    IL_0013:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.VertexElement> [Engine]Engine.Graphics.VertexDeclaration::get_VertexElements()
    IL_0018:  stloc.1
    IL_0019:  ldloca.s   V_1
    IL_001b:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.VertexElement>::get_Count()
    IL_0020:  ldc.i4.3
    IL_0021:  bne.un.s   IL_00a2

    IL_0023:  ldloca.s   V_1
    IL_0025:  ldc.i4.0
    IL_0026:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.VertexElement>::get_Item(int32)
    IL_002b:  ldfld      int32 [Engine]Engine.Graphics.VertexElement::Offset
    IL_0030:  brtrue.s   IL_00a2

    IL_0032:  ldloca.s   V_1
    IL_0034:  ldc.i4.0
    IL_0035:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.VertexElement>::get_Item(int32)
    IL_003a:  ldfld      string [Engine]Engine.Graphics.VertexElement::Semantic
    IL_003f:  ldc.i4.0
    IL_0040:  call       string [Engine]Engine.Graphics.ExtensionMethods::GetSemanticString(valuetype [Engine]Engine.Graphics.VertexElementSemantic)
    IL_0045:  call       bool [System.Runtime]System.String::op_Inequality(string,
                                                                           string)
    IL_004a:  brtrue.s   IL_00a2

    IL_004c:  ldloca.s   V_1
    IL_004e:  ldc.i4.1
    IL_004f:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.VertexElement>::get_Item(int32)
    IL_0054:  ldfld      int32 [Engine]Engine.Graphics.VertexElement::Offset
    IL_0059:  ldc.i4.s   12
    IL_005b:  bne.un.s   IL_00a2

    IL_005d:  ldloca.s   V_1
    IL_005f:  ldc.i4.1
    IL_0060:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.VertexElement>::get_Item(int32)
    IL_0065:  ldfld      string [Engine]Engine.Graphics.VertexElement::Semantic
    IL_006a:  ldc.i4.2
    IL_006b:  call       string [Engine]Engine.Graphics.ExtensionMethods::GetSemanticString(valuetype [Engine]Engine.Graphics.VertexElementSemantic)
    IL_0070:  call       bool [System.Runtime]System.String::op_Inequality(string,
                                                                           string)
    IL_0075:  brtrue.s   IL_00a2

    IL_0077:  ldloca.s   V_1
    IL_0079:  ldc.i4.2
    IL_007a:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.VertexElement>::get_Item(int32)
    IL_007f:  ldfld      int32 [Engine]Engine.Graphics.VertexElement::Offset
    IL_0084:  ldc.i4.s   24
    IL_0086:  bne.un.s   IL_00a2

    IL_0088:  ldloca.s   V_1
    IL_008a:  ldc.i4.2
    IL_008b:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.VertexElement>::get_Item(int32)
    IL_0090:  ldfld      string [Engine]Engine.Graphics.VertexElement::Semantic
    IL_0095:  ldc.i4.3
    IL_0096:  call       string [Engine]Engine.Graphics.ExtensionMethods::GetSemanticString(valuetype [Engine]Engine.Graphics.VertexElementSemantic)
    IL_009b:  call       bool [System.Runtime]System.String::op_Inequality(string,
                                                                           string)
    IL_00a0:  brfalse.s  IL_00ad

    IL_00a2:  ldstr      "Wrong vertex format for a block mesh."
    IL_00a7:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_00ac:  throw

    IL_00ad:  call       !!0[] Game.BlockMesh::GetVertexData<valuetype Game.BlockMesh/InternalVertex>(class [Engine]Engine.Graphics.VertexBuffer)
    IL_00b2:  stloc.2
    IL_00b3:  ldloc.0
    IL_00b4:  call       !!0[] Game.BlockMesh::GetIndexData<uint16>(class [Engine]Engine.Graphics.IndexBuffer)
    IL_00b9:  stloc.3
    IL_00ba:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<uint16,uint16>::.ctor()
    IL_00bf:  stloc.s    V_4
    IL_00c1:  ldarg.1
    IL_00c2:  callvirt   instance int32 [Engine]Engine.Graphics.ModelMeshPart::get_StartIndex()
    IL_00c7:  stloc.s    V_5
    IL_00c9:  br         IL_01c0

    IL_00ce:  ldloc.3
    IL_00cf:  ldloc.s    V_5
    IL_00d1:  ldelem.u2
    IL_00d2:  stloc.s    V_6
    IL_00d4:  ldloc.s    V_4
    IL_00d6:  ldloc.s    V_6
    IL_00d8:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<uint16,uint16>::ContainsKey(!0)
    IL_00dd:  brtrue     IL_01ba

    IL_00e2:  ldloc.s    V_4
    IL_00e4:  ldloc.s    V_6
    IL_00e6:  ldarg.0
    IL_00e7:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
    IL_00ec:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_00f1:  conv.u2
    IL_00f2:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<uint16,uint16>::Add(!0,
                                                                                                                             !1)
    IL_00f7:  ldloca.s   V_7
    IL_00f9:  initobj    Game.BlockMeshVertex
    IL_00ff:  ldloca.s   V_7
    IL_0101:  ldloc.2
    IL_0102:  ldloc.s    V_6
    IL_0104:  ldelema    Game.BlockMesh/InternalVertex
    IL_0109:  ldfld      valuetype [Engine]Engine.Vector3 Game.BlockMesh/InternalVertex::Position
    IL_010e:  ldarg.2
    IL_010f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0114:  stfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_0119:  ldloca.s   V_7
    IL_011b:  ldloc.2
    IL_011c:  ldloc.s    V_6
    IL_011e:  ldelema    Game.BlockMesh/InternalVertex
    IL_0123:  ldfld      valuetype [Engine]Engine.Vector2 Game.BlockMesh/InternalVertex::TextureCoordinate
    IL_0128:  stfld      valuetype [Engine]Engine.Vector2 Game.BlockMeshVertex::TextureCoordinates
    IL_012d:  ldarg.s    flipNormals
    IL_012f:  brtrue.s   IL_0140

    IL_0131:  ldloc.2
    IL_0132:  ldloc.s    V_6
    IL_0134:  ldelema    Game.BlockMesh/InternalVertex
    IL_0139:  ldfld      valuetype [Engine]Engine.Vector3 Game.BlockMesh/InternalVertex::Normal
    IL_013e:  br.s       IL_0152

    IL_0140:  ldloc.2
    IL_0141:  ldloc.s    V_6
    IL_0143:  ldelema    Game.BlockMesh/InternalVertex
    IL_0148:  ldfld      valuetype [Engine]Engine.Vector3 Game.BlockMesh/InternalVertex::Normal
    IL_014d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_0152:  ldarg.2
    IL_0153:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::TransformNormal(valuetype [Engine]Engine.Vector3,
                                                                                                  valuetype [Engine]Engine.Matrix)
    IL_0158:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_015d:  stloc.s    V_8
    IL_015f:  ldarg.3
    IL_0160:  brfalse.s  IL_0175

    IL_0162:  ldloca.s   V_7
    IL_0164:  ldc.i4.1
    IL_0165:  stfld      bool Game.BlockMeshVertex::IsEmissive
    IL_016a:  ldloca.s   V_7
    IL_016c:  ldarg.s    color
    IL_016e:  stfld      valuetype [Engine]Engine.Color Game.BlockMeshVertex::Color
    IL_0173:  br.s       IL_019d

    IL_0175:  ldloca.s   V_7
    IL_0177:  ldarg.s    color
    IL_0179:  ldloc.s    V_8
    IL_017b:  call       float32 Game.LightingManager::CalculateLighting(valuetype [Engine]Engine.Vector3)
    IL_0180:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_0185:  stfld      valuetype [Engine]Engine.Color Game.BlockMeshVertex::Color
    IL_018a:  ldloca.s   V_7
    IL_018c:  ldflda     valuetype [Engine]Engine.Color Game.BlockMeshVertex::Color
    IL_0191:  ldarga.s   color
    IL_0193:  call       instance uint8 [Engine]Engine.Color::get_A()
    IL_0198:  call       instance void [Engine]Engine.Color::set_A(uint8)
    IL_019d:  ldloca.s   V_7
    IL_019f:  ldloc.s    V_8
    IL_01a1:  ldc.i4.5
    IL_01a2:  call       int32 Game.CellFace::Vector3ToFace(valuetype [Engine]Engine.Vector3,
                                                            int32)
    IL_01a7:  conv.u1
    IL_01a8:  stfld      uint8 Game.BlockMeshVertex::Face
    IL_01ad:  ldarg.0
    IL_01ae:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
    IL_01b3:  ldloc.s    V_7
    IL_01b5:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::Add(!0)
    IL_01ba:  ldloc.s    V_5
    IL_01bc:  ldc.i4.1
    IL_01bd:  add
    IL_01be:  stloc.s    V_5
    IL_01c0:  ldloc.s    V_5
    IL_01c2:  ldarg.1
    IL_01c3:  callvirt   instance int32 [Engine]Engine.Graphics.ModelMeshPart::get_StartIndex()
    IL_01c8:  ldarg.1
    IL_01c9:  callvirt   instance int32 [Engine]Engine.Graphics.ModelMeshPart::get_IndicesCount()
    IL_01ce:  add
    IL_01cf:  blt        IL_00ce

    IL_01d4:  ldc.i4.0
    IL_01d5:  stloc.s    V_9
    IL_01d7:  br         IL_0378

    IL_01dc:  ldarg.s    doubleSided
    IL_01de:  brfalse    IL_02aa

    IL_01e3:  ldarg.0
    IL_01e4:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.BlockMesh::Indices
    IL_01e9:  ldloc.s    V_4
    IL_01eb:  ldloc.3
    IL_01ec:  ldarg.1
    IL_01ed:  callvirt   instance int32 [Engine]Engine.Graphics.ModelMeshPart::get_StartIndex()
    IL_01f2:  ldc.i4.3
    IL_01f3:  ldloc.s    V_9
    IL_01f5:  mul
    IL_01f6:  add
    IL_01f7:  ldelem.u2
    IL_01f8:  callvirt   instance !1 class [System.Collections]System.Collections.Generic.Dictionary`2<uint16,uint16>::get_Item(!0)
    IL_01fd:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0202:  ldarg.0
    IL_0203:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.BlockMesh::Indices
    IL_0208:  ldloc.s    V_4
    IL_020a:  ldloc.3
    IL_020b:  ldarg.1
    IL_020c:  callvirt   instance int32 [Engine]Engine.Graphics.ModelMeshPart::get_StartIndex()
    IL_0211:  ldc.i4.3
    IL_0212:  ldloc.s    V_9
    IL_0214:  mul
    IL_0215:  add
    IL_0216:  ldc.i4.1
    IL_0217:  add
    IL_0218:  ldelem.u2
    IL_0219:  callvirt   instance !1 class [System.Collections]System.Collections.Generic.Dictionary`2<uint16,uint16>::get_Item(!0)
    IL_021e:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0223:  ldarg.0
    IL_0224:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.BlockMesh::Indices
    IL_0229:  ldloc.s    V_4
    IL_022b:  ldloc.3
    IL_022c:  ldarg.1
    IL_022d:  callvirt   instance int32 [Engine]Engine.Graphics.ModelMeshPart::get_StartIndex()
    IL_0232:  ldc.i4.3
    IL_0233:  ldloc.s    V_9
    IL_0235:  mul
    IL_0236:  add
    IL_0237:  ldc.i4.2
    IL_0238:  add
    IL_0239:  ldelem.u2
    IL_023a:  callvirt   instance !1 class [System.Collections]System.Collections.Generic.Dictionary`2<uint16,uint16>::get_Item(!0)
    IL_023f:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0244:  ldarg.0
    IL_0245:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.BlockMesh::Indices
    IL_024a:  ldloc.s    V_4
    IL_024c:  ldloc.3
    IL_024d:  ldarg.1
    IL_024e:  callvirt   instance int32 [Engine]Engine.Graphics.ModelMeshPart::get_StartIndex()
    IL_0253:  ldc.i4.3
    IL_0254:  ldloc.s    V_9
    IL_0256:  mul
    IL_0257:  add
    IL_0258:  ldelem.u2
    IL_0259:  callvirt   instance !1 class [System.Collections]System.Collections.Generic.Dictionary`2<uint16,uint16>::get_Item(!0)
    IL_025e:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0263:  ldarg.0
    IL_0264:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.BlockMesh::Indices
    IL_0269:  ldloc.s    V_4
    IL_026b:  ldloc.3
    IL_026c:  ldarg.1
    IL_026d:  callvirt   instance int32 [Engine]Engine.Graphics.ModelMeshPart::get_StartIndex()
    IL_0272:  ldc.i4.3
    IL_0273:  ldloc.s    V_9
    IL_0275:  mul
    IL_0276:  add
    IL_0277:  ldc.i4.2
    IL_0278:  add
    IL_0279:  ldelem.u2
    IL_027a:  callvirt   instance !1 class [System.Collections]System.Collections.Generic.Dictionary`2<uint16,uint16>::get_Item(!0)
    IL_027f:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0284:  ldarg.0
    IL_0285:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.BlockMesh::Indices
    IL_028a:  ldloc.s    V_4
    IL_028c:  ldloc.3
    IL_028d:  ldarg.1
    IL_028e:  callvirt   instance int32 [Engine]Engine.Graphics.ModelMeshPart::get_StartIndex()
    IL_0293:  ldc.i4.3
    IL_0294:  ldloc.s    V_9
    IL_0296:  mul
    IL_0297:  add
    IL_0298:  ldc.i4.1
    IL_0299:  add
    IL_029a:  ldelem.u2
    IL_029b:  callvirt   instance !1 class [System.Collections]System.Collections.Generic.Dictionary`2<uint16,uint16>::get_Item(!0)
    IL_02a0:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_02a5:  br         IL_0372

    IL_02aa:  ldarg.s    flipWindingOrder
    IL_02ac:  brfalse.s  IL_0311

    IL_02ae:  ldarg.0
    IL_02af:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.BlockMesh::Indices
    IL_02b4:  ldloc.s    V_4
    IL_02b6:  ldloc.3
    IL_02b7:  ldarg.1
    IL_02b8:  callvirt   instance int32 [Engine]Engine.Graphics.ModelMeshPart::get_StartIndex()
    IL_02bd:  ldc.i4.3
    IL_02be:  ldloc.s    V_9
    IL_02c0:  mul
    IL_02c1:  add
    IL_02c2:  ldelem.u2
    IL_02c3:  callvirt   instance !1 class [System.Collections]System.Collections.Generic.Dictionary`2<uint16,uint16>::get_Item(!0)
    IL_02c8:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_02cd:  ldarg.0
    IL_02ce:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.BlockMesh::Indices
    IL_02d3:  ldloc.s    V_4
    IL_02d5:  ldloc.3
    IL_02d6:  ldarg.1
    IL_02d7:  callvirt   instance int32 [Engine]Engine.Graphics.ModelMeshPart::get_StartIndex()
    IL_02dc:  ldc.i4.3
    IL_02dd:  ldloc.s    V_9
    IL_02df:  mul
    IL_02e0:  add
    IL_02e1:  ldc.i4.2
    IL_02e2:  add
    IL_02e3:  ldelem.u2
    IL_02e4:  callvirt   instance !1 class [System.Collections]System.Collections.Generic.Dictionary`2<uint16,uint16>::get_Item(!0)
    IL_02e9:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_02ee:  ldarg.0
    IL_02ef:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.BlockMesh::Indices
    IL_02f4:  ldloc.s    V_4
    IL_02f6:  ldloc.3
    IL_02f7:  ldarg.1
    IL_02f8:  callvirt   instance int32 [Engine]Engine.Graphics.ModelMeshPart::get_StartIndex()
    IL_02fd:  ldc.i4.3
    IL_02fe:  ldloc.s    V_9
    IL_0300:  mul
    IL_0301:  add
    IL_0302:  ldc.i4.1
    IL_0303:  add
    IL_0304:  ldelem.u2
    IL_0305:  callvirt   instance !1 class [System.Collections]System.Collections.Generic.Dictionary`2<uint16,uint16>::get_Item(!0)
    IL_030a:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_030f:  br.s       IL_0372

    IL_0311:  ldarg.0
    IL_0312:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.BlockMesh::Indices
    IL_0317:  ldloc.s    V_4
    IL_0319:  ldloc.3
    IL_031a:  ldarg.1
    IL_031b:  callvirt   instance int32 [Engine]Engine.Graphics.ModelMeshPart::get_StartIndex()
    IL_0320:  ldc.i4.3
    IL_0321:  ldloc.s    V_9
    IL_0323:  mul
    IL_0324:  add
    IL_0325:  ldelem.u2
    IL_0326:  callvirt   instance !1 class [System.Collections]System.Collections.Generic.Dictionary`2<uint16,uint16>::get_Item(!0)
    IL_032b:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0330:  ldarg.0
    IL_0331:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.BlockMesh::Indices
    IL_0336:  ldloc.s    V_4
    IL_0338:  ldloc.3
    IL_0339:  ldarg.1
    IL_033a:  callvirt   instance int32 [Engine]Engine.Graphics.ModelMeshPart::get_StartIndex()
    IL_033f:  ldc.i4.3
    IL_0340:  ldloc.s    V_9
    IL_0342:  mul
    IL_0343:  add
    IL_0344:  ldc.i4.1
    IL_0345:  add
    IL_0346:  ldelem.u2
    IL_0347:  callvirt   instance !1 class [System.Collections]System.Collections.Generic.Dictionary`2<uint16,uint16>::get_Item(!0)
    IL_034c:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0351:  ldarg.0
    IL_0352:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.BlockMesh::Indices
    IL_0357:  ldloc.s    V_4
    IL_0359:  ldloc.3
    IL_035a:  ldarg.1
    IL_035b:  callvirt   instance int32 [Engine]Engine.Graphics.ModelMeshPart::get_StartIndex()
    IL_0360:  ldc.i4.3
    IL_0361:  ldloc.s    V_9
    IL_0363:  mul
    IL_0364:  add
    IL_0365:  ldc.i4.2
    IL_0366:  add
    IL_0367:  ldelem.u2
    IL_0368:  callvirt   instance !1 class [System.Collections]System.Collections.Generic.Dictionary`2<uint16,uint16>::get_Item(!0)
    IL_036d:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0372:  ldloc.s    V_9
    IL_0374:  ldc.i4.1
    IL_0375:  add
    IL_0376:  stloc.s    V_9
    IL_0378:  ldloc.s    V_9
    IL_037a:  ldarg.1
    IL_037b:  callvirt   instance int32 [Engine]Engine.Graphics.ModelMeshPart::get_IndicesCount()
    IL_0380:  ldc.i4.3
    IL_0381:  div
    IL_0382:  blt        IL_01dc

    IL_0387:  ldarg.0
    IL_0388:  call       instance void Game.BlockMesh::Trim()
    IL_038d:  ret
  } // end of method BlockMesh::AppendModelMeshPart

  .method public hidebysig instance void 
          AppendBlockMesh(class Game.BlockMesh blockMesh) cil managed
  {
    // 代码大小       118 (0x76)
    .maxstack  3
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
    IL_0006:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_000b:  stloc.0
    IL_000c:  ldc.i4.0
    IL_000d:  stloc.1
    IL_000e:  br.s       IL_0030

    IL_0010:  ldarg.0
    IL_0011:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
    IL_0016:  ldarg.1
    IL_0017:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
    IL_001c:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Array()
    IL_0021:  ldloc.1
    IL_0022:  ldelem     Game.BlockMeshVertex
    IL_0027:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::Add(!0)
    IL_002c:  ldloc.1
    IL_002d:  ldc.i4.1
    IL_002e:  add
    IL_002f:  stloc.1
    IL_0030:  ldloc.1
    IL_0031:  ldarg.1
    IL_0032:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
    IL_0037:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_003c:  blt.s      IL_0010

    IL_003e:  ldc.i4.0
    IL_003f:  stloc.2
    IL_0040:  br.s       IL_0061

    IL_0042:  ldarg.0
    IL_0043:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.BlockMesh::Indices
    IL_0048:  ldarg.1
    IL_0049:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.BlockMesh::Indices
    IL_004e:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0053:  ldloc.2
    IL_0054:  ldelem.u2
    IL_0055:  ldloc.0
    IL_0056:  add
    IL_0057:  conv.u2
    IL_0058:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_005d:  ldloc.2
    IL_005e:  ldc.i4.1
    IL_005f:  add
    IL_0060:  stloc.2
    IL_0061:  ldloc.2
    IL_0062:  ldarg.1
    IL_0063:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.BlockMesh::Indices
    IL_0068:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_006d:  blt.s      IL_0042

    IL_006f:  ldarg.0
    IL_0070:  call       instance void Game.BlockMesh::Trim()
    IL_0075:  ret
  } // end of method BlockMesh::AppendBlockMesh

  .method public hidebysig instance void 
          BlendBlockMesh(class Game.BlockMesh blockMesh,
                         float32 factor) cil managed
  {
    // 代码大小       134 (0x86)
    .maxstack  4
    .locals init (int32 V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             valuetype [Engine]Engine.Vector3 V_2)
    IL_0000:  ldarg.1
    IL_0001:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
    IL_0006:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_000b:  ldarg.0
    IL_000c:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
    IL_0011:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_0016:  beq.s      IL_0023

    IL_0018:  ldstr      "Meshes do not match."
    IL_001d:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0022:  throw

    IL_0023:  ldc.i4.0
    IL_0024:  stloc.0
    IL_0025:  br.s       IL_0077

    IL_0027:  ldarg.0
    IL_0028:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
    IL_002d:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Array()
    IL_0032:  ldloc.0
    IL_0033:  ldelema    Game.BlockMeshVertex
    IL_0038:  ldfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_003d:  stloc.1
    IL_003e:  ldarg.1
    IL_003f:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
    IL_0044:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Array()
    IL_0049:  ldloc.0
    IL_004a:  ldelema    Game.BlockMeshVertex
    IL_004f:  ldfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_0054:  stloc.2
    IL_0055:  ldarg.0
    IL_0056:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
    IL_005b:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Array()
    IL_0060:  ldloc.0
    IL_0061:  ldelema    Game.BlockMeshVertex
    IL_0066:  ldloc.1
    IL_0067:  ldloc.2
    IL_0068:  ldarg.2
    IL_0069:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Lerp(valuetype [Engine]Engine.Vector3,
                                                                                       valuetype [Engine]Engine.Vector3,
                                                                                       float32)
    IL_006e:  stfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_0073:  ldloc.0
    IL_0074:  ldc.i4.1
    IL_0075:  add
    IL_0076:  stloc.0
    IL_0077:  ldloc.0
    IL_0078:  ldarg.0
    IL_0079:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
    IL_007e:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_0083:  blt.s      IL_0027

    IL_0085:  ret
  } // end of method BlockMesh::BlendBlockMesh

  .method public hidebysig instance void 
          TransformPositions(valuetype [Engine]Engine.Matrix matrix,
                             [opt] int32 facesMask) cil managed
  {
    .param [2] = int32(0xFFFFFFFF)
    // 代码大小       104 (0x68)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  br.s       IL_0059

    IL_0004:  ldc.i4.1
    IL_0005:  ldarg.0
    IL_0006:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
    IL_000b:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Array()
    IL_0010:  ldloc.0
    IL_0011:  ldelema    Game.BlockMeshVertex
    IL_0016:  ldfld      uint8 Game.BlockMeshVertex::Face
    IL_001b:  ldc.i4.s   31
    IL_001d:  and
    IL_001e:  shl
    IL_001f:  ldarg.2
    IL_0020:  and
    IL_0021:  brfalse.s  IL_0055

    IL_0023:  ldarg.0
    IL_0024:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
    IL_0029:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Array()
    IL_002e:  ldloc.0
    IL_002f:  ldelema    Game.BlockMeshVertex
    IL_0034:  ldarg.0
    IL_0035:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
    IL_003a:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Array()
    IL_003f:  ldloc.0
    IL_0040:  ldelema    Game.BlockMeshVertex
    IL_0045:  ldfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_004a:  ldarg.1
    IL_004b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0050:  stfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_0055:  ldloc.0
    IL_0056:  ldc.i4.1
    IL_0057:  add
    IL_0058:  stloc.0
    IL_0059:  ldloc.0
    IL_005a:  ldarg.0
    IL_005b:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
    IL_0060:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_0065:  blt.s      IL_0004

    IL_0067:  ret
  } // end of method BlockMesh::TransformPositions

  .method public hidebysig instance void 
          TransformTextureCoordinates(valuetype [Engine]Engine.Matrix matrix,
                                      [opt] int32 facesMask) cil managed
  {
    .param [2] = int32(0xFFFFFFFF)
    // 代码大小       104 (0x68)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  br.s       IL_0059

    IL_0004:  ldc.i4.1
    IL_0005:  ldarg.0
    IL_0006:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
    IL_000b:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Array()
    IL_0010:  ldloc.0
    IL_0011:  ldelema    Game.BlockMeshVertex
    IL_0016:  ldfld      uint8 Game.BlockMeshVertex::Face
    IL_001b:  ldc.i4.s   31
    IL_001d:  and
    IL_001e:  shl
    IL_001f:  ldarg.2
    IL_0020:  and
    IL_0021:  brfalse.s  IL_0055

    IL_0023:  ldarg.0
    IL_0024:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
    IL_0029:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Array()
    IL_002e:  ldloc.0
    IL_002f:  ldelema    Game.BlockMeshVertex
    IL_0034:  ldarg.0
    IL_0035:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
    IL_003a:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Array()
    IL_003f:  ldloc.0
    IL_0040:  ldelema    Game.BlockMeshVertex
    IL_0045:  ldfld      valuetype [Engine]Engine.Vector2 Game.BlockMeshVertex::TextureCoordinates
    IL_004a:  ldarg.1
    IL_004b:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Transform(valuetype [Engine]Engine.Vector2,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0050:  stfld      valuetype [Engine]Engine.Vector2 Game.BlockMeshVertex::TextureCoordinates
    IL_0055:  ldloc.0
    IL_0056:  ldc.i4.1
    IL_0057:  add
    IL_0058:  stloc.0
    IL_0059:  ldloc.0
    IL_005a:  ldarg.0
    IL_005b:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
    IL_0060:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_0065:  blt.s      IL_0004

    IL_0067:  ret
  } // end of method BlockMesh::TransformTextureCoordinates

  .method public hidebysig instance void 
          SetColor(valuetype [Engine]Engine.Color color,
                   [opt] int32 facesMask) cil managed
  {
    .param [2] = int32(0xFFFFFFFF)
    // 代码大小       77 (0x4d)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  br.s       IL_003e

    IL_0004:  ldc.i4.1
    IL_0005:  ldarg.0
    IL_0006:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
    IL_000b:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Array()
    IL_0010:  ldloc.0
    IL_0011:  ldelema    Game.BlockMeshVertex
    IL_0016:  ldfld      uint8 Game.BlockMeshVertex::Face
    IL_001b:  ldc.i4.s   31
    IL_001d:  and
    IL_001e:  shl
    IL_001f:  ldarg.2
    IL_0020:  and
    IL_0021:  brfalse.s  IL_003a

    IL_0023:  ldarg.0
    IL_0024:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
    IL_0029:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Array()
    IL_002e:  ldloc.0
    IL_002f:  ldelema    Game.BlockMeshVertex
    IL_0034:  ldarg.1
    IL_0035:  stfld      valuetype [Engine]Engine.Color Game.BlockMeshVertex::Color
    IL_003a:  ldloc.0
    IL_003b:  ldc.i4.1
    IL_003c:  add
    IL_003d:  stloc.0
    IL_003e:  ldloc.0
    IL_003f:  ldarg.0
    IL_0040:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
    IL_0045:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_004a:  blt.s      IL_0004

    IL_004c:  ret
  } // end of method BlockMesh::SetColor

  .method public hidebysig instance void 
          ModulateColor(valuetype [Engine]Engine.Color color,
                        [opt] int32 facesMask) cil managed
  {
    .param [2] = int32(0xFFFFFFFF)
    // 代码大小       93 (0x5d)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  br.s       IL_004e

    IL_0004:  ldc.i4.1
    IL_0005:  ldarg.0
    IL_0006:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
    IL_000b:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Array()
    IL_0010:  ldloc.0
    IL_0011:  ldelema    Game.BlockMeshVertex
    IL_0016:  ldfld      uint8 Game.BlockMeshVertex::Face
    IL_001b:  ldc.i4.s   31
    IL_001d:  and
    IL_001e:  shl
    IL_001f:  ldarg.2
    IL_0020:  and
    IL_0021:  brfalse.s  IL_004a

    IL_0023:  ldarg.0
    IL_0024:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
    IL_0029:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Array()
    IL_002e:  ldloc.0
    IL_002f:  ldelema    Game.BlockMeshVertex
    IL_0034:  ldflda     valuetype [Engine]Engine.Color Game.BlockMeshVertex::Color
    IL_0039:  dup
    IL_003a:  ldobj      [Engine]Engine.Color
    IL_003f:  ldarg.1
    IL_0040:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0045:  stobj      [Engine]Engine.Color
    IL_004a:  ldloc.0
    IL_004b:  ldc.i4.1
    IL_004c:  add
    IL_004d:  stloc.0
    IL_004e:  ldloc.0
    IL_004f:  ldarg.0
    IL_0050:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
    IL_0055:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_005a:  blt.s      IL_0004

    IL_005c:  ret
  } // end of method BlockMesh::ModulateColor

  .method public hidebysig instance void 
          Trim() cil managed
  {
    // 代码大小       45 (0x2d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
    IL_000c:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_0011:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::set_Capacity(int32)
    IL_0016:  ldarg.0
    IL_0017:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.BlockMesh::Indices
    IL_001c:  ldarg.0
    IL_001d:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.BlockMesh::Indices
    IL_0022:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_0027:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::set_Capacity(int32)
    IL_002c:  ret
  } // end of method BlockMesh::Trim

  .method public hidebysig static !!T[]  GetVertexData<T>(class [Engine]Engine.Graphics.VertexBuffer vertexBuffer) cil managed
  {
    // 代码大小       106 (0x6a)
    .maxstack  5
    .locals init (uint8[] V_0,
             !!T[] V_1,
             valuetype [System.Runtime.InteropServices]System.Runtime.InteropServices.GCHandle V_2)
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance object [Engine]Engine.Graphics.VertexBuffer::get_Tag()
    IL_0006:  isinst     uint8[]
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  brtrue.s   IL_001a

    IL_000f:  ldstr      "VertexBuffer does not contain source data in Tag."
    IL_0014:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0019:  throw

    IL_001a:  ldloc.0
    IL_001b:  ldlen
    IL_001c:  conv.i4
    IL_001d:  call       int32 [Engine]Engine.Utilities::SizeOf<!!0>()
    IL_0022:  rem
    IL_0023:  brfalse.s  IL_0030

    IL_0025:  ldstr      "VertexBuffer data size is not a whole multiply of "
    + "target type size."
    IL_002a:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_002f:  throw

    IL_0030:  ldloc.0
    IL_0031:  ldlen
    IL_0032:  conv.i4
    IL_0033:  call       int32 [Engine]Engine.Utilities::SizeOf<!!0>()
    IL_0038:  div
    IL_0039:  newarr     !!T
    IL_003e:  stloc.1
    IL_003f:  ldloc.1
    IL_0040:  ldc.i4.3
    IL_0041:  call       valuetype [System.Runtime.InteropServices]System.Runtime.InteropServices.GCHandle [System.Runtime.InteropServices]System.Runtime.InteropServices.GCHandle::Alloc(object,
                                                                                                                                                                                          valuetype [System.Runtime.InteropServices]System.Runtime.InteropServices.GCHandleType)
    IL_0046:  stloc.2
    .try
    {
      IL_0047:  ldloc.0
      IL_0048:  ldc.i4.0
      IL_0049:  ldloca.s   V_2
      IL_004b:  call       instance native int [System.Runtime.InteropServices]System.Runtime.InteropServices.GCHandle::AddrOfPinnedObject()
      IL_0050:  call       int32 [Engine]Engine.Utilities::SizeOf<!!0>()
      IL_0055:  ldloc.1
      IL_0056:  ldlen
      IL_0057:  conv.i4
      IL_0058:  mul
      IL_0059:  call       void [System.Runtime.InteropServices]System.Runtime.InteropServices.Marshal::Copy(uint8[],
                                                                                                             int32,
                                                                                                             native int,
                                                                                                             int32)
      IL_005e:  leave.s    IL_0068

    }  // end .try
    finally
    {
      IL_0060:  ldloca.s   V_2
      IL_0062:  call       instance void [System.Runtime.InteropServices]System.Runtime.InteropServices.GCHandle::Free()
      IL_0067:  endfinally
    }  // end handler
    IL_0068:  ldloc.1
    IL_0069:  ret
  } // end of method BlockMesh::GetVertexData

  .method public hidebysig static !!T[]  GetIndexData<T>(class [Engine]Engine.Graphics.IndexBuffer indexBuffer) cil managed
  {
    // 代码大小       106 (0x6a)
    .maxstack  5
    .locals init (uint8[] V_0,
             !!T[] V_1,
             valuetype [System.Runtime.InteropServices]System.Runtime.InteropServices.GCHandle V_2)
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance object [Engine]Engine.Graphics.IndexBuffer::get_Tag()
    IL_0006:  isinst     uint8[]
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  brtrue.s   IL_001a

    IL_000f:  ldstr      "IndexBuffer does not contain source data in Tag."
    IL_0014:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0019:  throw

    IL_001a:  ldloc.0
    IL_001b:  ldlen
    IL_001c:  conv.i4
    IL_001d:  call       int32 [Engine]Engine.Utilities::SizeOf<!!0>()
    IL_0022:  rem
    IL_0023:  brfalse.s  IL_0030

    IL_0025:  ldstr      "IndexBuffer data size is not a whole multiply of t"
    + "arget type size."
    IL_002a:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_002f:  throw

    IL_0030:  ldloc.0
    IL_0031:  ldlen
    IL_0032:  conv.i4
    IL_0033:  call       int32 [Engine]Engine.Utilities::SizeOf<!!0>()
    IL_0038:  div
    IL_0039:  newarr     !!T
    IL_003e:  stloc.1
    IL_003f:  ldloc.1
    IL_0040:  ldc.i4.3
    IL_0041:  call       valuetype [System.Runtime.InteropServices]System.Runtime.InteropServices.GCHandle [System.Runtime.InteropServices]System.Runtime.InteropServices.GCHandle::Alloc(object,
                                                                                                                                                                                          valuetype [System.Runtime.InteropServices]System.Runtime.InteropServices.GCHandleType)
    IL_0046:  stloc.2
    .try
    {
      IL_0047:  ldloc.0
      IL_0048:  ldc.i4.0
      IL_0049:  ldloca.s   V_2
      IL_004b:  call       instance native int [System.Runtime.InteropServices]System.Runtime.InteropServices.GCHandle::AddrOfPinnedObject()
      IL_0050:  call       int32 [Engine]Engine.Utilities::SizeOf<!!0>()
      IL_0055:  ldloc.1
      IL_0056:  ldlen
      IL_0057:  conv.i4
      IL_0058:  mul
      IL_0059:  call       void [System.Runtime.InteropServices]System.Runtime.InteropServices.Marshal::Copy(uint8[],
                                                                                                             int32,
                                                                                                             native int,
                                                                                                             int32)
      IL_005e:  leave.s    IL_0068

    }  // end .try
    finally
    {
      IL_0060:  ldloca.s   V_2
      IL_0062:  call       instance void [System.Runtime.InteropServices]System.Runtime.InteropServices.GCHandle::Free()
      IL_0067:  endfinally
    }  // end handler
    IL_0068:  ldloc.1
    IL_0069:  ret
  } // end of method BlockMesh::GetIndexData

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::.ctor()
    IL_0006:  stfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [Engine]Engine.DynamicArray`1<uint16>::.ctor()
    IL_0011:  stfld      class [Engine]Engine.DynamicArray`1<uint16> Game.BlockMesh::Indices
    IL_0016:  ldarg.0
    IL_0017:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_001c:  ret
  } // end of method BlockMesh::.ctor

} // end of class Game.BlockMesh