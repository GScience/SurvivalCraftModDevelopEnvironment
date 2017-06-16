.class public abstract auto ansi sealed beforefieldinit GScience.ModAPI.Block.BlockManager
       extends [System.Runtime]System.Object
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c__5`1'<([Survivalcraft]Game.Block) BlockBaseType>
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class GScience.ModAPI.Block.BlockManager/'<>c__5`1'<!BlockBaseType> '<>9'
    .field public static class [System.Runtime]System.Func`2<class [System.Reflection]System.Reflection.FieldInfo,bool> '<>9__5_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void class GScience.ModAPI.Block.BlockManager/'<>c__5`1'<!BlockBaseType>::.ctor()
      IL_0005:  stsfld     class GScience.ModAPI.Block.BlockManager/'<>c__5`1'<!0> class GScience.ModAPI.Block.BlockManager/'<>c__5`1'<!BlockBaseType>::'<>9'
      IL_000a:  ret
    } // end of method '<>c__5`1'::.cctor

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  nop
      IL_0007:  ret
    } // end of method '<>c__5`1'::.ctor

    .method assembly hidebysig instance bool 
            '<addBlock>b__5_0'(class [System.Reflection]System.Reflection.FieldInfo fi) cil managed
    {
      // 代码大小       47 (0x2f)
      .maxstack  2
      .locals init (bool V_0,
               bool V_1)
      IL_0000:  nop
      IL_0001:  ldarg.1
      IL_0002:  callvirt   instance string [System.Reflection]System.Reflection.MemberInfo::get_Name()
      IL_0007:  ldstr      "Index"
      IL_000c:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0011:  brfalse.s  IL_001b

      IL_0013:  ldarg.1
      IL_0014:  callvirt   instance bool [System.Reflection]System.Reflection.FieldInfo::get_IsPublic()
      IL_0019:  br.s       IL_001c

      IL_001b:  ldc.i4.0
      IL_001c:  stloc.0
      IL_001d:  ldloc.0
      IL_001e:  brfalse.s  IL_0029

      IL_0020:  ldarg.1
      IL_0021:  callvirt   instance bool [System.Reflection]System.Reflection.FieldInfo::get_IsStatic()
      IL_0026:  stloc.1
      IL_0027:  br.s       IL_002d

      IL_0029:  ldc.i4.0
      IL_002a:  stloc.1
      IL_002b:  br.s       IL_002d

      IL_002d:  ldloc.1
      IL_002e:  ret
    } // end of method '<>c__5`1'::'<addBlock>b__5_0'

  } // end of class '<>c__5`1'

  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class GScience.ModAPI.Block.BlockManager/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<class [System.Reflection]System.Reflection.FieldInfo,bool> '<>9__6_0'
    .field public static class [System.Runtime]System.Func`2<class [System.Reflection]System.Reflection.FieldInfo,bool> '<>9__6_1'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void GScience.ModAPI.Block.BlockManager/'<>c'::.ctor()
      IL_0005:  stsfld     class GScience.ModAPI.Block.BlockManager/'<>c' GScience.ModAPI.Block.BlockManager/'<>c'::'<>9'
      IL_000a:  ret
    } // end of method '<>c'::.cctor

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  nop
      IL_0007:  ret
    } // end of method '<>c'::.ctor

    .method assembly hidebysig instance bool 
            '<loadBlocks>b__6_0'(class [System.Reflection]System.Reflection.FieldInfo fi) cil managed
    {
      // 代码大小       47 (0x2f)
      .maxstack  2
      .locals init (bool V_0,
               bool V_1)
      IL_0000:  nop
      IL_0001:  ldarg.1
      IL_0002:  callvirt   instance string [System.Reflection]System.Reflection.MemberInfo::get_Name()
      IL_0007:  ldstr      "Index"
      IL_000c:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0011:  brfalse.s  IL_001b

      IL_0013:  ldarg.1
      IL_0014:  callvirt   instance bool [System.Reflection]System.Reflection.FieldInfo::get_IsPublic()
      IL_0019:  br.s       IL_001c

      IL_001b:  ldc.i4.0
      IL_001c:  stloc.0
      IL_001d:  ldloc.0
      IL_001e:  brfalse.s  IL_0029

      IL_0020:  ldarg.1
      IL_0021:  callvirt   instance bool [System.Reflection]System.Reflection.FieldInfo::get_IsStatic()
      IL_0026:  stloc.1
      IL_0027:  br.s       IL_002d

      IL_0029:  ldc.i4.0
      IL_002a:  stloc.1
      IL_002b:  br.s       IL_002d

      IL_002d:  ldloc.1
      IL_002e:  ret
    } // end of method '<>c'::'<loadBlocks>b__6_0'

    .method assembly hidebysig instance bool 
            '<loadBlocks>b__6_1'(class [System.Reflection]System.Reflection.FieldInfo fi) cil managed
    {
      // 代码大小       47 (0x2f)
      .maxstack  2
      .locals init (bool V_0,
               bool V_1)
      IL_0000:  nop
      IL_0001:  ldarg.1
      IL_0002:  callvirt   instance string [System.Reflection]System.Reflection.MemberInfo::get_Name()
      IL_0007:  ldstr      "m_block"
      IL_000c:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0011:  brfalse.s  IL_001b

      IL_0013:  ldarg.1
      IL_0014:  callvirt   instance bool [System.Reflection]System.Reflection.FieldInfo::get_IsPublic()
      IL_0019:  br.s       IL_001c

      IL_001b:  ldc.i4.0
      IL_001c:  stloc.0
      IL_001d:  ldloc.0
      IL_001e:  brfalse.s  IL_0029

      IL_0020:  ldarg.1
      IL_0021:  callvirt   instance bool [System.Reflection]System.Reflection.FieldInfo::get_IsStatic()
      IL_0026:  stloc.1
      IL_0027:  br.s       IL_002d

      IL_0029:  ldc.i4.0
      IL_002a:  stloc.1
      IL_002b:  br.s       IL_002d

      IL_002d:  ldloc.1
      IL_002e:  ret
    } // end of method '<>c'::'<loadBlocks>b__6_1'

  } // end of class '<>c'

  .field private static int32 m_blockCount
  .field private static class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class [Survivalcraft]Game.Block> blockList
  .field private static bool m_hasLoafSCBlock
  .method public hidebysig static int32  getCount() cil managed
  {
    // 代码大小       37 (0x25)
    .maxstack  2
    .locals init (bool V_0,
             int32 V_1)
    IL_0000:  nop
    IL_0001:  ldsfld     bool GScience.ModAPI.Block.BlockManager::m_hasLoafSCBlock
    IL_0006:  ldc.i4.0
    IL_0007:  ceq
    IL_0009:  stloc.0
    IL_000a:  ldloc.0
    IL_000b:  brfalse.s  IL_001b

    IL_000d:  nop
    IL_000e:  call       void GScience.ModAPI.Block.BlockManager::loadBlocks()
    IL_0013:  nop
    IL_0014:  ldc.i4.1
    IL_0015:  stsfld     bool GScience.ModAPI.Block.BlockManager::m_hasLoafSCBlock
    IL_001a:  nop
    IL_001b:  ldsfld     int32 GScience.ModAPI.Block.BlockManager::m_blockCount
    IL_0020:  stloc.1
    IL_0021:  br.s       IL_0023

    IL_0023:  ldloc.1
    IL_0024:  ret
  } // end of method BlockManager::getCount

  .method public hidebysig static class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class [Survivalcraft]Game.Block> 
          getBlockList() cil managed
  {
    // 代码大小       37 (0x25)
    .maxstack  2
    .locals init (bool V_0,
             class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class [Survivalcraft]Game.Block> V_1)
    IL_0000:  nop
    IL_0001:  ldsfld     bool GScience.ModAPI.Block.BlockManager::m_hasLoafSCBlock
    IL_0006:  ldc.i4.0
    IL_0007:  ceq
    IL_0009:  stloc.0
    IL_000a:  ldloc.0
    IL_000b:  brfalse.s  IL_001b

    IL_000d:  nop
    IL_000e:  call       void GScience.ModAPI.Block.BlockManager::loadBlocks()
    IL_0013:  nop
    IL_0014:  ldc.i4.1
    IL_0015:  stsfld     bool GScience.ModAPI.Block.BlockManager::m_hasLoafSCBlock
    IL_001a:  nop
    IL_001b:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class [Survivalcraft]Game.Block> GScience.ModAPI.Block.BlockManager::blockList
    IL_0020:  stloc.1
    IL_0021:  br.s       IL_0023

    IL_0023:  ldloc.1
    IL_0024:  ret
  } // end of method BlockManager::getBlockList

  .method assembly hidebysig static void 
          addBlock<([Survivalcraft]Game.Block) BlockBaseType>(string blockContent) cil managed
  {
    // 代码大小       260 (0x104)
    .maxstack  4
    .locals init (class [Survivalcraft]Game.Block V_0,
             class [System.Reflection]System.Reflection.FieldInfo V_1,
             int32 V_2,
             bool V_3,
             object[] V_4,
             bool V_5,
             object[] V_6)
    IL_0000:  nop
    IL_0001:  ldtoken    !!BlockBaseType
    IL_0006:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_000b:  call       instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
    IL_0010:  call       object [System.Runtime]System.Activator::CreateInstance(class [System.Runtime]System.Type)
    IL_0015:  castclass  [Survivalcraft]Game.Block
    IL_001a:  stloc.0
    IL_001b:  ldloc.0
    IL_001c:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
    IL_0021:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.FieldInfo> [System.Reflection.Extensions]System.Reflection.RuntimeReflectionExtensions::GetRuntimeFields(class [System.Runtime]System.Type)
    IL_0026:  ldsfld     class [System.Runtime]System.Func`2<class [System.Reflection]System.Reflection.FieldInfo,bool> class GScience.ModAPI.Block.BlockManager/'<>c__5`1'<!!BlockBaseType>::'<>9__5_0'
    IL_002b:  dup
    IL_002c:  brtrue.s   IL_0045

    IL_002e:  pop
    IL_002f:  ldsfld     class GScience.ModAPI.Block.BlockManager/'<>c__5`1'<!0> class GScience.ModAPI.Block.BlockManager/'<>c__5`1'<!!BlockBaseType>::'<>9'
    IL_0034:  ldftn      instance bool class GScience.ModAPI.Block.BlockManager/'<>c__5`1'<!!BlockBaseType>::'<addBlock>b__5_0'(class [System.Reflection]System.Reflection.FieldInfo)
    IL_003a:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Reflection]System.Reflection.FieldInfo,bool>::.ctor(object,
                                                                                                                                             native int)
    IL_003f:  dup
    IL_0040:  stsfld     class [System.Runtime]System.Func`2<class [System.Reflection]System.Reflection.FieldInfo,bool> class GScience.ModAPI.Block.BlockManager/'<>c__5`1'<!!BlockBaseType>::'<>9__5_0'
    IL_0045:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Reflection]System.Reflection.FieldInfo>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                              class [System.Runtime]System.Func`2<!!0,bool>)
    IL_004a:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<class [System.Reflection]System.Reflection.FieldInfo>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_004f:  stloc.1
    IL_0050:  ldloc.1
    IL_0051:  brfalse.s  IL_006a

    IL_0053:  ldloc.1
    IL_0054:  callvirt   instance class [System.Runtime]System.Type [System.Reflection]System.Reflection.FieldInfo::get_FieldType()
    IL_0059:  ldtoken    [System.Runtime]System.Int32
    IL_005e:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0063:  ceq
    IL_0065:  ldc.i4.0
    IL_0066:  ceq
    IL_0068:  br.s       IL_006b

    IL_006a:  ldc.i4.1
    IL_006b:  stloc.3
    IL_006c:  ldloc.3
    IL_006d:  brfalse.s  IL_0098

    IL_006f:  nop
    IL_0070:  ldc.i4.1
    IL_0071:  newarr     [System.Runtime]System.Object
    IL_0076:  dup
    IL_0077:  ldc.i4.0
    IL_0078:  ldloc.0
    IL_0079:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
    IL_007e:  callvirt   instance string [System.Runtime]System.Type::get_FullName()
    IL_0083:  stelem.ref
    IL_0084:  stloc.s    V_4
    IL_0086:  ldstr      "Block type \"{0}\" does not have static field Index "
    + "of type int."
    IL_008b:  ldloc.s    V_4
    IL_008d:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0092:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0097:  throw

    IL_0098:  ldloc.1
    IL_0099:  ldnull
    IL_009a:  callvirt   instance object [System.Reflection]System.Reflection.FieldInfo::GetValue(object)
    IL_009f:  unbox.any  [System.Runtime]System.Int32
    IL_00a4:  stloc.2
    IL_00a5:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class [Survivalcraft]Game.Block> GScience.ModAPI.Block.BlockManager::blockList
    IL_00aa:  ldloc.2
    IL_00ab:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class [Survivalcraft]Game.Block>::ContainsKey(!0)
    IL_00b0:  stloc.s    V_5
    IL_00b2:  ldloc.s    V_5
    IL_00b4:  brfalse.s  IL_00df

    IL_00b6:  nop
    IL_00b7:  ldc.i4.1
    IL_00b8:  newarr     [System.Runtime]System.Object
    IL_00bd:  dup
    IL_00be:  ldc.i4.0
    IL_00bf:  ldloc.0
    IL_00c0:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
    IL_00c5:  callvirt   instance string [System.Runtime]System.Type::get_FullName()
    IL_00ca:  stelem.ref
    IL_00cb:  stloc.s    V_6
    IL_00cd:  ldstr      "Index of block type \"{0}\" conflicts with another b"
    + "lock."
    IL_00d2:  ldloc.s    V_6
    IL_00d4:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_00d9:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_00de:  throw

    IL_00df:  ldloc.0
    IL_00e0:  ldloc.2
    IL_00e1:  stfld      int32 [Survivalcraft]Game.Block::BlockIndex
    IL_00e6:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class [Survivalcraft]Game.Block> GScience.ModAPI.Block.BlockManager::blockList
    IL_00eb:  ldloc.2
    IL_00ec:  ldloc.0
    IL_00ed:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class [Survivalcraft]Game.Block>::Add(!0,
                                                                                                                                                     !1)
    IL_00f2:  nop
    IL_00f3:  ldsfld     int32 GScience.ModAPI.Block.BlockManager::m_blockCount
    IL_00f8:  ldloc.2
    IL_00f9:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_00fe:  stsfld     int32 GScience.ModAPI.Block.BlockManager::m_blockCount
    IL_0103:  ret
  } // end of method BlockManager::addBlock

  .method assembly hidebysig static void 
          loadBlocks() cil managed
  {
    // 代码大小       541 (0x21d)
    .maxstack  4
    .locals init (class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.TypeInfo> V_0,
             class [System.Reflection]System.Reflection.TypeInfo V_1,
             bool V_2,
             class [System.Reflection]System.Reflection.FieldInfo V_3,
             int32 V_4,
             class [Survivalcraft]Game.Block V_5,
             bool V_6,
             object[] V_7,
             bool V_8,
             object[] V_9,
             bool V_10,
             class [System.Reflection]System.Reflection.FieldInfo V_11,
             bool V_12,
             object[] V_13)
    IL_0000:  nop
    IL_0001:  nop
    IL_0002:  ldtoken    Game.BlocksManager
    IL_0007:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_000c:  call       class [System.Reflection]System.Reflection.TypeInfo [System.Reflection]System.Reflection.IntrospectionExtensions::GetTypeInfo(class [System.Runtime]System.Type)
    IL_0011:  callvirt   instance class [System.Reflection]System.Reflection.Assembly [System.Reflection]System.Reflection.TypeInfo::get_Assembly()
    IL_0016:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.TypeInfo> [System.Reflection]System.Reflection.Assembly::get_DefinedTypes()
    IL_001b:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.TypeInfo>::GetEnumerator()
    IL_0020:  stloc.0
    .try
    {
      IL_0021:  br         IL_0204

      IL_0026:  ldloc.0
      IL_0027:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.TypeInfo>::get_Current()
      IL_002c:  stloc.1
      IL_002d:  nop
      IL_002e:  ldloc.1
      IL_002f:  ldtoken    [Survivalcraft]Game.Block
      IL_0034:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
      IL_0039:  callvirt   instance bool [System.Reflection]System.Reflection.TypeInfo::IsSubclassOf(class [System.Runtime]System.Type)
      IL_003e:  brfalse.s  IL_004b

      IL_0040:  ldloc.1
      IL_0041:  callvirt   instance bool [System.Reflection]System.Reflection.TypeInfo::get_IsAbstract()
      IL_0046:  ldc.i4.0
      IL_0047:  ceq
      IL_0049:  br.s       IL_004c

      IL_004b:  ldc.i4.0
      IL_004c:  stloc.2
      IL_004d:  ldloc.2
      IL_004e:  brfalse    IL_0153

      IL_0053:  nop
      IL_0054:  ldloc.1
      IL_0055:  callvirt   instance class [System.Runtime]System.Type [System.Reflection]System.Reflection.TypeInfo::AsType()
      IL_005a:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.FieldInfo> [System.Reflection.Extensions]System.Reflection.RuntimeReflectionExtensions::GetRuntimeFields(class [System.Runtime]System.Type)
      IL_005f:  ldsfld     class [System.Runtime]System.Func`2<class [System.Reflection]System.Reflection.FieldInfo,bool> GScience.ModAPI.Block.BlockManager/'<>c'::'<>9__6_0'
      IL_0064:  dup
      IL_0065:  brtrue.s   IL_007e

      IL_0067:  pop
      IL_0068:  ldsfld     class GScience.ModAPI.Block.BlockManager/'<>c' GScience.ModAPI.Block.BlockManager/'<>c'::'<>9'
      IL_006d:  ldftn      instance bool GScience.ModAPI.Block.BlockManager/'<>c'::'<loadBlocks>b__6_0'(class [System.Reflection]System.Reflection.FieldInfo)
      IL_0073:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Reflection]System.Reflection.FieldInfo,bool>::.ctor(object,
                                                                                                                                               native int)
      IL_0078:  dup
      IL_0079:  stsfld     class [System.Runtime]System.Func`2<class [System.Reflection]System.Reflection.FieldInfo,bool> GScience.ModAPI.Block.BlockManager/'<>c'::'<>9__6_0'
      IL_007e:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Reflection]System.Reflection.FieldInfo>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                class [System.Runtime]System.Func`2<!!0,bool>)
      IL_0083:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<class [System.Reflection]System.Reflection.FieldInfo>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
      IL_0088:  stloc.3
      IL_0089:  ldloc.3
      IL_008a:  brfalse.s  IL_00a3

      IL_008c:  ldloc.3
      IL_008d:  callvirt   instance class [System.Runtime]System.Type [System.Reflection]System.Reflection.FieldInfo::get_FieldType()
      IL_0092:  ldtoken    [System.Runtime]System.Int32
      IL_0097:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
      IL_009c:  ceq
      IL_009e:  ldc.i4.0
      IL_009f:  ceq
      IL_00a1:  br.s       IL_00a4

      IL_00a3:  ldc.i4.1
      IL_00a4:  stloc.s    V_6
      IL_00a6:  ldloc.s    V_6
      IL_00a8:  brfalse.s  IL_00ce

      IL_00aa:  nop
      IL_00ab:  ldc.i4.1
      IL_00ac:  newarr     [System.Runtime]System.Object
      IL_00b1:  dup
      IL_00b2:  ldc.i4.0
      IL_00b3:  ldloc.1
      IL_00b4:  callvirt   instance string [System.Reflection]System.Reflection.TypeInfo::get_FullName()
      IL_00b9:  stelem.ref
      IL_00ba:  stloc.s    V_7
      IL_00bc:  ldstr      "Block type \"{0}\" does not have static field Index "
      + "of type int."
      IL_00c1:  ldloc.s    V_7
      IL_00c3:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_00c8:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
      IL_00cd:  throw

      IL_00ce:  ldloc.3
      IL_00cf:  ldnull
      IL_00d0:  callvirt   instance object [System.Reflection]System.Reflection.FieldInfo::GetValue(object)
      IL_00d5:  unbox.any  [System.Runtime]System.Int32
      IL_00da:  stloc.s    V_4
      IL_00dc:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class [Survivalcraft]Game.Block> GScience.ModAPI.Block.BlockManager::blockList
      IL_00e1:  ldloc.s    V_4
      IL_00e3:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class [Survivalcraft]Game.Block>::ContainsKey(!0)
      IL_00e8:  stloc.s    V_8
      IL_00ea:  ldloc.s    V_8
      IL_00ec:  brfalse.s  IL_0112

      IL_00ee:  nop
      IL_00ef:  ldc.i4.1
      IL_00f0:  newarr     [System.Runtime]System.Object
      IL_00f5:  dup
      IL_00f6:  ldc.i4.0
      IL_00f7:  ldloc.1
      IL_00f8:  callvirt   instance string [System.Reflection]System.Reflection.TypeInfo::get_FullName()
      IL_00fd:  stelem.ref
      IL_00fe:  stloc.s    V_9
      IL_0100:  ldstr      "Index of block type \"{0}\" conflicts with another b"
      + "lock."
      IL_0105:  ldloc.s    V_9
      IL_0107:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_010c:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
      IL_0111:  throw

      IL_0112:  ldloc.1
      IL_0113:  callvirt   instance class [System.Runtime]System.Type [System.Reflection]System.Reflection.TypeInfo::AsType()
      IL_0118:  call       object [System.Runtime]System.Activator::CreateInstance(class [System.Runtime]System.Type)
      IL_011d:  castclass  [Survivalcraft]Game.Block
      IL_0122:  stloc.s    V_5
      IL_0124:  ldloc.s    V_5
      IL_0126:  ldloc.s    V_4
      IL_0128:  stfld      int32 [Survivalcraft]Game.Block::BlockIndex
      IL_012d:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class [Survivalcraft]Game.Block> GScience.ModAPI.Block.BlockManager::blockList
      IL_0132:  ldloc.s    V_4
      IL_0134:  ldloc.s    V_5
      IL_0136:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class [Survivalcraft]Game.Block>::Add(!0,
                                                                                                                                                       !1)
      IL_013b:  nop
      IL_013c:  ldsfld     int32 GScience.ModAPI.Block.BlockManager::m_blockCount
      IL_0141:  ldloc.s    V_4
      IL_0143:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                               int32)
      IL_0148:  stsfld     int32 GScience.ModAPI.Block.BlockManager::m_blockCount
      IL_014d:  nop
      IL_014e:  br         IL_0203

      IL_0153:  ldloc.1
      IL_0154:  ldtoken    GScience.ModAPI.Block.Block`1
      IL_0159:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
      IL_015e:  callvirt   instance bool [System.Reflection]System.Reflection.TypeInfo::IsSubclassOf(class [System.Runtime]System.Type)
      IL_0163:  brfalse.s  IL_0170

      IL_0165:  ldloc.1
      IL_0166:  callvirt   instance bool [System.Reflection]System.Reflection.TypeInfo::get_IsAbstract()
      IL_016b:  ldc.i4.0
      IL_016c:  ceq
      IL_016e:  br.s       IL_0171

      IL_0170:  ldc.i4.0
      IL_0171:  stloc.s    V_10
      IL_0173:  ldloc.s    V_10
      IL_0175:  brfalse    IL_0203

      IL_017a:  nop
      IL_017b:  ldloc.1
      IL_017c:  callvirt   instance class [System.Runtime]System.Type [System.Reflection]System.Reflection.TypeInfo::AsType()
      IL_0181:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.FieldInfo> [System.Reflection.Extensions]System.Reflection.RuntimeReflectionExtensions::GetRuntimeFields(class [System.Runtime]System.Type)
      IL_0186:  ldsfld     class [System.Runtime]System.Func`2<class [System.Reflection]System.Reflection.FieldInfo,bool> GScience.ModAPI.Block.BlockManager/'<>c'::'<>9__6_1'
      IL_018b:  dup
      IL_018c:  brtrue.s   IL_01a5

      IL_018e:  pop
      IL_018f:  ldsfld     class GScience.ModAPI.Block.BlockManager/'<>c' GScience.ModAPI.Block.BlockManager/'<>c'::'<>9'
      IL_0194:  ldftn      instance bool GScience.ModAPI.Block.BlockManager/'<>c'::'<loadBlocks>b__6_1'(class [System.Reflection]System.Reflection.FieldInfo)
      IL_019a:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Reflection]System.Reflection.FieldInfo,bool>::.ctor(object,
                                                                                                                                               native int)
      IL_019f:  dup
      IL_01a0:  stsfld     class [System.Runtime]System.Func`2<class [System.Reflection]System.Reflection.FieldInfo,bool> GScience.ModAPI.Block.BlockManager/'<>c'::'<>9__6_1'
      IL_01a5:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Reflection]System.Reflection.FieldInfo>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                class [System.Runtime]System.Func`2<!!0,bool>)
      IL_01aa:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<class [System.Reflection]System.Reflection.FieldInfo>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
      IL_01af:  stloc.s    V_11
      IL_01b1:  ldloc.s    V_11
      IL_01b3:  brfalse.s  IL_01cd

      IL_01b5:  ldloc.s    V_11
      IL_01b7:  callvirt   instance class [System.Runtime]System.Type [System.Reflection]System.Reflection.FieldInfo::get_FieldType()
      IL_01bc:  ldtoken    GScience.ModAPI.Block.Block`1
      IL_01c1:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
      IL_01c6:  ceq
      IL_01c8:  ldc.i4.0
      IL_01c9:  ceq
      IL_01cb:  br.s       IL_01ce

      IL_01cd:  ldc.i4.1
      IL_01ce:  stloc.s    V_12
      IL_01d0:  ldloc.s    V_12
      IL_01d2:  brfalse.s  IL_01f8

      IL_01d4:  nop
      IL_01d5:  ldc.i4.1
      IL_01d6:  newarr     [System.Runtime]System.Object
      IL_01db:  dup
      IL_01dc:  ldc.i4.0
      IL_01dd:  ldloc.1
      IL_01de:  callvirt   instance string [System.Reflection]System.Reflection.TypeInfo::get_FullName()
      IL_01e3:  stelem.ref
      IL_01e4:  stloc.s    V_13
      IL_01e6:  ldstr      "Block type \"{0}\" does not have static field m_bloc"
      + "k of type int."
      IL_01eb:  ldloc.s    V_13
      IL_01ed:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_01f2:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
      IL_01f7:  throw

      IL_01f8:  ldstr      "Block type \"{0}\" does not have static field m_bloc"
      + "k of type int."
      IL_01fd:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
      IL_0202:  throw

      IL_0203:  nop
      IL_0204:  ldloc.0
      IL_0205:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_020a:  brtrue     IL_0026

      IL_020f:  leave.s    IL_021c

    }  // end .try
    finally
    {
      IL_0211:  ldloc.0
      IL_0212:  brfalse.s  IL_021b

      IL_0214:  ldloc.0
      IL_0215:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_021a:  nop
      IL_021b:  endfinally
    }  // end handler
    IL_021c:  ret
  } // end of method BlockManager::loadBlocks

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  stsfld     int32 GScience.ModAPI.Block.BlockManager::m_blockCount
    IL_0006:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class [Survivalcraft]Game.Block>::.ctor()
    IL_000b:  stsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class [Survivalcraft]Game.Block> GScience.ModAPI.Block.BlockManager::blockList
    IL_0010:  ldc.i4.0
    IL_0011:  stsfld     bool GScience.ModAPI.Block.BlockManager::m_hasLoafSCBlock
    IL_0016:  ret
  } // end of method BlockManager::.cctor

} // end of class GScience.ModAPI.Block.BlockManager