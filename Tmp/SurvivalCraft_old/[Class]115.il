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
    IL_0014:  ldfld      valuetype [Engine]Engine.Matrix [Engine]Engine.Graphics.ModelBone::Transform
    IL_0019:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_001e:  ret

    IL_001f:  ldarg.0
    IL_0020:  ldfld      valuetype [Engine]Engine.Matrix [Engine]Engine.Graphics.ModelBone::Transform
    IL_0025:  ret
  } // end of method BlockMesh::GetBoneAbsoluteTransform

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