.class public abstract auto ansi sealed Game.InstancedModelsManager
       extends [System.Runtime]System.Object
{
  .class sequential ansi sealed nested private beforefieldinit SourceModelVertex
         extends [System.Runtime]System.ValueType
  {
    .field public float32 X
    .field public float32 Y
    .field public float32 Z
    .field public float32 Nx
    .field public float32 Ny
    .field public float32 Nz
    .field public float32 Tx
    .field public float32 Ty
  } // end of class SourceModelVertex

  .class sequential ansi sealed nested private beforefieldinit InstancedVertex
         extends [System.Runtime]System.ValueType
  {
    .field public float32 X
    .field public float32 Y
    .field public float32 Z
    .field public float32 Nx
    .field public float32 Ny
    .field public float32 Nz
    .field public float32 Tx
    .field public float32 Ty
    .field public float32 Instance
  } // end of class InstancedVertex

  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.InstancedModelsManager/'<>c' '<>9'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.InstancedModelsManager/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.InstancedModelsManager/'<>c' Game.InstancedModelsManager/'<>c'::'<>9'
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
            '<.cctor>b__3_0'() cil managed
    {
      // 代码大小       82 (0x52)
      .maxstack  2
      .locals init (valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<class [Engine]Engine.Graphics.Model,class Game.InstancedModelData> V_0)
      IL_0000:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<class [Engine]Engine.Graphics.Model,class Game.InstancedModelData> Game.InstancedModelsManager::m_cache
      IL_0005:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<class [Engine]Engine.Graphics.Model,class Game.InstancedModelData>::get_Values()
      IL_000a:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<class [Engine]Engine.Graphics.Model,class Game.InstancedModelData>::GetEnumerator()
      IL_000f:  stloc.0
      .try
      {
        IL_0010:  br.s       IL_002e

        IL_0012:  ldloca.s   V_0
        IL_0014:  call       instance !1 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<class [Engine]Engine.Graphics.Model,class Game.InstancedModelData>::get_Current()
        IL_0019:  dup
        IL_001a:  ldfld      class [Engine]Engine.Graphics.VertexBuffer Game.InstancedModelData::VertexBuffer
        IL_001f:  callvirt   instance void [Engine]Engine.Graphics.GraphicsResource::Dispose()
        IL_0024:  ldfld      class [Engine]Engine.Graphics.IndexBuffer Game.InstancedModelData::IndexBuffer
        IL_0029:  callvirt   instance void [Engine]Engine.Graphics.GraphicsResource::Dispose()
        IL_002e:  ldloca.s   V_0
        IL_0030:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<class [Engine]Engine.Graphics.Model,class Game.InstancedModelData>::MoveNext()
        IL_0035:  brtrue.s   IL_0012

        IL_0037:  leave.s    IL_0047

      }  // end .try
      finally
      {
        IL_0039:  ldloca.s   V_0
        IL_003b:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<class [Engine]Engine.Graphics.Model,class Game.InstancedModelData>
        IL_0041:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_0046:  endfinally
      }  // end handler
      IL_0047:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<class [Engine]Engine.Graphics.Model,class Game.InstancedModelData> Game.InstancedModelsManager::m_cache
      IL_004c:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class [Engine]Engine.Graphics.Model,class Game.InstancedModelData>::Clear()
      IL_0051:  ret
    } // end of method '<>c'::'<.cctor>b__3_0'

  } // end of class '<>c'

  .field private static class [System.Collections]System.Collections.Generic.Dictionary`2<class [Engine]Engine.Graphics.Model,class Game.InstancedModelData> m_cache
  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  8
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class [Engine]Engine.Graphics.Model,class Game.InstancedModelData>::.ctor()
    IL_0005:  stsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<class [Engine]Engine.Graphics.Model,class Game.InstancedModelData> Game.InstancedModelsManager::m_cache
    IL_000a:  ldsfld     class Game.InstancedModelsManager/'<>c' Game.InstancedModelsManager/'<>c'::'<>9'
    IL_000f:  ldftn      instance void Game.InstancedModelsManager/'<>c'::'<.cctor>b__3_0'()
    IL_0015:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_001a:  call       void [Engine]Engine.Graphics.Display::add_DeviceReset(class [System.Runtime]System.Action)
    IL_001f:  ret
  } // end of method InstancedModelsManager::.cctor

  .method public hidebysig static class Game.InstancedModelData 
          GetInstancedModelData(class [Engine]Engine.Graphics.Model model,
                                int32[] meshDrawOrders) cil managed
  {
    // 代码大小       37 (0x25)
    .maxstack  3
    .locals init (class Game.InstancedModelData V_0)
    IL_0000:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<class [Engine]Engine.Graphics.Model,class Game.InstancedModelData> Game.InstancedModelsManager::m_cache
    IL_0005:  ldarg.0
    IL_0006:  ldloca.s   V_0
    IL_0008:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<class [Engine]Engine.Graphics.Model,class Game.InstancedModelData>::TryGetValue(!0,
                                                                                                                                                                                         !1&)
    IL_000d:  brtrue.s   IL_0023

    IL_000f:  ldarg.0
    IL_0010:  ldarg.1
    IL_0011:  call       class Game.InstancedModelData Game.InstancedModelsManager::CreateInstancedModelData(class [Engine]Engine.Graphics.Model,
                                                                                                             int32[])
    IL_0016:  stloc.0
    IL_0017:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<class [Engine]Engine.Graphics.Model,class Game.InstancedModelData> Game.InstancedModelsManager::m_cache
    IL_001c:  ldarg.0
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class [Engine]Engine.Graphics.Model,class Game.InstancedModelData>::Add(!0,
                                                                                                                                                                                 !1)
    IL_0023:  ldloc.0
    IL_0024:  ret
  } // end of method InstancedModelsManager::GetInstancedModelData

  .method private hidebysig static class Game.InstancedModelData 
          CreateInstancedModelData(class [Engine]Engine.Graphics.Model model,
                                   int32[] meshDrawOrders) cil managed
  {
    // 代码大小       790 (0x316)
    .maxstack  6
    .locals init (class [Engine]Engine.DynamicArray`1<valuetype Game.InstancedModelsManager/InstancedVertex> V_0,
             class [Engine]Engine.DynamicArray`1<uint16> V_1,
             int32 V_2,
             class [Engine]Engine.Graphics.ModelMesh V_3,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMesh> V_4,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMeshPart> V_5,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_6,
             class [Engine]Engine.Graphics.ModelMeshPart V_7,
             class [Engine]Engine.Graphics.VertexBuffer V_8,
             class [Engine]Engine.Graphics.IndexBuffer V_9,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.VertexElement> V_10,
             uint16[] V_11,
             class [System.Collections]System.Collections.Generic.Dictionary`2<uint16,uint16> V_12,
             valuetype Game.InstancedModelsManager/SourceModelVertex[] V_13,
             int32 V_14,
             uint16 V_15,
             valuetype Game.InstancedModelsManager/InstancedVertex V_16,
             valuetype Game.InstancedModelsManager/SourceModelVertex V_17,
             int32 V_18)
    IL_0000:  newobj     instance void class [Engine]Engine.DynamicArray`1<valuetype Game.InstancedModelsManager/InstancedVertex>::.ctor()
    IL_0005:  stloc.0
    IL_0006:  newobj     instance void class [Engine]Engine.DynamicArray`1<uint16>::.ctor()
    IL_000b:  stloc.1
    IL_000c:  ldc.i4.0
    IL_000d:  stloc.2
    IL_000e:  br         IL_02ad

    IL_0013:  ldarg.0
    IL_0014:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMesh> [Engine]Engine.Graphics.Model::get_Meshes()
    IL_0019:  stloc.s    V_4
    IL_001b:  ldloca.s   V_4
    IL_001d:  ldarg.1
    IL_001e:  ldloc.2
    IL_001f:  ldelem.i4
    IL_0020:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMesh>::get_Item(int32)
    IL_0025:  stloc.3
    IL_0026:  ldloc.3
    IL_0027:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
    IL_002c:  stloc.s    V_6
    IL_002e:  ldloca.s   V_6
    IL_0030:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::GetEnumerator()
    IL_0035:  stloc.s    V_5
    .try
    {
      IL_0037:  br         IL_028d

      IL_003c:  ldloca.s   V_5
      IL_003e:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMeshPart>::get_Current()
      IL_0043:  stloc.s    V_7
      IL_0045:  ldloc.0
      IL_0046:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.InstancedModelsManager/InstancedVertex>::get_Count()
      IL_004b:  pop
      IL_004c:  ldloc.s    V_7
      IL_004e:  callvirt   instance class [Engine]Engine.Graphics.VertexBuffer [Engine]Engine.Graphics.ModelMeshPart::get_VertexBuffer()
      IL_0053:  stloc.s    V_8
      IL_0055:  ldloc.s    V_7
      IL_0057:  callvirt   instance class [Engine]Engine.Graphics.IndexBuffer [Engine]Engine.Graphics.ModelMeshPart::get_IndexBuffer()
      IL_005c:  stloc.s    V_9
      IL_005e:  ldloc.s    V_8
      IL_0060:  callvirt   instance class [Engine]Engine.Graphics.VertexDeclaration [Engine]Engine.Graphics.VertexBuffer::get_VertexDeclaration()
      IL_0065:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.VertexElement> [Engine]Engine.Graphics.VertexDeclaration::get_VertexElements()
      IL_006a:  stloc.s    V_10
      IL_006c:  ldloc.s    V_9
      IL_006e:  call       !!0[] Game.BlockMesh::GetIndexData<uint16>(class [Engine]Engine.Graphics.IndexBuffer)
      IL_0073:  stloc.s    V_11
      IL_0075:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<uint16,uint16>::.ctor()
      IL_007a:  stloc.s    V_12
      IL_007c:  ldloca.s   V_10
      IL_007e:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.VertexElement>::get_Count()
      IL_0083:  ldc.i4.3
      IL_0084:  bne.un     IL_0212

      IL_0089:  ldloca.s   V_10
      IL_008b:  ldc.i4.0
      IL_008c:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.VertexElement>::get_Item(int32)
      IL_0091:  ldfld      int32 [Engine]Engine.Graphics.VertexElement::Offset
      IL_0096:  brtrue     IL_0212

      IL_009b:  ldloca.s   V_10
      IL_009d:  ldc.i4.0
      IL_009e:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.VertexElement>::get_Item(int32)
      IL_00a3:  ldfld      string [Engine]Engine.Graphics.VertexElement::Semantic
      IL_00a8:  ldc.i4.0
      IL_00a9:  call       string [Engine]Engine.Graphics.ExtensionMethods::GetSemanticString(valuetype [Engine]Engine.Graphics.VertexElementSemantic)
      IL_00ae:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_00b3:  brfalse    IL_0212

      IL_00b8:  ldloca.s   V_10
      IL_00ba:  ldc.i4.1
      IL_00bb:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.VertexElement>::get_Item(int32)
      IL_00c0:  ldfld      int32 [Engine]Engine.Graphics.VertexElement::Offset
      IL_00c5:  ldc.i4.s   12
      IL_00c7:  bne.un     IL_0212

      IL_00cc:  ldloca.s   V_10
      IL_00ce:  ldc.i4.1
      IL_00cf:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.VertexElement>::get_Item(int32)
      IL_00d4:  ldfld      string [Engine]Engine.Graphics.VertexElement::Semantic
      IL_00d9:  ldc.i4.2
      IL_00da:  call       string [Engine]Engine.Graphics.ExtensionMethods::GetSemanticString(valuetype [Engine]Engine.Graphics.VertexElementSemantic)
      IL_00df:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_00e4:  brfalse    IL_0212

      IL_00e9:  ldloca.s   V_10
      IL_00eb:  ldc.i4.2
      IL_00ec:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.VertexElement>::get_Item(int32)
      IL_00f1:  ldfld      int32 [Engine]Engine.Graphics.VertexElement::Offset
      IL_00f6:  ldc.i4.s   24
      IL_00f8:  bne.un     IL_0212

      IL_00fd:  ldloca.s   V_10
      IL_00ff:  ldc.i4.2
      IL_0100:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.VertexElement>::get_Item(int32)
      IL_0105:  ldfld      string [Engine]Engine.Graphics.VertexElement::Semantic
      IL_010a:  ldc.i4.3
      IL_010b:  call       string [Engine]Engine.Graphics.ExtensionMethods::GetSemanticString(valuetype [Engine]Engine.Graphics.VertexElementSemantic)
      IL_0110:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0115:  brfalse    IL_0212

      IL_011a:  ldloc.s    V_8
      IL_011c:  call       !!0[] Game.BlockMesh::GetVertexData<valuetype Game.InstancedModelsManager/SourceModelVertex>(class [Engine]Engine.Graphics.VertexBuffer)
      IL_0121:  stloc.s    V_13
      IL_0123:  ldloc.s    V_7
      IL_0125:  callvirt   instance int32 [Engine]Engine.Graphics.ModelMeshPart::get_StartIndex()
      IL_012a:  stloc.s    V_14
      IL_012c:  br         IL_01fa

      IL_0131:  ldloc.s    V_11
      IL_0133:  ldloc.s    V_14
      IL_0135:  ldelem.u2
      IL_0136:  stloc.s    V_15
      IL_0138:  ldloc.s    V_12
      IL_013a:  ldloc.s    V_15
      IL_013c:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<uint16,uint16>::ContainsKey(!0)
      IL_0141:  brtrue     IL_01f4

      IL_0146:  ldloc.s    V_12
      IL_0148:  ldloc.s    V_15
      IL_014a:  ldloc.0
      IL_014b:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.InstancedModelsManager/InstancedVertex>::get_Count()
      IL_0150:  conv.u2
      IL_0151:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<uint16,uint16>::Add(!0,
                                                                                                                               !1)
      IL_0156:  ldloca.s   V_16
      IL_0158:  initobj    Game.InstancedModelsManager/InstancedVertex
      IL_015e:  ldloc.s    V_13
      IL_0160:  ldloc.s    V_15
      IL_0162:  ldelem     Game.InstancedModelsManager/SourceModelVertex
      IL_0167:  stloc.s    V_17
      IL_0169:  ldloca.s   V_16
      IL_016b:  ldloc.s    V_17
      IL_016d:  ldfld      float32 Game.InstancedModelsManager/SourceModelVertex::X
      IL_0172:  stfld      float32 Game.InstancedModelsManager/InstancedVertex::X
      IL_0177:  ldloca.s   V_16
      IL_0179:  ldloc.s    V_17
      IL_017b:  ldfld      float32 Game.InstancedModelsManager/SourceModelVertex::Y
      IL_0180:  stfld      float32 Game.InstancedModelsManager/InstancedVertex::Y
      IL_0185:  ldloca.s   V_16
      IL_0187:  ldloc.s    V_17
      IL_0189:  ldfld      float32 Game.InstancedModelsManager/SourceModelVertex::Z
      IL_018e:  stfld      float32 Game.InstancedModelsManager/InstancedVertex::Z
      IL_0193:  ldloca.s   V_16
      IL_0195:  ldloc.s    V_17
      IL_0197:  ldfld      float32 Game.InstancedModelsManager/SourceModelVertex::Nx
      IL_019c:  stfld      float32 Game.InstancedModelsManager/InstancedVertex::Nx
      IL_01a1:  ldloca.s   V_16
      IL_01a3:  ldloc.s    V_17
      IL_01a5:  ldfld      float32 Game.InstancedModelsManager/SourceModelVertex::Ny
      IL_01aa:  stfld      float32 Game.InstancedModelsManager/InstancedVertex::Ny
      IL_01af:  ldloca.s   V_16
      IL_01b1:  ldloc.s    V_17
      IL_01b3:  ldfld      float32 Game.InstancedModelsManager/SourceModelVertex::Nz
      IL_01b8:  stfld      float32 Game.InstancedModelsManager/InstancedVertex::Nz
      IL_01bd:  ldloca.s   V_16
      IL_01bf:  ldloc.s    V_17
      IL_01c1:  ldfld      float32 Game.InstancedModelsManager/SourceModelVertex::Tx
      IL_01c6:  stfld      float32 Game.InstancedModelsManager/InstancedVertex::Tx
      IL_01cb:  ldloca.s   V_16
      IL_01cd:  ldloc.s    V_17
      IL_01cf:  ldfld      float32 Game.InstancedModelsManager/SourceModelVertex::Ty
      IL_01d4:  stfld      float32 Game.InstancedModelsManager/InstancedVertex::Ty
      IL_01d9:  ldloca.s   V_16
      IL_01db:  ldloc.3
      IL_01dc:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.ModelMesh::get_ParentBone()
      IL_01e1:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
      IL_01e6:  conv.r4
      IL_01e7:  stfld      float32 Game.InstancedModelsManager/InstancedVertex::Instance
      IL_01ec:  ldloc.0
      IL_01ed:  ldloc.s    V_16
      IL_01ef:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.InstancedModelsManager/InstancedVertex>::Add(!0)
      IL_01f4:  ldloc.s    V_14
      IL_01f6:  ldc.i4.1
      IL_01f7:  add
      IL_01f8:  stloc.s    V_14
      IL_01fa:  ldloc.s    V_14
      IL_01fc:  ldloc.s    V_7
      IL_01fe:  callvirt   instance int32 [Engine]Engine.Graphics.ModelMeshPart::get_StartIndex()
      IL_0203:  ldloc.s    V_7
      IL_0205:  callvirt   instance int32 [Engine]Engine.Graphics.ModelMeshPart::get_IndicesCount()
      IL_020a:  add
      IL_020b:  blt        IL_0131

      IL_0210:  br.s       IL_021d

      IL_0212:  ldstr      "Unsupported vertex format."
      IL_0217:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
      IL_021c:  throw

      IL_021d:  ldc.i4.0
      IL_021e:  stloc.s    V_18
      IL_0220:  br.s       IL_0280

      IL_0222:  ldloc.1
      IL_0223:  ldloc.s    V_12
      IL_0225:  ldloc.s    V_11
      IL_0227:  ldloc.s    V_7
      IL_0229:  callvirt   instance int32 [Engine]Engine.Graphics.ModelMeshPart::get_StartIndex()
      IL_022e:  ldc.i4.3
      IL_022f:  ldloc.s    V_18
      IL_0231:  mul
      IL_0232:  add
      IL_0233:  ldelem.u2
      IL_0234:  callvirt   instance !1 class [System.Collections]System.Collections.Generic.Dictionary`2<uint16,uint16>::get_Item(!0)
      IL_0239:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
      IL_023e:  ldloc.1
      IL_023f:  ldloc.s    V_12
      IL_0241:  ldloc.s    V_11
      IL_0243:  ldloc.s    V_7
      IL_0245:  callvirt   instance int32 [Engine]Engine.Graphics.ModelMeshPart::get_StartIndex()
      IL_024a:  ldc.i4.3
      IL_024b:  ldloc.s    V_18
      IL_024d:  mul
      IL_024e:  add
      IL_024f:  ldc.i4.1
      IL_0250:  add
      IL_0251:  ldelem.u2
      IL_0252:  callvirt   instance !1 class [System.Collections]System.Collections.Generic.Dictionary`2<uint16,uint16>::get_Item(!0)
      IL_0257:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
      IL_025c:  ldloc.1
      IL_025d:  ldloc.s    V_12
      IL_025f:  ldloc.s    V_11
      IL_0261:  ldloc.s    V_7
      IL_0263:  callvirt   instance int32 [Engine]Engine.Graphics.ModelMeshPart::get_StartIndex()
      IL_0268:  ldc.i4.3
      IL_0269:  ldloc.s    V_18
      IL_026b:  mul
      IL_026c:  add
      IL_026d:  ldc.i4.2
      IL_026e:  add
      IL_026f:  ldelem.u2
      IL_0270:  callvirt   instance !1 class [System.Collections]System.Collections.Generic.Dictionary`2<uint16,uint16>::get_Item(!0)
      IL_0275:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
      IL_027a:  ldloc.s    V_18
      IL_027c:  ldc.i4.1
      IL_027d:  add
      IL_027e:  stloc.s    V_18
      IL_0280:  ldloc.s    V_18
      IL_0282:  ldloc.s    V_7
      IL_0284:  callvirt   instance int32 [Engine]Engine.Graphics.ModelMeshPart::get_IndicesCount()
      IL_0289:  ldc.i4.3
      IL_028a:  div
      IL_028b:  blt.s      IL_0222

      IL_028d:  ldloca.s   V_5
      IL_028f:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMeshPart>::MoveNext()
      IL_0294:  brtrue     IL_003c

      IL_0299:  leave.s    IL_02a9

    }  // end .try
    finally
    {
      IL_029b:  ldloca.s   V_5
      IL_029d:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMeshPart>
      IL_02a3:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_02a8:  endfinally
    }  // end handler
    IL_02a9:  ldloc.2
    IL_02aa:  ldc.i4.1
    IL_02ab:  add
    IL_02ac:  stloc.2
    IL_02ad:  ldloc.2
    IL_02ae:  ldarg.1
    IL_02af:  ldlen
    IL_02b0:  conv.i4
    IL_02b1:  blt        IL_0013

    IL_02b6:  newobj     instance void Game.InstancedModelData::.ctor()
    IL_02bb:  dup
    IL_02bc:  ldsfld     class [Engine]Engine.Graphics.VertexDeclaration Game.InstancedModelData::VertexDeclaration
    IL_02c1:  ldloc.0
    IL_02c2:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.InstancedModelsManager/InstancedVertex>::get_Count()
    IL_02c7:  newobj     instance void [Engine]Engine.Graphics.VertexBuffer::.ctor(class [Engine]Engine.Graphics.VertexDeclaration,
                                                                                   int32)
    IL_02cc:  stfld      class [Engine]Engine.Graphics.VertexBuffer Game.InstancedModelData::VertexBuffer
    IL_02d1:  dup
    IL_02d2:  ldc.i4.0
    IL_02d3:  ldloc.1
    IL_02d4:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_02d9:  newobj     instance void [Engine]Engine.Graphics.IndexBuffer::.ctor(valuetype [Engine]Engine.Graphics.IndexFormat,
                                                                                  int32)
    IL_02de:  stfld      class [Engine]Engine.Graphics.IndexBuffer Game.InstancedModelData::IndexBuffer
    IL_02e3:  dup
    IL_02e4:  ldfld      class [Engine]Engine.Graphics.VertexBuffer Game.InstancedModelData::VertexBuffer
    IL_02e9:  ldloc.0
    IL_02ea:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.InstancedModelsManager/InstancedVertex>::get_Array()
    IL_02ef:  ldc.i4.0
    IL_02f0:  ldloc.0
    IL_02f1:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.InstancedModelsManager/InstancedVertex>::get_Count()
    IL_02f6:  ldc.i4.0
    IL_02f7:  callvirt   instance void [Engine]Engine.Graphics.VertexBuffer::SetData<valuetype Game.InstancedModelsManager/InstancedVertex>(!!0[],
                                                                                                                                            int32,
                                                                                                                                            int32,
                                                                                                                                            int32)
    IL_02fc:  dup
    IL_02fd:  ldfld      class [Engine]Engine.Graphics.IndexBuffer Game.InstancedModelData::IndexBuffer
    IL_0302:  ldloc.1
    IL_0303:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0308:  ldc.i4.0
    IL_0309:  ldloc.1
    IL_030a:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_030f:  ldc.i4.0
    IL_0310:  callvirt   instance void [Engine]Engine.Graphics.IndexBuffer::SetData<uint16>(!!0[],
                                                                                            int32,
                                                                                            int32,
                                                                                            int32)
    IL_0315:  ret
  } // end of method InstancedModelsManager::CreateInstancedModelData

} // end of class Game.InstancedModelsManager