.class public abstract auto ansi sealed beforefieldinit Game.BlocksManager
       extends [System.Runtime]System.Object
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.BlocksManager/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<class [System.Reflection]System.Reflection.FieldInfo,bool> '<>9__5_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.BlocksManager/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.BlocksManager/'<>c' Game.BlocksManager/'<>c'::'<>9'
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

    .method assembly hidebysig instance bool 
            '<Initialize>b__5_0'(class [System.Reflection]System.Reflection.FieldInfo fi) cil managed
    {
      // 代码大小       35 (0x23)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  callvirt   instance string [System.Reflection]System.Reflection.MemberInfo::get_Name()
      IL_0006:  ldstr      "Index"
      IL_000b:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0010:  brfalse.s  IL_0021

      IL_0012:  ldarg.1
      IL_0013:  callvirt   instance bool [System.Reflection]System.Reflection.FieldInfo::get_IsPublic()
      IL_0018:  brfalse.s  IL_0021

      IL_001a:  ldarg.1
      IL_001b:  callvirt   instance bool [System.Reflection]System.Reflection.FieldInfo::get_IsStatic()
      IL_0020:  ret

      IL_0021:  ldc.i4.0
      IL_0022:  ret
    } // end of method '<>c'::'<Initialize>b__5_0'

  } // end of class '<>c'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass12_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public string typeName
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass12_0'::.ctor

    .method assembly hidebysig instance bool 
            '<FindBlockByTypeName>b__0'(class Game.Block b) cil managed
    {
      // 代码大小       23 (0x17)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
      IL_0006:  callvirt   instance string [System.Runtime]System.Type::get_Name()
      IL_000b:  ldarg.0
      IL_000c:  ldfld      string Game.BlocksManager/'<>c__DisplayClass12_0'::typeName
      IL_0011:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0016:  ret
    } // end of method '<>c__DisplayClass12_0'::'<FindBlockByTypeName>b__0'

  } // end of class '<>c__DisplayClass12_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass13_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public string craftingId
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass13_0'::.ctor

    .method assembly hidebysig instance bool 
            '<FindBlocksByCraftingId>b__0'(class Game.Block b) cil managed
    {
      // 代码大小       18 (0x12)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldfld      string Game.Block::CraftingId
      IL_0006:  ldarg.0
      IL_0007:  ldfld      string Game.BlocksManager/'<>c__DisplayClass13_0'::craftingId
      IL_000c:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0011:  ret
    } // end of method '<>c__DisplayClass13_0'::'<FindBlocksByCraftingId>b__0'

  } // end of class '<>c__DisplayClass13_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass20_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public string typeName
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass20_0'::.ctor

    .method assembly hidebysig instance bool 
            '<LoadBlocksData>b__0'(class Game.Block v) cil managed
    {
      // 代码大小       23 (0x17)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
      IL_0006:  callvirt   instance string [System.Runtime]System.Type::get_Name()
      IL_000b:  ldarg.0
      IL_000c:  ldfld      string Game.BlocksManager/'<>c__DisplayClass20_0'::typeName
      IL_0011:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0016:  ret
    } // end of method '<>c__DisplayClass20_0'::'<LoadBlocksData>b__0'

  } // end of class '<>c__DisplayClass20_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass20_1'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public string refTypeName
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass20_1'::.ctor

    .method assembly hidebysig instance bool 
            '<LoadBlocksData>b__1'(class Game.Block v) cil managed
    {
      // 代码大小       23 (0x17)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
      IL_0006:  callvirt   instance string [System.Runtime]System.Type::get_Name()
      IL_000b:  ldarg.0
      IL_000c:  ldfld      string Game.BlocksManager/'<>c__DisplayClass20_1'::refTypeName
      IL_0011:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0016:  ret
    } // end of method '<>c__DisplayClass20_1'::'<LoadBlocksData>b__1'

  } // end of class '<>c__DisplayClass20_1'

  .field private static class Game.Block[] m_blocks
  .field private static class Game.FluidBlock[] m_fluidBlocks
  .field private static class [System.Collections]System.Collections.Generic.List`1<string> m_categories
  .field private static class Game.DrawBlockEnvironmentData m_defaultEnvironmentData
  .field private static valuetype [Engine]Engine.Vector4[] m_slotTexCoords
  .method public hidebysig static void  Initialize() cil managed
  {
    // 代码大小       845 (0x34d)
    .maxstack  5
    .locals init (int32 V_0,
             class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.Block> V_1,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.TypeInfo> V_2,
             class [System.Reflection]System.Reflection.TypeInfo V_3,
             class [System.Reflection]System.Reflection.FieldInfo V_4,
             int32 V_5,
             class Game.Block V_6,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<int32,class Game.Block> V_7,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,class Game.Block> V_8,
             int32 V_9,
             class Game.Block[] V_10,
             int32 V_11,
             class Game.Block V_12,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> V_13,
             int32 V_14,
             string V_15)
    IL_0000:  call       void Game.BlocksManager::CalculateSlotTexCoordTables()
    IL_0005:  ldc.i4.0
    IL_0006:  stloc.0
    IL_0007:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.Block>::.ctor()
    IL_000c:  stloc.1
    IL_000d:  ldtoken    Game.BlocksManager
    IL_0012:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0017:  call       class [System.Reflection]System.Reflection.TypeInfo [System.Reflection]System.Reflection.IntrospectionExtensions::GetTypeInfo(class [System.Runtime]System.Type)
    IL_001c:  callvirt   instance class [System.Reflection]System.Reflection.Assembly [System.Reflection]System.Reflection.TypeInfo::get_Assembly()
    IL_0021:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.TypeInfo> [System.Reflection]System.Reflection.Assembly::get_DefinedTypes()
    IL_0026:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.TypeInfo>::GetEnumerator()
    IL_002b:  stloc.2
    .try
    {
      IL_002c:  br         IL_012c

      IL_0031:  ldloc.2
      IL_0032:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.TypeInfo>::get_Current()
      IL_0037:  stloc.3
      IL_0038:  ldloc.3
      IL_0039:  ldtoken    Game.Block
      IL_003e:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
      IL_0043:  callvirt   instance bool [System.Reflection]System.Reflection.TypeInfo::IsSubclassOf(class [System.Runtime]System.Type)
      IL_0048:  brfalse    IL_012c

      IL_004d:  ldloc.3
      IL_004e:  callvirt   instance bool [System.Reflection]System.Reflection.TypeInfo::get_IsAbstract()
      IL_0053:  brtrue     IL_012c

      IL_0058:  ldloc.3
      IL_0059:  callvirt   instance class [System.Runtime]System.Type [System.Reflection]System.Reflection.TypeInfo::AsType()
      IL_005e:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.FieldInfo> [System.Reflection.Extensions]System.Reflection.RuntimeReflectionExtensions::GetRuntimeFields(class [System.Runtime]System.Type)
      IL_0063:  ldsfld     class [System.Runtime]System.Func`2<class [System.Reflection]System.Reflection.FieldInfo,bool> Game.BlocksManager/'<>c'::'<>9__5_0'
      IL_0068:  dup
      IL_0069:  brtrue.s   IL_0082

      IL_006b:  pop
      IL_006c:  ldsfld     class Game.BlocksManager/'<>c' Game.BlocksManager/'<>c'::'<>9'
      IL_0071:  ldftn      instance bool Game.BlocksManager/'<>c'::'<Initialize>b__5_0'(class [System.Reflection]System.Reflection.FieldInfo)
      IL_0077:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Reflection]System.Reflection.FieldInfo,bool>::.ctor(object,
                                                                                                                                               native int)
      IL_007c:  dup
      IL_007d:  stsfld     class [System.Runtime]System.Func`2<class [System.Reflection]System.Reflection.FieldInfo,bool> Game.BlocksManager/'<>c'::'<>9__5_0'
      IL_0082:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Reflection]System.Reflection.FieldInfo>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                class [System.Runtime]System.Func`2<!!0,bool>)
      IL_0087:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<class [System.Reflection]System.Reflection.FieldInfo>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
      IL_008c:  stloc.s    V_4
      IL_008e:  ldloc.s    V_4
      IL_0090:  brfalse.s  IL_010d

      IL_0092:  ldloc.s    V_4
      IL_0094:  callvirt   instance class [System.Runtime]System.Type [System.Reflection]System.Reflection.FieldInfo::get_FieldType()
      IL_0099:  ldtoken    [System.Runtime]System.Int32
      IL_009e:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
      IL_00a3:  bne.un.s   IL_010d

      IL_00a5:  ldloc.s    V_4
      IL_00a7:  ldnull
      IL_00a8:  callvirt   instance object [System.Reflection]System.Reflection.FieldInfo::GetValue(object)
      IL_00ad:  unbox.any  [System.Runtime]System.Int32
      IL_00b2:  stloc.s    V_5
      IL_00b4:  ldloc.1
      IL_00b5:  ldloc.s    V_5
      IL_00b7:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.Block>::ContainsKey(!0)
      IL_00bc:  brfalse.s  IL_00dd

      IL_00be:  ldstr      "Index of block type \"{0}\" conflicts with another b"
      + "lock."
      IL_00c3:  ldc.i4.1
      IL_00c4:  newarr     [System.Runtime]System.Object
      IL_00c9:  dup
      IL_00ca:  ldc.i4.0
      IL_00cb:  ldloc.3
      IL_00cc:  callvirt   instance string [System.Reflection]System.Reflection.TypeInfo::get_FullName()
      IL_00d1:  stelem.ref
      IL_00d2:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_00d7:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
      IL_00dc:  throw

      IL_00dd:  ldloc.3
      IL_00de:  callvirt   instance class [System.Runtime]System.Type [System.Reflection]System.Reflection.TypeInfo::AsType()
      IL_00e3:  call       object [System.Runtime]System.Activator::CreateInstance(class [System.Runtime]System.Type)
      IL_00e8:  castclass  Game.Block
      IL_00ed:  stloc.s    V_6
      IL_00ef:  ldloc.s    V_6
      IL_00f1:  ldloc.s    V_5
      IL_00f3:  stfld      int32 Game.Block::BlockIndex
      IL_00f8:  ldloc.1
      IL_00f9:  ldloc.s    V_5
      IL_00fb:  ldloc.s    V_6
      IL_00fd:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.Block>::Add(!0,
                                                                                                                                        !1)
      IL_0102:  ldloc.0
      IL_0103:  ldloc.s    V_5
      IL_0105:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                               int32)
      IL_010a:  stloc.0
      IL_010b:  br.s       IL_012c

      IL_010d:  ldstr      "Block type \"{0}\" does not have static field Index "
      + "of type int."
      IL_0112:  ldc.i4.1
      IL_0113:  newarr     [System.Runtime]System.Object
      IL_0118:  dup
      IL_0119:  ldc.i4.0
      IL_011a:  ldloc.3
      IL_011b:  callvirt   instance string [System.Reflection]System.Reflection.TypeInfo::get_FullName()
      IL_0120:  stelem.ref
      IL_0121:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_0126:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
      IL_012b:  throw

      IL_012c:  ldloc.2
      IL_012d:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0132:  brtrue     IL_0031

      IL_0137:  leave.s    IL_0143

    }  // end .try
    finally
    {
      IL_0139:  ldloc.2
      IL_013a:  brfalse.s  IL_0142

      IL_013c:  ldloc.2
      IL_013d:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0142:  endfinally
    }  // end handler
    IL_0143:  ldloc.0
    IL_0144:  ldc.i4.1
    IL_0145:  add
    IL_0146:  newarr     Game.Block
    IL_014b:  stsfld     class Game.Block[] Game.BlocksManager::m_blocks
    IL_0150:  ldloc.0
    IL_0151:  ldc.i4.1
    IL_0152:  add
    IL_0153:  newarr     Game.FluidBlock
    IL_0158:  stsfld     class Game.FluidBlock[] Game.BlocksManager::m_fluidBlocks
    IL_015d:  ldloc.1
    IL_015e:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.Block>::GetEnumerator()
    IL_0163:  stloc.s    V_7
    .try
    {
      IL_0165:  br.s       IL_019d

      IL_0167:  ldloca.s   V_7
      IL_0169:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<int32,class Game.Block>::get_Current()
      IL_016e:  stloc.s    V_8
      IL_0170:  ldsfld     class Game.Block[] Game.BlocksManager::m_blocks
      IL_0175:  ldloca.s   V_8
      IL_0177:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,class Game.Block>::get_Key()
      IL_017c:  ldloca.s   V_8
      IL_017e:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,class Game.Block>::get_Value()
      IL_0183:  stelem.ref
      IL_0184:  ldsfld     class Game.FluidBlock[] Game.BlocksManager::m_fluidBlocks
      IL_0189:  ldloca.s   V_8
      IL_018b:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,class Game.Block>::get_Key()
      IL_0190:  ldloca.s   V_8
      IL_0192:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,class Game.Block>::get_Value()
      IL_0197:  isinst     Game.FluidBlock
      IL_019c:  stelem.ref
      IL_019d:  ldloca.s   V_7
      IL_019f:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<int32,class Game.Block>::MoveNext()
      IL_01a4:  brtrue.s   IL_0167

      IL_01a6:  leave.s    IL_01b6

    }  // end .try
    finally
    {
      IL_01a8:  ldloca.s   V_7
      IL_01aa:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<int32,class Game.Block>
      IL_01b0:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01b5:  endfinally
    }  // end handler
    IL_01b6:  ldc.i4.0
    IL_01b7:  stloc.s    V_9
    IL_01b9:  br.s       IL_01da

    IL_01bb:  ldsfld     class Game.Block[] Game.BlocksManager::m_blocks
    IL_01c0:  ldloc.s    V_9
    IL_01c2:  ldelem.ref
    IL_01c3:  brtrue.s   IL_01d4

    IL_01c5:  ldsfld     class Game.Block[] Game.BlocksManager::m_blocks
    IL_01ca:  ldloc.s    V_9
    IL_01cc:  ldsfld     class Game.Block[] Game.BlocksManager::m_blocks
    IL_01d1:  ldc.i4.0
    IL_01d2:  ldelem.ref
    IL_01d3:  stelem.ref
    IL_01d4:  ldloc.s    V_9
    IL_01d6:  ldc.i4.1
    IL_01d7:  add
    IL_01d8:  stloc.s    V_9
    IL_01da:  ldloc.s    V_9
    IL_01dc:  ldsfld     class Game.Block[] Game.BlocksManager::m_blocks
    IL_01e1:  ldlen
    IL_01e2:  conv.i4
    IL_01e3:  blt.s      IL_01bb

    IL_01e5:  ldstr      "BlocksData"
    IL_01ea:  call       !!0 Game.ContentManager::Get<string>(string)
    IL_01ef:  ldstr      "BlocksData"
    IL_01f4:  call       void Game.ContentManager::Dispose(string)
    IL_01f9:  call       void Game.BlocksManager::LoadBlocksData(string)
    IL_01fe:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0203:  stloc.s    V_10
    IL_0205:  ldc.i4.0
    IL_0206:  stloc.s    V_11
    IL_0208:  br.s       IL_021a

    IL_020a:  ldloc.s    V_10
    IL_020c:  ldloc.s    V_11
    IL_020e:  ldelem.ref
    IL_020f:  callvirt   instance void Game.Block::Initialize()
    IL_0214:  ldloc.s    V_11
    IL_0216:  ldc.i4.1
    IL_0217:  add
    IL_0218:  stloc.s    V_11
    IL_021a:  ldloc.s    V_11
    IL_021c:  ldloc.s    V_10
    IL_021e:  ldlen
    IL_021f:  conv.i4
    IL_0220:  blt.s      IL_020a

    IL_0222:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksManager::m_categories
    IL_0227:  ldstr      "Terrain"
    IL_022c:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_0231:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksManager::m_categories
    IL_0236:  ldstr      "Plants"
    IL_023b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_0240:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksManager::m_categories
    IL_0245:  ldstr      "Construction"
    IL_024a:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_024f:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksManager::m_categories
    IL_0254:  ldstr      "Items"
    IL_0259:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_025e:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksManager::m_categories
    IL_0263:  ldstr      "Tools"
    IL_0268:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_026d:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksManager::m_categories
    IL_0272:  ldstr      "Clothes"
    IL_0277:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_027c:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksManager::m_categories
    IL_0281:  ldstr      "Electrics"
    IL_0286:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_028b:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksManager::m_categories
    IL_0290:  ldstr      "Food"
    IL_0295:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_029a:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksManager::m_categories
    IL_029f:  ldstr      "Spawner Eggs"
    IL_02a4:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_02a9:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksManager::m_categories
    IL_02ae:  ldstr      "Painted"
    IL_02b3:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_02b8:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksManager::m_categories
    IL_02bd:  ldstr      "Dyed"
    IL_02c2:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_02c7:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksManager::m_categories
    IL_02cc:  ldstr      "Fireworks"
    IL_02d1:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_02d6:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_02db:  stloc.s    V_10
    IL_02dd:  ldc.i4.0
    IL_02de:  stloc.s    V_11
    IL_02e0:  br.s       IL_0344

    IL_02e2:  ldloc.s    V_10
    IL_02e4:  ldloc.s    V_11
    IL_02e6:  ldelem.ref
    IL_02e7:  stloc.s    V_12
    IL_02e9:  ldloc.s    V_12
    IL_02eb:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32> Game.Block::GetCreativeValues()
    IL_02f0:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>::GetEnumerator()
    IL_02f5:  stloc.s    V_13
    .try
    {
      IL_02f7:  br.s       IL_0327

      IL_02f9:  ldloc.s    V_13
      IL_02fb:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32>::get_Current()
      IL_0300:  stloc.s    V_14
      IL_0302:  ldloc.s    V_12
      IL_0304:  ldloc.s    V_14
      IL_0306:  callvirt   instance string Game.Block::GetCategory(int32)
      IL_030b:  stloc.s    V_15
      IL_030d:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksManager::m_categories
      IL_0312:  ldloc.s    V_15
      IL_0314:  callvirt   instance bool class [System.Collections]System.Collections.Generic.List`1<string>::Contains(!0)
      IL_0319:  brtrue.s   IL_0327

      IL_031b:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksManager::m_categories
      IL_0320:  ldloc.s    V_15
      IL_0322:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
      IL_0327:  ldloc.s    V_13
      IL_0329:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_032e:  brtrue.s   IL_02f9

      IL_0330:  leave.s    IL_033e

    }  // end .try
    finally
    {
      IL_0332:  ldloc.s    V_13
      IL_0334:  brfalse.s  IL_033d

      IL_0336:  ldloc.s    V_13
      IL_0338:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_033d:  endfinally
    }  // end handler
    IL_033e:  ldloc.s    V_11
    IL_0340:  ldc.i4.1
    IL_0341:  add
    IL_0342:  stloc.s    V_11
    IL_0344:  ldloc.s    V_11
    IL_0346:  ldloc.s    V_10
    IL_0348:  ldlen
    IL_0349:  conv.i4
    IL_034a:  blt.s      IL_02e2

    IL_034c:  ret
  } // end of method BlocksManager::Initialize

  .method public hidebysig specialname static 
          class Game.Block[]  get_Blocks() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     class Game.Block[] Game.BlocksManager::m_blocks
    IL_0005:  ret
  } // end of method BlocksManager::get_Blocks

  .method public hidebysig specialname static 
          class Game.FluidBlock[]  get_FluidBlocks() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     class Game.FluidBlock[] Game.BlocksManager::m_fluidBlocks
    IL_0005:  ret
  } // end of method BlocksManager::get_FluidBlocks

  .method public hidebysig specialname static 
          valuetype [Engine]Engine.ReadOnlyList`1<string> 
          get_Categories() cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksManager::m_categories
    IL_0005:  newobj     instance void valuetype [Engine]Engine.ReadOnlyList`1<string>::.ctor(class [System.Runtime]System.Collections.Generic.IList`1<!0>)
    IL_000a:  ret
  } // end of method BlocksManager::get_Categories

  .method public hidebysig static class Game.Block 
          FindBlockByTypeName(string typeName,
                              bool throwIfNotFound) cil managed
  {
    // 代码大小       77 (0x4d)
    .maxstack  5
    .locals init (class Game.BlocksManager/'<>c__DisplayClass12_0' V_0,
             class Game.Block V_1)
    IL_0000:  newobj     instance void Game.BlocksManager/'<>c__DisplayClass12_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      string Game.BlocksManager/'<>c__DisplayClass12_0'::typeName
    IL_000d:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0012:  ldloc.0
    IL_0013:  ldftn      instance bool Game.BlocksManager/'<>c__DisplayClass12_0'::'<FindBlockByTypeName>b__0'(class Game.Block)
    IL_0019:  newobj     instance void class [System.Runtime]System.Func`2<class Game.Block,bool>::.ctor(object,
                                                                                                         native int)
    IL_001e:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<class Game.Block>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                   class [System.Runtime]System.Func`2<!!0,bool>)
    IL_0023:  stloc.1
    IL_0024:  ldloc.1
    IL_0025:  ldnull
    IL_0026:  ceq
    IL_0028:  ldarg.1
    IL_0029:  and
    IL_002a:  brfalse.s  IL_004b

    IL_002c:  ldstr      "Block with type {0} not found."
    IL_0031:  ldc.i4.1
    IL_0032:  newarr     [System.Runtime]System.Object
    IL_0037:  dup
    IL_0038:  ldc.i4.0
    IL_0039:  ldloc.0
    IL_003a:  ldfld      string Game.BlocksManager/'<>c__DisplayClass12_0'::typeName
    IL_003f:  stelem.ref
    IL_0040:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0045:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_004a:  throw

    IL_004b:  ldloc.1
    IL_004c:  ret
  } // end of method BlocksManager::FindBlockByTypeName

  .method public hidebysig static class Game.Block[] 
          FindBlocksByCraftingId(string craftingId) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (class Game.BlocksManager/'<>c__DisplayClass13_0' V_0)
    IL_0000:  newobj     instance void Game.BlocksManager/'<>c__DisplayClass13_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      string Game.BlocksManager/'<>c__DisplayClass13_0'::craftingId
    IL_000d:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0012:  ldloc.0
    IL_0013:  ldftn      instance bool Game.BlocksManager/'<>c__DisplayClass13_0'::'<FindBlocksByCraftingId>b__0'(class Game.Block)
    IL_0019:  newobj     instance void class [System.Runtime]System.Func`2<class Game.Block,bool>::.ctor(object,
                                                                                                         native int)
    IL_001e:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class Game.Block>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                          class [System.Runtime]System.Func`2<!!0,bool>)
    IL_0023:  call       !!0[] [System.Linq]System.Linq.Enumerable::ToArray<class Game.Block>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0028:  ret
  } // end of method BlocksManager::FindBlocksByCraftingId

  .method public hidebysig static void  DrawCubeBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                                                      int32 'value',
                                                      valuetype [Engine]Engine.Vector3 size,
                                                      valuetype [Engine]Engine.Matrix& matrix,
                                                      valuetype [Engine]Engine.Color color,
                                                      valuetype [Engine]Engine.Color topColor,
                                                      class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       1385 (0x569)
    .maxstack  11
    .locals init (class [Engine]Engine.Graphics.Texture2D V_0,
             float32 V_1,
             valuetype [Engine]Engine.Vector3 V_2,
             valuetype [Engine]Engine.Vector3 V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             valuetype [Engine]Engine.Vector3 V_5,
             valuetype [Engine]Engine.Vector3 V_6,
             valuetype [Engine]Engine.Vector3 V_7,
             valuetype [Engine]Engine.Vector3 V_8,
             valuetype [Engine]Engine.Vector3 V_9,
             valuetype [Engine]Engine.Vector3 V_10,
             valuetype [Engine]Engine.Vector3 V_11,
             valuetype [Engine]Engine.Vector3 V_12,
             int32 V_13,
             class Game.Block V_14,
             valuetype [Engine]Engine.Color V_15,
             valuetype [Engine]Engine.Vector4 V_16,
             valuetype [Engine]Engine.Matrix V_17)
    IL_0000:  ldarg.s    environmentData
    IL_0002:  dup
    IL_0003:  brtrue.s   IL_000b

    IL_0005:  pop
    IL_0006:  ldsfld     class Game.DrawBlockEnvironmentData Game.BlocksManager::m_defaultEnvironmentData
    IL_000b:  starg.s    environmentData
    IL_000d:  ldarg.s    environmentData
    IL_000f:  ldfld      class Game.SubsystemTerrain Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_0014:  brtrue.s   IL_001d

    IL_0016:  call       class [Engine]Engine.Graphics.Texture2D Game.BlocksTexturesManager::get_DefaultBlocksTexture()
    IL_001b:  br.s       IL_002e

    IL_001d:  ldarg.s    environmentData
    IL_001f:  ldfld      class Game.SubsystemTerrain Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_0024:  callvirt   instance class Game.SubsystemAnimatedTextures Game.SubsystemTerrain::get_SubsystemAnimatedTextures()
    IL_0029:  callvirt   instance class [Engine]Engine.Graphics.Texture2D Game.SubsystemAnimatedTextures::get_AnimatedBlocksTexture()
    IL_002e:  stloc.0
    IL_002f:  ldarg.0
    IL_0030:  ldloc.0
    IL_0031:  ldc.i4.1
    IL_0032:  ldc.i4.0
    IL_0033:  ldnull
    IL_0034:  ldsfld     class [Engine]Engine.Graphics.RasterizerState [Engine]Engine.Graphics.RasterizerState::CullCounterClockwiseScissor
    IL_0039:  ldnull
    IL_003a:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointClamp
    IL_003f:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch3D [Engine]Engine.Graphics.PrimitivesRenderer3D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_0044:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_0049:  ldarg.s    environmentData
    IL_004b:  ldfld      int32 Game.DrawBlockEnvironmentData::Light
    IL_0050:  ldelem.r4
    IL_0051:  stloc.1
    IL_0052:  ldarg.s    color
    IL_0054:  ldloc.1
    IL_0055:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::MultiplyColorOnly(valuetype [Engine]Engine.Color,
                                                                                                float32)
    IL_005a:  starg.s    color
    IL_005c:  ldarg.s    topColor
    IL_005e:  ldloc.1
    IL_005f:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::MultiplyColorOnly(valuetype [Engine]Engine.Color,
                                                                                                float32)
    IL_0064:  starg.s    topColor
    IL_0066:  ldarg.3
    IL_0067:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
    IL_006c:  ldarg.3
    IL_006d:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Right()
    IL_0072:  ldarg.2
    IL_0073:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0078:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_007d:  stloc.2
    IL_007e:  ldarg.3
    IL_007f:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Up()
    IL_0084:  ldarg.2
    IL_0085:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_008a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_008f:  stloc.3
    IL_0090:  ldarg.3
    IL_0091:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_0096:  ldarg.2
    IL_0097:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_009c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_00a1:  stloc.s    V_4
    IL_00a3:  dup
    IL_00a4:  ldc.r4     0.5
    IL_00a9:  ldloc.2
    IL_00aa:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_00af:  ldloc.3
    IL_00b0:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00b5:  ldloc.s    V_4
    IL_00b7:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00bc:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00c1:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00c6:  stloc.s    V_5
    IL_00c8:  dup
    IL_00c9:  ldc.r4     0.5
    IL_00ce:  ldloc.2
    IL_00cf:  ldloc.3
    IL_00d0:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00d5:  ldloc.s    V_4
    IL_00d7:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00dc:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00e1:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00e6:  stloc.s    V_6
    IL_00e8:  dup
    IL_00e9:  ldc.r4     0.5
    IL_00ee:  ldloc.2
    IL_00ef:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_00f4:  ldloc.3
    IL_00f5:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00fa:  ldloc.s    V_4
    IL_00fc:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0101:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0106:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_010b:  stloc.s    V_7
    IL_010d:  dup
    IL_010e:  ldc.r4     0.5
    IL_0113:  ldloc.2
    IL_0114:  ldloc.3
    IL_0115:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_011a:  ldloc.s    V_4
    IL_011c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0121:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0126:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_012b:  stloc.s    V_8
    IL_012d:  dup
    IL_012e:  ldc.r4     0.5
    IL_0133:  ldloc.2
    IL_0134:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_0139:  ldloc.3
    IL_013a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_013f:  ldloc.s    V_4
    IL_0141:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0146:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_014b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0150:  stloc.s    V_9
    IL_0152:  dup
    IL_0153:  ldc.r4     0.5
    IL_0158:  ldloc.2
    IL_0159:  ldloc.3
    IL_015a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_015f:  ldloc.s    V_4
    IL_0161:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0166:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_016b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0170:  stloc.s    V_10
    IL_0172:  dup
    IL_0173:  ldc.r4     0.5
    IL_0178:  ldloc.2
    IL_0179:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_017e:  ldloc.3
    IL_017f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0184:  ldloc.s    V_4
    IL_0186:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_018b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0190:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0195:  stloc.s    V_11
    IL_0197:  ldc.r4     0.5
    IL_019c:  ldloc.2
    IL_019d:  ldloc.3
    IL_019e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01a3:  ldloc.s    V_4
    IL_01a5:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01aa:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01af:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01b4:  stloc.s    V_12
    IL_01b6:  ldarg.s    environmentData
    IL_01b8:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.DrawBlockEnvironmentData::ViewProjectionMatrix
    IL_01bd:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_HasValue()
    IL_01c2:  brfalse.s  IL_022a

    IL_01c4:  ldarg.s    environmentData
    IL_01c6:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.DrawBlockEnvironmentData::ViewProjectionMatrix
    IL_01cb:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_Value()
    IL_01d0:  stloc.s    V_17
    IL_01d2:  ldloca.s   V_5
    IL_01d4:  ldloca.s   V_17
    IL_01d6:  ldloca.s   V_5
    IL_01d8:  call       void [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector3&)
    IL_01dd:  ldloca.s   V_6
    IL_01df:  ldloca.s   V_17
    IL_01e1:  ldloca.s   V_6
    IL_01e3:  call       void [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector3&)
    IL_01e8:  ldloca.s   V_7
    IL_01ea:  ldloca.s   V_17
    IL_01ec:  ldloca.s   V_7
    IL_01ee:  call       void [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector3&)
    IL_01f3:  ldloca.s   V_8
    IL_01f5:  ldloca.s   V_17
    IL_01f7:  ldloca.s   V_8
    IL_01f9:  call       void [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector3&)
    IL_01fe:  ldloca.s   V_9
    IL_0200:  ldloca.s   V_17
    IL_0202:  ldloca.s   V_9
    IL_0204:  call       void [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector3&)
    IL_0209:  ldloca.s   V_10
    IL_020b:  ldloca.s   V_17
    IL_020d:  ldloca.s   V_10
    IL_020f:  call       void [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector3&)
    IL_0214:  ldloca.s   V_11
    IL_0216:  ldloca.s   V_17
    IL_0218:  ldloca.s   V_11
    IL_021a:  call       void [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector3&)
    IL_021f:  ldloca.s   V_12
    IL_0221:  ldloca.s   V_17
    IL_0223:  ldloca.s   V_12
    IL_0225:  call       void [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector3&)
    IL_022a:  ldarg.1
    IL_022b:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0230:  stloc.s    V_13
    IL_0232:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0237:  ldloc.s    V_13
    IL_0239:  ldelem.ref
    IL_023a:  stloc.s    V_14
    IL_023c:  ldsfld     valuetype [Engine]Engine.Vector4[] Game.BlocksManager::m_slotTexCoords
    IL_0241:  ldloc.s    V_14
    IL_0243:  ldc.i4.0
    IL_0244:  ldarg.1
    IL_0245:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_024a:  ldelem     [Engine]Engine.Vector4
    IL_024f:  stloc.s    V_16
    IL_0251:  ldarg.s    color
    IL_0253:  ldarg.3
    IL_0254:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_0259:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_025e:  call       float32 Game.LightingManager::CalculateLighting(valuetype [Engine]Engine.Vector3)
    IL_0263:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::MultiplyColorOnly(valuetype [Engine]Engine.Color,
                                                                                                float32)
    IL_0268:  stloc.s    V_15
    IL_026a:  dup
    IL_026b:  ldloc.s    V_5
    IL_026d:  ldloc.s    V_7
    IL_026f:  ldloc.s    V_8
    IL_0271:  ldloc.s    V_6
    IL_0273:  ldloc.s    V_16
    IL_0275:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_027a:  ldloc.s    V_16
    IL_027c:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_0281:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0286:  ldloc.s    V_16
    IL_0288:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_028d:  ldloc.s    V_16
    IL_028f:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_0294:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0299:  ldloc.s    V_16
    IL_029b:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_02a0:  ldloc.s    V_16
    IL_02a2:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_02a7:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_02ac:  ldloc.s    V_16
    IL_02ae:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_02b3:  ldloc.s    V_16
    IL_02b5:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_02ba:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_02bf:  ldloc.s    V_15
    IL_02c1:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch3D::QueueQuad(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_02c6:  ldsfld     valuetype [Engine]Engine.Vector4[] Game.BlocksManager::m_slotTexCoords
    IL_02cb:  ldloc.s    V_14
    IL_02cd:  ldc.i4.2
    IL_02ce:  ldarg.1
    IL_02cf:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_02d4:  ldelem     [Engine]Engine.Vector4
    IL_02d9:  stloc.s    V_16
    IL_02db:  ldarg.s    color
    IL_02dd:  ldarg.3
    IL_02de:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_02e3:  call       float32 Game.LightingManager::CalculateLighting(valuetype [Engine]Engine.Vector3)
    IL_02e8:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::MultiplyColorOnly(valuetype [Engine]Engine.Color,
                                                                                                float32)
    IL_02ed:  stloc.s    V_15
    IL_02ef:  dup
    IL_02f0:  ldloc.s    V_9
    IL_02f2:  ldloc.s    V_10
    IL_02f4:  ldloc.s    V_12
    IL_02f6:  ldloc.s    V_11
    IL_02f8:  ldloc.s    V_16
    IL_02fa:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_02ff:  ldloc.s    V_16
    IL_0301:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_0306:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_030b:  ldloc.s    V_16
    IL_030d:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_0312:  ldloc.s    V_16
    IL_0314:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_0319:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_031e:  ldloc.s    V_16
    IL_0320:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_0325:  ldloc.s    V_16
    IL_0327:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_032c:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0331:  ldloc.s    V_16
    IL_0333:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_0338:  ldloc.s    V_16
    IL_033a:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_033f:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0344:  ldloc.s    V_15
    IL_0346:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch3D::QueueQuad(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_034b:  ldsfld     valuetype [Engine]Engine.Vector4[] Game.BlocksManager::m_slotTexCoords
    IL_0350:  ldloc.s    V_14
    IL_0352:  ldc.i4.5
    IL_0353:  ldarg.1
    IL_0354:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_0359:  ldelem     [Engine]Engine.Vector4
    IL_035e:  stloc.s    V_16
    IL_0360:  ldarg.s    color
    IL_0362:  ldarg.3
    IL_0363:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Up()
    IL_0368:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_036d:  call       float32 Game.LightingManager::CalculateLighting(valuetype [Engine]Engine.Vector3)
    IL_0372:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::MultiplyColorOnly(valuetype [Engine]Engine.Color,
                                                                                                float32)
    IL_0377:  stloc.s    V_15
    IL_0379:  dup
    IL_037a:  ldloc.s    V_5
    IL_037c:  ldloc.s    V_6
    IL_037e:  ldloc.s    V_10
    IL_0380:  ldloc.s    V_9
    IL_0382:  ldloc.s    V_16
    IL_0384:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_0389:  ldloc.s    V_16
    IL_038b:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_0390:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0395:  ldloc.s    V_16
    IL_0397:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_039c:  ldloc.s    V_16
    IL_039e:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_03a3:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_03a8:  ldloc.s    V_16
    IL_03aa:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_03af:  ldloc.s    V_16
    IL_03b1:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_03b6:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_03bb:  ldloc.s    V_16
    IL_03bd:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_03c2:  ldloc.s    V_16
    IL_03c4:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_03c9:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_03ce:  ldloc.s    V_15
    IL_03d0:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch3D::QueueQuad(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_03d5:  ldsfld     valuetype [Engine]Engine.Vector4[] Game.BlocksManager::m_slotTexCoords
    IL_03da:  ldloc.s    V_14
    IL_03dc:  ldc.i4.4
    IL_03dd:  ldarg.1
    IL_03de:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_03e3:  ldelem     [Engine]Engine.Vector4
    IL_03e8:  stloc.s    V_16
    IL_03ea:  ldarg.s    topColor
    IL_03ec:  ldarg.3
    IL_03ed:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Up()
    IL_03f2:  call       float32 Game.LightingManager::CalculateLighting(valuetype [Engine]Engine.Vector3)
    IL_03f7:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::MultiplyColorOnly(valuetype [Engine]Engine.Color,
                                                                                                float32)
    IL_03fc:  stloc.s    V_15
    IL_03fe:  dup
    IL_03ff:  ldloc.s    V_7
    IL_0401:  ldloc.s    V_11
    IL_0403:  ldloc.s    V_12
    IL_0405:  ldloc.s    V_8
    IL_0407:  ldloc.s    V_16
    IL_0409:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_040e:  ldloc.s    V_16
    IL_0410:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_0415:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_041a:  ldloc.s    V_16
    IL_041c:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_0421:  ldloc.s    V_16
    IL_0423:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_0428:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_042d:  ldloc.s    V_16
    IL_042f:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_0434:  ldloc.s    V_16
    IL_0436:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_043b:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0440:  ldloc.s    V_16
    IL_0442:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_0447:  ldloc.s    V_16
    IL_0449:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_044e:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0453:  ldloc.s    V_15
    IL_0455:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch3D::QueueQuad(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_045a:  ldsfld     valuetype [Engine]Engine.Vector4[] Game.BlocksManager::m_slotTexCoords
    IL_045f:  ldloc.s    V_14
    IL_0461:  ldc.i4.1
    IL_0462:  ldarg.1
    IL_0463:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_0468:  ldelem     [Engine]Engine.Vector4
    IL_046d:  stloc.s    V_16
    IL_046f:  ldarg.s    color
    IL_0471:  ldarg.3
    IL_0472:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Right()
    IL_0477:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_047c:  call       float32 Game.LightingManager::CalculateLighting(valuetype [Engine]Engine.Vector3)
    IL_0481:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::MultiplyColorOnly(valuetype [Engine]Engine.Color,
                                                                                                float32)
    IL_0486:  stloc.s    V_15
    IL_0488:  dup
    IL_0489:  ldloc.s    V_5
    IL_048b:  ldloc.s    V_9
    IL_048d:  ldloc.s    V_11
    IL_048f:  ldloc.s    V_7
    IL_0491:  ldloc.s    V_16
    IL_0493:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_0498:  ldloc.s    V_16
    IL_049a:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_049f:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_04a4:  ldloc.s    V_16
    IL_04a6:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_04ab:  ldloc.s    V_16
    IL_04ad:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_04b2:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_04b7:  ldloc.s    V_16
    IL_04b9:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_04be:  ldloc.s    V_16
    IL_04c0:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_04c5:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_04ca:  ldloc.s    V_16
    IL_04cc:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_04d1:  ldloc.s    V_16
    IL_04d3:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_04d8:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_04dd:  ldloc.s    V_15
    IL_04df:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch3D::QueueQuad(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_04e4:  ldsfld     valuetype [Engine]Engine.Vector4[] Game.BlocksManager::m_slotTexCoords
    IL_04e9:  ldloc.s    V_14
    IL_04eb:  ldc.i4.3
    IL_04ec:  ldarg.1
    IL_04ed:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_04f2:  ldelem     [Engine]Engine.Vector4
    IL_04f7:  stloc.s    V_16
    IL_04f9:  ldarg.s    color
    IL_04fb:  ldarg.3
    IL_04fc:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Right()
    IL_0501:  call       float32 Game.LightingManager::CalculateLighting(valuetype [Engine]Engine.Vector3)
    IL_0506:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::MultiplyColorOnly(valuetype [Engine]Engine.Color,
                                                                                                float32)
    IL_050b:  stloc.s    V_15
    IL_050d:  ldloc.s    V_6
    IL_050f:  ldloc.s    V_8
    IL_0511:  ldloc.s    V_12
    IL_0513:  ldloc.s    V_10
    IL_0515:  ldloc.s    V_16
    IL_0517:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_051c:  ldloc.s    V_16
    IL_051e:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_0523:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0528:  ldloc.s    V_16
    IL_052a:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_052f:  ldloc.s    V_16
    IL_0531:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_0536:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_053b:  ldloc.s    V_16
    IL_053d:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_0542:  ldloc.s    V_16
    IL_0544:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_0549:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_054e:  ldloc.s    V_16
    IL_0550:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_0555:  ldloc.s    V_16
    IL_0557:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_055c:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0561:  ldloc.s    V_15
    IL_0563:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch3D::QueueQuad(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0568:  ret
  } // end of method BlocksManager::DrawCubeBlock

  .method public hidebysig static void  DrawFlatBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                                                      int32 'value',
                                                      float32 size,
                                                      valuetype [Engine]Engine.Matrix& matrix,
                                                      class [Engine]Engine.Graphics.Texture2D texture,
                                                      valuetype [Engine]Engine.Color color,
                                                      bool isEmissive,
                                                      class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       651 (0x28b)
    .maxstack  10
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             valuetype [Engine]Engine.Vector3 V_2,
             valuetype [Engine]Engine.Vector3 V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             valuetype [Engine]Engine.Vector3 V_5,
             int32 V_6,
             class Game.Block V_7,
             valuetype [Engine]Engine.Vector4 V_8,
             class [Engine]Engine.Graphics.TexturedBatch3D V_9,
             float32 V_10,
             valuetype [Engine]Engine.Matrix V_11)
    IL_0000:  ldarg.s    environmentData
    IL_0002:  dup
    IL_0003:  brtrue.s   IL_000b

    IL_0005:  pop
    IL_0006:  ldsfld     class Game.DrawBlockEnvironmentData Game.BlocksManager::m_defaultEnvironmentData
    IL_000b:  starg.s    environmentData
    IL_000d:  ldarg.s    isEmissive
    IL_000f:  brtrue.s   IL_002b

    IL_0011:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_0016:  ldarg.s    environmentData
    IL_0018:  ldfld      int32 Game.DrawBlockEnvironmentData::Light
    IL_001d:  ldelem.r4
    IL_001e:  stloc.s    V_10
    IL_0020:  ldarg.s    color
    IL_0022:  ldloc.s    V_10
    IL_0024:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::MultiplyColorOnly(valuetype [Engine]Engine.Color,
                                                                                                float32)
    IL_0029:  starg.s    color
    IL_002b:  ldarg.3
    IL_002c:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
    IL_0031:  ldarg.s    environmentData
    IL_0033:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.DrawBlockEnvironmentData::BillboardDirection
    IL_0038:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_003d:  brfalse.s  IL_007a

    IL_003f:  ldarg.s    environmentData
    IL_0041:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.DrawBlockEnvironmentData::BillboardDirection
    IL_0046:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_004b:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0050:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_0055:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_005a:  stloc.0
    IL_005b:  ldarg.s    environmentData
    IL_005d:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.DrawBlockEnvironmentData::BillboardDirection
    IL_0062:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_0067:  ldloc.0
    IL_0068:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_006d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0072:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_0077:  stloc.1
    IL_0078:  br.s       IL_0088

    IL_007a:  ldarg.3
    IL_007b:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Right()
    IL_0080:  stloc.0
    IL_0081:  ldarg.3
    IL_0082:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Up()
    IL_0087:  stloc.1
    IL_0088:  dup
    IL_0089:  ldc.r4     0.85000002
    IL_008e:  ldarg.2
    IL_008f:  mul
    IL_0090:  ldloc.0
    IL_0091:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_0096:  ldloc.1
    IL_0097:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_009c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00a1:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00a6:  stloc.2
    IL_00a7:  dup
    IL_00a8:  ldc.r4     0.85000002
    IL_00ad:  ldarg.2
    IL_00ae:  mul
    IL_00af:  ldloc.0
    IL_00b0:  ldloc.1
    IL_00b1:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00b6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00bb:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00c0:  stloc.3
    IL_00c1:  dup
    IL_00c2:  ldc.r4     0.85000002
    IL_00c7:  ldarg.2
    IL_00c8:  mul
    IL_00c9:  ldloc.0
    IL_00ca:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_00cf:  ldloc.1
    IL_00d0:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00d5:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00da:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00df:  stloc.s    V_4
    IL_00e1:  ldc.r4     0.85000002
    IL_00e6:  ldarg.2
    IL_00e7:  mul
    IL_00e8:  ldloc.0
    IL_00e9:  ldloc.1
    IL_00ea:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00ef:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00f4:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00f9:  stloc.s    V_5
    IL_00fb:  ldarg.s    environmentData
    IL_00fd:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.DrawBlockEnvironmentData::ViewProjectionMatrix
    IL_0102:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_HasValue()
    IL_0107:  brfalse.s  IL_0143

    IL_0109:  ldarg.s    environmentData
    IL_010b:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.DrawBlockEnvironmentData::ViewProjectionMatrix
    IL_0110:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_Value()
    IL_0115:  stloc.s    V_11
    IL_0117:  ldloca.s   V_2
    IL_0119:  ldloca.s   V_11
    IL_011b:  ldloca.s   V_2
    IL_011d:  call       void [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector3&)
    IL_0122:  ldloca.s   V_3
    IL_0124:  ldloca.s   V_11
    IL_0126:  ldloca.s   V_3
    IL_0128:  call       void [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector3&)
    IL_012d:  ldloca.s   V_4
    IL_012f:  ldloca.s   V_11
    IL_0131:  ldloca.s   V_4
    IL_0133:  call       void [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector3&)
    IL_0138:  ldloca.s   V_5
    IL_013a:  ldloca.s   V_11
    IL_013c:  ldloca.s   V_5
    IL_013e:  call       void [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector3&)
    IL_0143:  ldarg.1
    IL_0144:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0149:  stloc.s    V_6
    IL_014b:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0150:  ldloc.s    V_6
    IL_0152:  ldelem.ref
    IL_0153:  stloc.s    V_7
    IL_0155:  ldarg.s    texture
    IL_0157:  brtrue.s   IL_0193

    IL_0159:  ldarg.s    environmentData
    IL_015b:  ldfld      class Game.SubsystemTerrain Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_0160:  brtrue.s   IL_0169

    IL_0162:  call       class [Engine]Engine.Graphics.Texture2D Game.BlocksTexturesManager::get_DefaultBlocksTexture()
    IL_0167:  br.s       IL_017a

    IL_0169:  ldarg.s    environmentData
    IL_016b:  ldfld      class Game.SubsystemTerrain Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_0170:  callvirt   instance class Game.SubsystemAnimatedTextures Game.SubsystemTerrain::get_SubsystemAnimatedTextures()
    IL_0175:  callvirt   instance class [Engine]Engine.Graphics.Texture2D Game.SubsystemAnimatedTextures::get_AnimatedBlocksTexture()
    IL_017a:  starg.s    texture
    IL_017c:  ldsfld     valuetype [Engine]Engine.Vector4[] Game.BlocksManager::m_slotTexCoords
    IL_0181:  ldloc.s    V_7
    IL_0183:  ldc.i4.m1
    IL_0184:  ldarg.1
    IL_0185:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_018a:  ldelem     [Engine]Engine.Vector4
    IL_018f:  stloc.s    V_8
    IL_0191:  br.s       IL_01ae

    IL_0193:  ldloca.s   V_8
    IL_0195:  ldc.r4     0.0
    IL_019a:  ldc.r4     0.0
    IL_019f:  ldc.r4     1.
    IL_01a4:  ldc.r4     1.
    IL_01a9:  call       instance void [Engine]Engine.Vector4::.ctor(float32,
                                                                     float32,
                                                                     float32,
                                                                     float32)
    IL_01ae:  ldarg.0
    IL_01af:  ldarg.s    texture
    IL_01b1:  ldc.i4.1
    IL_01b2:  ldc.i4.0
    IL_01b3:  ldnull
    IL_01b4:  ldsfld     class [Engine]Engine.Graphics.RasterizerState [Engine]Engine.Graphics.RasterizerState::CullCounterClockwiseScissor
    IL_01b9:  ldnull
    IL_01ba:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointClamp
    IL_01bf:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch3D [Engine]Engine.Graphics.PrimitivesRenderer3D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_01c4:  stloc.s    V_9
    IL_01c6:  ldloc.s    V_9
    IL_01c8:  ldloc.2
    IL_01c9:  ldloc.s    V_4
    IL_01cb:  ldloc.s    V_5
    IL_01cd:  ldloc.3
    IL_01ce:  ldloc.s    V_8
    IL_01d0:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_01d5:  ldloc.s    V_8
    IL_01d7:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_01dc:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_01e1:  ldloc.s    V_8
    IL_01e3:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_01e8:  ldloc.s    V_8
    IL_01ea:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_01ef:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_01f4:  ldloc.s    V_8
    IL_01f6:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_01fb:  ldloc.s    V_8
    IL_01fd:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_0202:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0207:  ldloc.s    V_8
    IL_0209:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_020e:  ldloc.s    V_8
    IL_0210:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_0215:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_021a:  ldarg.s    color
    IL_021c:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch3D::QueueQuad(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0221:  ldarg.s    environmentData
    IL_0223:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.DrawBlockEnvironmentData::BillboardDirection
    IL_0228:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_022d:  brtrue.s   IL_028a

    IL_022f:  ldloc.s    V_9
    IL_0231:  ldloc.2
    IL_0232:  ldloc.3
    IL_0233:  ldloc.s    V_5
    IL_0235:  ldloc.s    V_4
    IL_0237:  ldloc.s    V_8
    IL_0239:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_023e:  ldloc.s    V_8
    IL_0240:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_0245:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_024a:  ldloc.s    V_8
    IL_024c:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_0251:  ldloc.s    V_8
    IL_0253:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_0258:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_025d:  ldloc.s    V_8
    IL_025f:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_0264:  ldloc.s    V_8
    IL_0266:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_026b:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0270:  ldloc.s    V_8
    IL_0272:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_0277:  ldloc.s    V_8
    IL_0279:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_027e:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0283:  ldarg.s    color
    IL_0285:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch3D::QueueQuad(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_028a:  ret
  } // end of method BlocksManager::DrawFlatBlock

  .method public hidebysig static void  DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                                                      class Game.BlockMesh blockMesh,
                                                      float32 size,
                                                      valuetype [Engine]Engine.Matrix& matrix,
                                                      class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       65 (0x41)
    .maxstack  7
    .locals init (class [Engine]Engine.Graphics.Texture2D V_0)
    IL_0000:  ldarg.s    environmentData
    IL_0002:  dup
    IL_0003:  brtrue.s   IL_000b

    IL_0005:  pop
    IL_0006:  ldsfld     class Game.DrawBlockEnvironmentData Game.BlocksManager::m_defaultEnvironmentData
    IL_000b:  starg.s    environmentData
    IL_000d:  ldarg.s    environmentData
    IL_000f:  ldfld      class Game.SubsystemTerrain Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_0014:  brtrue.s   IL_001d

    IL_0016:  call       class [Engine]Engine.Graphics.Texture2D Game.BlocksTexturesManager::get_DefaultBlocksTexture()
    IL_001b:  br.s       IL_002e

    IL_001d:  ldarg.s    environmentData
    IL_001f:  ldfld      class Game.SubsystemTerrain Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_0024:  callvirt   instance class Game.SubsystemAnimatedTextures Game.SubsystemTerrain::get_SubsystemAnimatedTextures()
    IL_0029:  callvirt   instance class [Engine]Engine.Graphics.Texture2D Game.SubsystemAnimatedTextures::get_AnimatedBlocksTexture()
    IL_002e:  stloc.0
    IL_002f:  ldarg.0
    IL_0030:  ldarg.1
    IL_0031:  ldloc.0
    IL_0032:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0037:  ldarg.2
    IL_0038:  ldarg.3
    IL_0039:  ldarg.s    environmentData
    IL_003b:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                class [Engine]Engine.Graphics.Texture2D,
                                                                valuetype [Engine]Engine.Color,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_0040:  ret
  } // end of method BlocksManager::DrawMeshBlock

  .method public hidebysig static void  DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                                                      class Game.BlockMesh blockMesh,
                                                      valuetype [Engine]Engine.Color color,
                                                      float32 size,
                                                      valuetype [Engine]Engine.Matrix& matrix,
                                                      class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       62 (0x3e)
    .maxstack  7
    .locals init (class [Engine]Engine.Graphics.Texture2D V_0)
    IL_0000:  ldarg.s    environmentData
    IL_0002:  dup
    IL_0003:  brtrue.s   IL_000b

    IL_0005:  pop
    IL_0006:  ldsfld     class Game.DrawBlockEnvironmentData Game.BlocksManager::m_defaultEnvironmentData
    IL_000b:  starg.s    environmentData
    IL_000d:  ldarg.s    environmentData
    IL_000f:  ldfld      class Game.SubsystemTerrain Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_0014:  brtrue.s   IL_001d

    IL_0016:  call       class [Engine]Engine.Graphics.Texture2D Game.BlocksTexturesManager::get_DefaultBlocksTexture()
    IL_001b:  br.s       IL_002e

    IL_001d:  ldarg.s    environmentData
    IL_001f:  ldfld      class Game.SubsystemTerrain Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_0024:  callvirt   instance class Game.SubsystemAnimatedTextures Game.SubsystemTerrain::get_SubsystemAnimatedTextures()
    IL_0029:  callvirt   instance class [Engine]Engine.Graphics.Texture2D Game.SubsystemAnimatedTextures::get_AnimatedBlocksTexture()
    IL_002e:  stloc.0
    IL_002f:  ldarg.0
    IL_0030:  ldarg.1
    IL_0031:  ldloc.0
    IL_0032:  ldarg.2
    IL_0033:  ldarg.3
    IL_0034:  ldarg.s    matrix
    IL_0036:  ldarg.s    environmentData
    IL_0038:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class Game.BlockMesh,
                                                                class [Engine]Engine.Graphics.Texture2D,
                                                                valuetype [Engine]Engine.Color,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class Game.DrawBlockEnvironmentData)
    IL_003d:  ret
  } // end of method BlocksManager::DrawMeshBlock

  .method public hidebysig static void  DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                                                      class Game.BlockMesh blockMesh,
                                                      class [Engine]Engine.Graphics.Texture2D texture,
                                                      valuetype [Engine]Engine.Color color,
                                                      float32 size,
                                                      valuetype [Engine]Engine.Matrix& matrix,
                                                      class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       753 (0x2f1)
    .maxstack  8
    .locals init (float32 V_0,
             valuetype [Engine]Engine.Vector4 V_1,
             bool V_2,
             class [Engine]Engine.Graphics.TexturedBatch3D V_3,
             bool V_4,
             valuetype [Engine]Engine.Matrix V_5,
             int32 V_6,
             valuetype Game.BlockMeshVertex[] V_7,
             int32 V_8,
             uint16[] V_9,
             class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture> V_10,
             int32 V_11,
             int32 V_12,
             class [Engine]Engine.DynamicArray`1<uint16> V_13,
             int32 V_14,
             int32 V_15,
             valuetype Game.BlockMeshVertex V_16,
             valuetype [Engine]Engine.Vector4 V_17,
             float32 V_18,
             valuetype [Engine]Engine.Color V_19,
             int32 V_20)
    IL_0000:  ldarg.s    environmentData
    IL_0002:  dup
    IL_0003:  brtrue.s   IL_000b

    IL_0005:  pop
    IL_0006:  ldsfld     class Game.DrawBlockEnvironmentData Game.BlocksManager::m_defaultEnvironmentData
    IL_000b:  starg.s    environmentData
    IL_000d:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_0012:  ldarg.s    environmentData
    IL_0014:  ldfld      int32 Game.DrawBlockEnvironmentData::Light
    IL_0019:  ldelem.r4
    IL_001a:  stloc.0
    IL_001b:  ldloca.s   V_1
    IL_001d:  ldarg.3
    IL_001e:  call       instance void [Engine]Engine.Vector4::.ctor(valuetype [Engine]Engine.Color)
    IL_0023:  ldloca.s   V_1
    IL_0025:  ldflda     float32 [Engine]Engine.Vector4::X
    IL_002a:  dup
    IL_002b:  ldind.r4
    IL_002c:  ldloc.0
    IL_002d:  mul
    IL_002e:  stind.r4
    IL_002f:  ldloca.s   V_1
    IL_0031:  ldflda     float32 [Engine]Engine.Vector4::Y
    IL_0036:  dup
    IL_0037:  ldind.r4
    IL_0038:  ldloc.0
    IL_0039:  mul
    IL_003a:  stind.r4
    IL_003b:  ldloca.s   V_1
    IL_003d:  ldflda     float32 [Engine]Engine.Vector4::Z
    IL_0042:  dup
    IL_0043:  ldind.r4
    IL_0044:  ldloc.0
    IL_0045:  mul
    IL_0046:  stind.r4
    IL_0047:  ldloc.1
    IL_0048:  ldsfld     valuetype [Engine]Engine.Vector4 [Engine]Engine.Vector4::One
    IL_004d:  call       bool [Engine]Engine.Vector4::op_Equality(valuetype [Engine]Engine.Vector4,
                                                                  valuetype [Engine]Engine.Vector4)
    IL_0052:  stloc.2
    IL_0053:  ldarg.0
    IL_0054:  ldarg.2
    IL_0055:  ldc.i4.1
    IL_0056:  ldc.i4.0
    IL_0057:  ldnull
    IL_0058:  ldsfld     class [Engine]Engine.Graphics.RasterizerState [Engine]Engine.Graphics.RasterizerState::CullCounterClockwiseScissor
    IL_005d:  ldnull
    IL_005e:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointClamp
    IL_0063:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch3D [Engine]Engine.Graphics.PrimitivesRenderer3D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_0068:  stloc.3
    IL_0069:  ldc.i4.0
    IL_006a:  stloc.s    V_4
    IL_006c:  ldarg.s    environmentData
    IL_006e:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.DrawBlockEnvironmentData::ViewProjectionMatrix
    IL_0073:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_HasValue()
    IL_0078:  brfalse.s  IL_0096

    IL_007a:  ldarg.s    matrix
    IL_007c:  ldobj      [Engine]Engine.Matrix
    IL_0081:  ldarg.s    environmentData
    IL_0083:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.DrawBlockEnvironmentData::ViewProjectionMatrix
    IL_0088:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_Value()
    IL_008d:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0092:  stloc.s    V_5
    IL_0094:  br.s       IL_009f

    IL_0096:  ldarg.s    matrix
    IL_0098:  ldobj      [Engine]Engine.Matrix
    IL_009d:  stloc.s    V_5
    IL_009f:  ldarg.s    size
    IL_00a1:  ldc.r4     1.
    IL_00a6:  beq.s      IL_00b8

    IL_00a8:  ldarg.s    size
    IL_00aa:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32)
    IL_00af:  ldloc.s    V_5
    IL_00b1:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00b6:  stloc.s    V_5
    IL_00b8:  ldloc.s    V_5
    IL_00ba:  ldfld      float32 [Engine]Engine.Matrix::M14
    IL_00bf:  ldc.r4     0.0
    IL_00c4:  bne.un.s   IL_00f0

    IL_00c6:  ldloc.s    V_5
    IL_00c8:  ldfld      float32 [Engine]Engine.Matrix::M24
    IL_00cd:  ldc.r4     0.0
    IL_00d2:  bne.un.s   IL_00f0

    IL_00d4:  ldloc.s    V_5
    IL_00d6:  ldfld      float32 [Engine]Engine.Matrix::M34
    IL_00db:  ldc.r4     0.0
    IL_00e0:  bne.un.s   IL_00f0

    IL_00e2:  ldloc.s    V_5
    IL_00e4:  ldfld      float32 [Engine]Engine.Matrix::M44
    IL_00e9:  ldc.r4     1.
    IL_00ee:  beq.s      IL_00f3

    IL_00f0:  ldc.i4.1
    IL_00f1:  stloc.s    V_4
    IL_00f3:  ldarg.1
    IL_00f4:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
    IL_00f9:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_00fe:  stloc.s    V_6
    IL_0100:  ldarg.1
    IL_0101:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
    IL_0106:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Array()
    IL_010b:  stloc.s    V_7
    IL_010d:  ldarg.1
    IL_010e:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.BlockMesh::Indices
    IL_0113:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_0118:  stloc.s    V_8
    IL_011a:  ldarg.1
    IL_011b:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.BlockMesh::Indices
    IL_0120:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0125:  stloc.s    V_9
    IL_0127:  ldloc.3
    IL_0128:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture> [Engine]Engine.Graphics.BaseTexturedBatch::TriangleVertices
    IL_012d:  stloc.s    V_10
    IL_012f:  ldloc.s    V_10
    IL_0131:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture>::get_Count()
    IL_0136:  stloc.s    V_11
    IL_0138:  ldloc.s    V_10
    IL_013a:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture>::get_Count()
    IL_013f:  stloc.s    V_12
    IL_0141:  ldloc.s    V_10
    IL_0143:  dup
    IL_0144:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture>::get_Count()
    IL_0149:  ldloc.s    V_6
    IL_014b:  add
    IL_014c:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture>::set_Count(int32)
    IL_0151:  ldc.i4.0
    IL_0152:  stloc.s    V_15
    IL_0154:  br         IL_029d

    IL_0159:  ldloc.s    V_7
    IL_015b:  ldloc.s    V_15
    IL_015d:  ldelem     Game.BlockMeshVertex
    IL_0162:  stloc.s    V_16
    IL_0164:  ldloc.s    V_4
    IL_0166:  brfalse.s  IL_01c1

    IL_0168:  ldloca.s   V_17
    IL_016a:  ldloc.s    V_16
    IL_016c:  ldfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_0171:  ldc.r4     1.
    IL_0176:  call       instance void [Engine]Engine.Vector4::.ctor(valuetype [Engine]Engine.Vector3,
                                                                     float32)
    IL_017b:  ldloca.s   V_17
    IL_017d:  ldloca.s   V_5
    IL_017f:  ldloca.s   V_17
    IL_0181:  call       void [Engine]Engine.Vector4::Transform(valuetype [Engine]Engine.Vector4&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector4&)
    IL_0186:  ldc.r4     1.
    IL_018b:  ldloc.s    V_17
    IL_018d:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_0192:  div
    IL_0193:  stloc.s    V_18
    IL_0195:  ldloca.s   V_16
    IL_0197:  ldloc.s    V_17
    IL_0199:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_019e:  ldloc.s    V_18
    IL_01a0:  mul
    IL_01a1:  ldloc.s    V_17
    IL_01a3:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_01a8:  ldloc.s    V_18
    IL_01aa:  mul
    IL_01ab:  ldloc.s    V_17
    IL_01ad:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_01b2:  ldloc.s    V_18
    IL_01b4:  mul
    IL_01b5:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01ba:  stfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_01bf:  br.s       IL_01d6

    IL_01c1:  ldloca.s   V_16
    IL_01c3:  ldflda     valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_01c8:  ldloca.s   V_5
    IL_01ca:  ldloca.s   V_16
    IL_01cc:  ldflda     valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_01d1:  call       void [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector3&)
    IL_01d6:  ldloc.2
    IL_01d7:  brtrue.s   IL_01e2

    IL_01d9:  ldloc.s    V_16
    IL_01db:  ldfld      bool Game.BlockMeshVertex::IsEmissive
    IL_01e0:  brfalse.s  IL_0214

    IL_01e2:  ldloc.s    V_10
    IL_01e4:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture>::get_Array()
    IL_01e9:  ldloc.s    V_12
    IL_01eb:  dup
    IL_01ec:  ldc.i4.1
    IL_01ed:  add
    IL_01ee:  stloc.s    V_12
    IL_01f0:  ldloc.s    V_16
    IL_01f2:  ldfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_01f7:  ldloc.s    V_16
    IL_01f9:  ldfld      valuetype [Engine]Engine.Color Game.BlockMeshVertex::Color
    IL_01fe:  ldloc.s    V_16
    IL_0200:  ldfld      valuetype [Engine]Engine.Vector2 Game.BlockMeshVertex::TextureCoordinates
    IL_0205:  newobj     instance void [Engine]Engine.Graphics.VertexPositionColorTexture::.ctor(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Color,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_020a:  stelem     [Engine]Engine.Graphics.VertexPositionColorTexture
    IL_020f:  br         IL_0297

    IL_0214:  ldloca.s   V_19
    IL_0216:  ldloca.s   V_16
    IL_0218:  ldflda     valuetype [Engine]Engine.Color Game.BlockMeshVertex::Color
    IL_021d:  call       instance uint8 [Engine]Engine.Color::get_R()
    IL_0222:  conv.r4
    IL_0223:  ldloc.1
    IL_0224:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_0229:  mul
    IL_022a:  conv.u1
    IL_022b:  ldloca.s   V_16
    IL_022d:  ldflda     valuetype [Engine]Engine.Color Game.BlockMeshVertex::Color
    IL_0232:  call       instance uint8 [Engine]Engine.Color::get_G()
    IL_0237:  conv.r4
    IL_0238:  ldloc.1
    IL_0239:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_023e:  mul
    IL_023f:  conv.u1
    IL_0240:  ldloca.s   V_16
    IL_0242:  ldflda     valuetype [Engine]Engine.Color Game.BlockMeshVertex::Color
    IL_0247:  call       instance uint8 [Engine]Engine.Color::get_B()
    IL_024c:  conv.r4
    IL_024d:  ldloc.1
    IL_024e:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_0253:  mul
    IL_0254:  conv.u1
    IL_0255:  ldloca.s   V_16
    IL_0257:  ldflda     valuetype [Engine]Engine.Color Game.BlockMeshVertex::Color
    IL_025c:  call       instance uint8 [Engine]Engine.Color::get_A()
    IL_0261:  conv.r4
    IL_0262:  ldloc.1
    IL_0263:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_0268:  mul
    IL_0269:  conv.u1
    IL_026a:  call       instance void [Engine]Engine.Color::.ctor(uint8,
                                                                   uint8,
                                                                   uint8,
                                                                   uint8)
    IL_026f:  ldloc.s    V_10
    IL_0271:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture>::get_Array()
    IL_0276:  ldloc.s    V_12
    IL_0278:  dup
    IL_0279:  ldc.i4.1
    IL_027a:  add
    IL_027b:  stloc.s    V_12
    IL_027d:  ldloc.s    V_16
    IL_027f:  ldfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_0284:  ldloc.s    V_19
    IL_0286:  ldloc.s    V_16
    IL_0288:  ldfld      valuetype [Engine]Engine.Vector2 Game.BlockMeshVertex::TextureCoordinates
    IL_028d:  newobj     instance void [Engine]Engine.Graphics.VertexPositionColorTexture::.ctor(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Color,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_0292:  stelem     [Engine]Engine.Graphics.VertexPositionColorTexture
    IL_0297:  ldloc.s    V_15
    IL_0299:  ldc.i4.1
    IL_029a:  add
    IL_029b:  stloc.s    V_15
    IL_029d:  ldloc.s    V_15
    IL_029f:  ldloc.s    V_6
    IL_02a1:  blt        IL_0159

    IL_02a6:  ldloc.3
    IL_02a7:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> [Engine]Engine.Graphics.BaseTexturedBatch::TriangleIndices
    IL_02ac:  stloc.s    V_13
    IL_02ae:  ldloc.s    V_13
    IL_02b0:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_02b5:  stloc.s    V_14
    IL_02b7:  ldloc.s    V_13
    IL_02b9:  dup
    IL_02ba:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_02bf:  ldloc.s    V_8
    IL_02c1:  add
    IL_02c2:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::set_Count(int32)
    IL_02c7:  ldc.i4.0
    IL_02c8:  stloc.s    V_20
    IL_02ca:  br.s       IL_02ea

    IL_02cc:  ldloc.s    V_13
    IL_02ce:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_02d3:  ldloc.s    V_14
    IL_02d5:  dup
    IL_02d6:  ldc.i4.1
    IL_02d7:  add
    IL_02d8:  stloc.s    V_14
    IL_02da:  ldloc.s    V_11
    IL_02dc:  ldloc.s    V_9
    IL_02de:  ldloc.s    V_20
    IL_02e0:  ldelem.u2
    IL_02e1:  add
    IL_02e2:  conv.u2
    IL_02e3:  stelem.i2
    IL_02e4:  ldloc.s    V_20
    IL_02e6:  ldc.i4.1
    IL_02e7:  add
    IL_02e8:  stloc.s    V_20
    IL_02ea:  ldloc.s    V_20
    IL_02ec:  ldloc.s    V_8
    IL_02ee:  blt.s      IL_02cc

    IL_02f0:  ret
  } // end of method BlocksManager::DrawMeshBlock

  .method public hidebysig static int32  DamageItem(int32 'value',
                                                    int32 damageCount) cil managed
  {
    // 代码大小       62 (0x3e)
    .maxstack  3
    .locals init (int32 V_0,
             class Game.Block V_1,
             int32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0006:  stloc.0
    IL_0007:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_000c:  ldloc.0
    IL_000d:  ldelem.ref
    IL_000e:  stloc.1
    IL_000f:  ldloc.1
    IL_0010:  ldfld      int32 Game.Block::Durability
    IL_0015:  ldc.i4.0
    IL_0016:  blt.s      IL_003c

    IL_0018:  ldloc.1
    IL_0019:  ldarg.0
    IL_001a:  callvirt   instance int32 Game.Block::GetDamage(int32)
    IL_001f:  ldarg.1
    IL_0020:  add
    IL_0021:  stloc.2
    IL_0022:  ldloc.2
    IL_0023:  ldloc.1
    IL_0024:  ldfld      int32 Game.Block::Durability
    IL_0029:  bgt.s      IL_0034

    IL_002b:  ldloc.1
    IL_002c:  ldarg.0
    IL_002d:  ldloc.2
    IL_002e:  callvirt   instance int32 Game.Block::SetDamage(int32,
                                                              int32)
    IL_0033:  ret

    IL_0034:  ldloc.1
    IL_0035:  ldarg.0
    IL_0036:  callvirt   instance int32 Game.Block::GetDamageDestructionValue(int32)
    IL_003b:  ret

    IL_003c:  ldarg.0
    IL_003d:  ret
  } // end of method BlocksManager::DamageItem

  .method private hidebysig static void  LoadBlocksData(string data) cil managed
  {
    // 代码大小       778 (0x30a)
    .maxstack  6
    .locals init (class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Block,bool> V_0,
             string[] V_1,
             string[] V_2,
             int32 V_3,
             string[] V_4,
             class Game.BlocksManager/'<>c__DisplayClass20_0' V_5,
             class Game.Block V_6,
             class [System.Collections]System.Collections.Generic.Dictionary`2<string,class [System.Reflection]System.Reflection.FieldInfo> V_7,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.FieldInfo> V_8,
             class [System.Reflection]System.Reflection.FieldInfo V_9,
             int32 V_10,
             string V_11,
             string V_12,
             class [System.Reflection]System.Reflection.FieldInfo V_13,
             object V_14,
             class Game.BlocksManager/'<>c__DisplayClass20_1' V_15,
             class Game.Block V_16,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Block> V_17,
             class Game.Block V_18)
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Block,bool>::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldstr      "\r"
    IL_000c:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0011:  callvirt   instance string [System.Runtime]System.String::Replace(string,
                                                                                string)
    IL_0016:  starg.s    data
    IL_0018:  ldarg.0
    IL_0019:  ldc.i4.1
    IL_001a:  newarr     [System.Runtime]System.Char
    IL_001f:  dup
    IL_0020:  ldc.i4.0
    IL_0021:  ldc.i4.s   10
    IL_0023:  stelem.i2
    IL_0024:  ldc.i4.1
    IL_0025:  callvirt   instance string[] [System.Runtime]System.String::Split(char[],
                                                                                valuetype [System.Runtime]System.StringSplitOptions)
    IL_002a:  stloc.1
    IL_002b:  ldnull
    IL_002c:  stloc.2
    IL_002d:  ldc.i4.0
    IL_002e:  stloc.3
    IL_002f:  br         IL_02a2

    IL_0034:  ldloc.1
    IL_0035:  ldloc.3
    IL_0036:  ldelem.ref
    IL_0037:  ldc.i4.1
    IL_0038:  newarr     [System.Runtime]System.Char
    IL_003d:  dup
    IL_003e:  ldc.i4.0
    IL_003f:  ldc.i4.s   59
    IL_0041:  stelem.i2
    IL_0042:  callvirt   instance string[] [System.Runtime]System.String::Split(char[])
    IL_0047:  stloc.s    V_4
    IL_0049:  ldloc.3
    IL_004a:  brtrue.s   IL_006d

    IL_004c:  ldloc.s    V_4
    IL_004e:  ldlen
    IL_004f:  conv.i4
    IL_0050:  ldc.i4.1
    IL_0051:  sub
    IL_0052:  newarr     [System.Runtime]System.String
    IL_0057:  stloc.2
    IL_0058:  ldloc.s    V_4
    IL_005a:  ldc.i4.1
    IL_005b:  ldloc.2
    IL_005c:  ldc.i4.0
    IL_005d:  ldloc.s    V_4
    IL_005f:  ldlen
    IL_0060:  conv.i4
    IL_0061:  ldc.i4.1
    IL_0062:  sub
    IL_0063:  call       void [System.Runtime]System.Array::Copy(class [System.Runtime]System.Array,
                                                                 int32,
                                                                 class [System.Runtime]System.Array,
                                                                 int32,
                                                                 int32)
    IL_0068:  br         IL_029e

    IL_006d:  newobj     instance void Game.BlocksManager/'<>c__DisplayClass20_0'::.ctor()
    IL_0072:  stloc.s    V_5
    IL_0074:  ldloc.s    V_4
    IL_0076:  ldlen
    IL_0077:  conv.i4
    IL_0078:  ldloc.2
    IL_0079:  ldlen
    IL_007a:  conv.i4
    IL_007b:  ldc.i4.1
    IL_007c:  add
    IL_007d:  beq.s      IL_00a8

    IL_007f:  ldstr      "Not enough field values for block \"{0}\"."
    IL_0084:  ldc.i4.1
    IL_0085:  newarr     [System.Runtime]System.Object
    IL_008a:  dup
    IL_008b:  ldc.i4.0
    IL_008c:  ldloc.s    V_4
    IL_008e:  ldlen
    IL_008f:  brtrue.s   IL_0098

    IL_0091:  ldstr      "unknown"
    IL_0096:  br.s       IL_009c

    IL_0098:  ldloc.s    V_4
    IL_009a:  ldc.i4.0
    IL_009b:  ldelem.ref
    IL_009c:  stelem.ref
    IL_009d:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_00a2:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_00a7:  throw

    IL_00a8:  ldloc.s    V_5
    IL_00aa:  ldloc.s    V_4
    IL_00ac:  ldc.i4.0
    IL_00ad:  ldelem.ref
    IL_00ae:  stfld      string Game.BlocksManager/'<>c__DisplayClass20_0'::typeName
    IL_00b3:  ldloc.s    V_5
    IL_00b5:  ldfld      string Game.BlocksManager/'<>c__DisplayClass20_0'::typeName
    IL_00ba:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_00bf:  brtrue     IL_029e

    IL_00c4:  ldsfld     class Game.Block[] Game.BlocksManager::m_blocks
    IL_00c9:  ldloc.s    V_5
    IL_00cb:  ldftn      instance bool Game.BlocksManager/'<>c__DisplayClass20_0'::'<LoadBlocksData>b__0'(class Game.Block)
    IL_00d1:  newobj     instance void class [System.Runtime]System.Func`2<class Game.Block,bool>::.ctor(object,
                                                                                                         native int)
    IL_00d6:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<class Game.Block>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                   class [System.Runtime]System.Func`2<!!0,bool>)
    IL_00db:  stloc.s    V_6
    IL_00dd:  ldloc.s    V_6
    IL_00df:  brtrue.s   IL_0101

    IL_00e1:  ldstr      "Block \"{0}\" not found when loading block data."
    IL_00e6:  ldc.i4.1
    IL_00e7:  newarr     [System.Runtime]System.Object
    IL_00ec:  dup
    IL_00ed:  ldc.i4.0
    IL_00ee:  ldloc.s    V_5
    IL_00f0:  ldfld      string Game.BlocksManager/'<>c__DisplayClass20_0'::typeName
    IL_00f5:  stelem.ref
    IL_00f6:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_00fb:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0100:  throw

    IL_0101:  ldloc.0
    IL_0102:  ldloc.s    V_6
    IL_0104:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Block,bool>::ContainsKey(!0)
    IL_0109:  brfalse.s  IL_012b

    IL_010b:  ldstr      "Data for block \"{0}\" specified more than once when"
    + " loading block data."
    IL_0110:  ldc.i4.1
    IL_0111:  newarr     [System.Runtime]System.Object
    IL_0116:  dup
    IL_0117:  ldc.i4.0
    IL_0118:  ldloc.s    V_5
    IL_011a:  ldfld      string Game.BlocksManager/'<>c__DisplayClass20_0'::typeName
    IL_011f:  stelem.ref
    IL_0120:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0125:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_012a:  throw

    IL_012b:  ldloc.0
    IL_012c:  ldloc.s    V_6
    IL_012e:  ldc.i4.1
    IL_012f:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Block,bool>::Add(!0,
                                                                                                                                     !1)
    IL_0134:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,class [System.Reflection]System.Reflection.FieldInfo>::.ctor()
    IL_0139:  stloc.s    V_7
    IL_013b:  ldloc.s    V_6
    IL_013d:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
    IL_0142:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.FieldInfo> [System.Reflection.Extensions]System.Reflection.RuntimeReflectionExtensions::GetRuntimeFields(class [System.Runtime]System.Type)
    IL_0147:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.FieldInfo>::GetEnumerator()
    IL_014c:  stloc.s    V_8
    .try
    {
      IL_014e:  br.s       IL_017b

      IL_0150:  ldloc.s    V_8
      IL_0152:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.FieldInfo>::get_Current()
      IL_0157:  stloc.s    V_9
      IL_0159:  ldloc.s    V_9
      IL_015b:  callvirt   instance bool [System.Reflection]System.Reflection.FieldInfo::get_IsPublic()
      IL_0160:  brfalse.s  IL_017b

      IL_0162:  ldloc.s    V_9
      IL_0164:  callvirt   instance bool [System.Reflection]System.Reflection.FieldInfo::get_IsStatic()
      IL_0169:  brtrue.s   IL_017b

      IL_016b:  ldloc.s    V_7
      IL_016d:  ldloc.s    V_9
      IL_016f:  callvirt   instance string [System.Reflection]System.Reflection.MemberInfo::get_Name()
      IL_0174:  ldloc.s    V_9
      IL_0176:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,class [System.Reflection]System.Reflection.FieldInfo>::Add(!0,
                                                                                                                                                                             !1)
      IL_017b:  ldloc.s    V_8
      IL_017d:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0182:  brtrue.s   IL_0150

      IL_0184:  leave.s    IL_0192

    }  // end .try
    finally
    {
      IL_0186:  ldloc.s    V_8
      IL_0188:  brfalse.s  IL_0191

      IL_018a:  ldloc.s    V_8
      IL_018c:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0191:  endfinally
    }  // end handler
    IL_0192:  ldc.i4.1
    IL_0193:  stloc.s    V_10
    IL_0195:  br         IL_0293

    IL_019a:  ldloc.2
    IL_019b:  ldloc.s    V_10
    IL_019d:  ldc.i4.1
    IL_019e:  sub
    IL_019f:  ldelem.ref
    IL_01a0:  stloc.s    V_11
    IL_01a2:  ldloc.s    V_4
    IL_01a4:  ldloc.s    V_10
    IL_01a6:  ldelem.ref
    IL_01a7:  stloc.s    V_12
    IL_01a9:  ldloc.s    V_12
    IL_01ab:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_01b0:  brtrue     IL_028d

    IL_01b5:  ldloc.s    V_7
    IL_01b7:  ldloc.s    V_11
    IL_01b9:  ldloca.s   V_13
    IL_01bb:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<string,class [System.Reflection]System.Reflection.FieldInfo>::TryGetValue(!0,
                                                                                                                                                                                   !1&)
    IL_01c0:  brtrue.s   IL_01dd

    IL_01c2:  ldstr      "Field \"{0}\" not found or not accessible when loadi"
    + "ng block data."
    IL_01c7:  ldc.i4.1
    IL_01c8:  newarr     [System.Runtime]System.Object
    IL_01cd:  dup
    IL_01ce:  ldc.i4.0
    IL_01cf:  ldloc.s    V_11
    IL_01d1:  stelem.ref
    IL_01d2:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_01d7:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_01dc:  throw

    IL_01dd:  ldnull
    IL_01de:  stloc.s    V_14
    IL_01e0:  ldloc.s    V_12
    IL_01e2:  ldstr      "#"
    IL_01e7:  callvirt   instance bool [System.Runtime]System.String::StartsWith(string)
    IL_01ec:  brfalse    IL_0272

    IL_01f1:  newobj     instance void Game.BlocksManager/'<>c__DisplayClass20_1'::.ctor()
    IL_01f6:  stloc.s    V_15
    IL_01f8:  ldloc.s    V_15
    IL_01fa:  ldloc.s    V_12
    IL_01fc:  ldc.i4.1
    IL_01fd:  callvirt   instance string [System.Runtime]System.String::Substring(int32)
    IL_0202:  stfld      string Game.BlocksManager/'<>c__DisplayClass20_1'::refTypeName
    IL_0207:  ldloc.s    V_15
    IL_0209:  ldfld      string Game.BlocksManager/'<>c__DisplayClass20_1'::refTypeName
    IL_020e:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0213:  brfalse.s  IL_0225

    IL_0215:  ldloc.s    V_6
    IL_0217:  ldfld      int32 Game.Block::BlockIndex
    IL_021c:  box        [System.Runtime]System.Int32
    IL_0221:  stloc.s    V_14
    IL_0223:  br.s       IL_0282

    IL_0225:  ldsfld     class Game.Block[] Game.BlocksManager::m_blocks
    IL_022a:  ldloc.s    V_15
    IL_022c:  ldftn      instance bool Game.BlocksManager/'<>c__DisplayClass20_1'::'<LoadBlocksData>b__1'(class Game.Block)
    IL_0232:  newobj     instance void class [System.Runtime]System.Func`2<class Game.Block,bool>::.ctor(object,
                                                                                                         native int)
    IL_0237:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<class Game.Block>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                   class [System.Runtime]System.Func`2<!!0,bool>)
    IL_023c:  stloc.s    V_16
    IL_023e:  ldloc.s    V_16
    IL_0240:  brtrue.s   IL_0262

    IL_0242:  ldstr      "Reference block \"{0}\" not found when loading block"
    + " data."
    IL_0247:  ldc.i4.1
    IL_0248:  newarr     [System.Runtime]System.Object
    IL_024d:  dup
    IL_024e:  ldc.i4.0
    IL_024f:  ldloc.s    V_15
    IL_0251:  ldfld      string Game.BlocksManager/'<>c__DisplayClass20_1'::refTypeName
    IL_0256:  stelem.ref
    IL_0257:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_025c:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0261:  throw

    IL_0262:  ldloc.s    V_16
    IL_0264:  ldfld      int32 Game.Block::BlockIndex
    IL_0269:  box        [System.Runtime]System.Int32
    IL_026e:  stloc.s    V_14
    IL_0270:  br.s       IL_0282

    IL_0272:  ldloc.s    V_13
    IL_0274:  callvirt   instance class [System.Runtime]System.Type [System.Reflection]System.Reflection.FieldInfo::get_FieldType()
    IL_0279:  ldloc.s    V_12
    IL_027b:  call       object [Engine]Engine.Serialization.HumanReadableConverter::ConvertFromString(class [System.Runtime]System.Type,
                                                                                                       string)
    IL_0280:  stloc.s    V_14
    IL_0282:  ldloc.s    V_13
    IL_0284:  ldloc.s    V_6
    IL_0286:  ldloc.s    V_14
    IL_0288:  callvirt   instance void [System.Reflection]System.Reflection.FieldInfo::SetValue(object,
                                                                                                object)
    IL_028d:  ldloc.s    V_10
    IL_028f:  ldc.i4.1
    IL_0290:  add
    IL_0291:  stloc.s    V_10
    IL_0293:  ldloc.s    V_10
    IL_0295:  ldloc.s    V_4
    IL_0297:  ldlen
    IL_0298:  conv.i4
    IL_0299:  blt        IL_019a

    IL_029e:  ldloc.3
    IL_029f:  ldc.i4.1
    IL_02a0:  add
    IL_02a1:  stloc.3
    IL_02a2:  ldloc.3
    IL_02a3:  ldloc.1
    IL_02a4:  ldlen
    IL_02a5:  conv.i4
    IL_02a6:  blt        IL_0034

    IL_02ab:  ldsfld     class Game.Block[] Game.BlocksManager::m_blocks
    IL_02b0:  ldloc.0
    IL_02b1:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Block,bool>::get_Keys()
    IL_02b6:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Except<class Game.Block>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                           class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_02bb:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.Block>::GetEnumerator()
    IL_02c0:  stloc.s    V_17
    .try
    {
      IL_02c2:  br.s       IL_02f2

      IL_02c4:  ldloc.s    V_17
      IL_02c6:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Block>::get_Current()
      IL_02cb:  stloc.s    V_18
      IL_02cd:  ldstr      "Data for block \"{0}\" not found when loading blocks"
      + " data."
      IL_02d2:  ldc.i4.1
      IL_02d3:  newarr     [System.Runtime]System.Object
      IL_02d8:  dup
      IL_02d9:  ldc.i4.0
      IL_02da:  ldloc.s    V_18
      IL_02dc:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
      IL_02e1:  callvirt   instance string [System.Runtime]System.Type::get_Name()
      IL_02e6:  stelem.ref
      IL_02e7:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_02ec:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
      IL_02f1:  throw

      IL_02f2:  ldloc.s    V_17
      IL_02f4:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_02f9:  brtrue.s   IL_02c4

      IL_02fb:  leave.s    IL_0309

    }  // end .try
    finally
    {
      IL_02fd:  ldloc.s    V_17
      IL_02ff:  brfalse.s  IL_0308

      IL_0301:  ldloc.s    V_17
      IL_0303:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0308:  endfinally
    }  // end handler
    IL_0309:  ret
  } // end of method BlocksManager::LoadBlocksData

  .method private hidebysig static void  CalculateSlotTexCoordTables() cil managed
  {
    // 代码大小       34 (0x22)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  br.s       IL_0019

    IL_0004:  ldsfld     valuetype [Engine]Engine.Vector4[] Game.BlocksManager::m_slotTexCoords
    IL_0009:  ldloc.0
    IL_000a:  ldloc.0
    IL_000b:  call       valuetype [Engine]Engine.Vector4 Game.BlocksManager::TextureSlotToTextureCoords(int32)
    IL_0010:  stelem     [Engine]Engine.Vector4
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  add
    IL_0018:  stloc.0
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4     0x100
    IL_001f:  blt.s      IL_0004

    IL_0021:  ret
  } // end of method BlocksManager::CalculateSlotTexCoordTables

  .method private hidebysig static valuetype [Engine]Engine.Vector4 
          TextureSlotToTextureCoords(int32 slot) cil managed
  {
    // 代码大小       84 (0x54)
    .maxstack  4
    .locals init (int32 V_0,
             float32 V_1,
             float32 V_2,
             float32 V_3,
             float32 V_4)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   16
    IL_0003:  rem
    IL_0004:  ldarg.0
    IL_0005:  ldc.i4.s   16
    IL_0007:  div
    IL_0008:  stloc.0
    IL_0009:  dup
    IL_000a:  conv.r4
    IL_000b:  ldc.r4     1.e-003
    IL_0010:  add
    IL_0011:  ldc.r4     16.
    IL_0016:  div
    IL_0017:  stloc.1
    IL_0018:  ldloc.0
    IL_0019:  conv.r4
    IL_001a:  ldc.r4     1.e-003
    IL_001f:  add
    IL_0020:  ldc.r4     16.
    IL_0025:  div
    IL_0026:  stloc.2
    IL_0027:  ldc.i4.1
    IL_0028:  add
    IL_0029:  conv.r4
    IL_002a:  ldc.r4     1.e-003
    IL_002f:  sub
    IL_0030:  ldc.r4     16.
    IL_0035:  div
    IL_0036:  stloc.3
    IL_0037:  ldloc.0
    IL_0038:  ldc.i4.1
    IL_0039:  add
    IL_003a:  conv.r4
    IL_003b:  ldc.r4     1.e-003
    IL_0040:  sub
    IL_0041:  ldc.r4     16.
    IL_0046:  div
    IL_0047:  stloc.s    V_4
    IL_0049:  ldloc.1
    IL_004a:  ldloc.2
    IL_004b:  ldloc.3
    IL_004c:  ldloc.s    V_4
    IL_004e:  newobj     instance void [Engine]Engine.Vector4::.ctor(float32,
                                                                     float32,
                                                                     float32,
                                                                     float32)
    IL_0053:  ret
  } // end of method BlocksManager::TextureSlotToTextureCoords

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  8
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<string>::.ctor()
    IL_0005:  stsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksManager::m_categories
    IL_000a:  newobj     instance void Game.DrawBlockEnvironmentData::.ctor()
    IL_000f:  stsfld     class Game.DrawBlockEnvironmentData Game.BlocksManager::m_defaultEnvironmentData
    IL_0014:  ldc.i4     0x100
    IL_0019:  newarr     [Engine]Engine.Vector4
    IL_001e:  stsfld     valuetype [Engine]Engine.Vector4[] Game.BlocksManager::m_slotTexCoords
    IL_0023:  ret
  } // end of method BlocksManager::.cctor

  .property class Game.Block[] Blocks()
  {
    .get class Game.Block[] Game.BlocksManager::get_Blocks()
  } // end of property BlocksManager::Blocks
  .property class Game.FluidBlock[] FluidBlocks()
  {
    .get class Game.FluidBlock[] Game.BlocksManager::get_FluidBlocks()
  } // end of property BlocksManager::FluidBlocks
  .property valuetype [Engine]Engine.ReadOnlyList`1<string>
          Categories()
  {
    .get valuetype [Engine]Engine.ReadOnlyList`1<string> Game.BlocksManager::get_Categories()
  } // end of property BlocksManager::Categories
} // end of class Game.BlocksManager