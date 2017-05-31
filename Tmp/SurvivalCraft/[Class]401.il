.class public abstract auto ansi sealed beforefieldinit Game.BlocksManager
       extends [System.Runtime]System.Object
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.BlocksManager/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<class [System.Reflection]System.Reflection.FieldInfo,bool> '<>9__6_0'
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
            '<Initialize>b__6_0'(class [System.Reflection]System.Reflection.FieldInfo fi) cil managed
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
    } // end of method '<>c'::'<Initialize>b__6_0'

  } // end of class '<>c'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass13_0'
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
    } // end of method '<>c__DisplayClass13_0'::.ctor

    .method assembly hidebysig instance bool 
            '<FindBlockByTypeName>b__0'(class Game.Block b) cil managed
    {
      // 代码大小       23 (0x17)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
      IL_0006:  callvirt   instance string [System.Runtime]System.Type::get_Name()
      IL_000b:  ldarg.0
      IL_000c:  ldfld      string Game.BlocksManager/'<>c__DisplayClass13_0'::typeName
      IL_0011:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0016:  ret
    } // end of method '<>c__DisplayClass13_0'::'<FindBlockByTypeName>b__0'

  } // end of class '<>c__DisplayClass13_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass14_0'
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
    } // end of method '<>c__DisplayClass14_0'::.ctor

    .method assembly hidebysig instance bool 
            '<FindBlocksByCraftingId>b__0'(class Game.Block b) cil managed
    {
      // 代码大小       18 (0x12)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldfld      string Game.Block::CraftingId
      IL_0006:  ldarg.0
      IL_0007:  ldfld      string Game.BlocksManager/'<>c__DisplayClass14_0'::craftingId
      IL_000c:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0011:  ret
    } // end of method '<>c__DisplayClass14_0'::'<FindBlocksByCraftingId>b__0'

  } // end of class '<>c__DisplayClass14_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass21_0'
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
    } // end of method '<>c__DisplayClass21_0'::.ctor

    .method assembly hidebysig instance bool 
            '<LoadBlocksData>b__0'(class Game.Block v) cil managed
    {
      // 代码大小       23 (0x17)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
      IL_0006:  callvirt   instance string [System.Runtime]System.Type::get_Name()
      IL_000b:  ldarg.0
      IL_000c:  ldfld      string Game.BlocksManager/'<>c__DisplayClass21_0'::typeName
      IL_0011:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0016:  ret
    } // end of method '<>c__DisplayClass21_0'::'<LoadBlocksData>b__0'

  } // end of class '<>c__DisplayClass21_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass21_1'
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
    } // end of method '<>c__DisplayClass21_1'::.ctor

    .method assembly hidebysig instance bool 
            '<LoadBlocksData>b__1'(class Game.Block v) cil managed
    {
      // 代码大小       23 (0x17)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
      IL_0006:  callvirt   instance string [System.Runtime]System.Type::get_Name()
      IL_000b:  ldarg.0
      IL_000c:  ldfld      string Game.BlocksManager/'<>c__DisplayClass21_1'::refTypeName
      IL_0011:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0016:  ret
    } // end of method '<>c__DisplayClass21_1'::'<LoadBlocksData>b__1'

  } // end of class '<>c__DisplayClass21_1'

  .field private static class Game.Block[] m_blocks
  .field private static class Game.FluidBlock[] m_fluidBlocks
  .field private static class [System.Collections]System.Collections.Generic.List`1<string> m_categories
  .field private static class Game.DrawBlockEnvironmentData m_defaultEnvironmentData
  .field private static class [Engine]Engine.Graphics.RasterizerState m_rasterizerState
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
      IL_0063:  ldsfld     class [System.Runtime]System.Func`2<class [System.Reflection]System.Reflection.FieldInfo,bool> Game.BlocksManager/'<>c'::'<>9__6_0'
      IL_0068:  dup
      IL_0069:  brtrue.s   IL_0082

      IL_006b:  pop
      IL_006c:  ldsfld     class Game.BlocksManager/'<>c' Game.BlocksManager/'<>c'::'<>9'
      IL_0071:  ldftn      instance bool Game.BlocksManager/'<>c'::'<Initialize>b__6_0'(class [System.Reflection]System.Reflection.FieldInfo)
      IL_0077:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Reflection]System.Reflection.FieldInfo,bool>::.ctor(object,
                                                                                                                                               native int)
      IL_007c:  dup
      IL_007d:  stsfld     class [System.Runtime]System.Func`2<class [System.Reflection]System.Reflection.FieldInfo,bool> Game.BlocksManager/'<>c'::'<>9__6_0'
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
    IL_0005:  newobj     instance void valuetype [Engine]Engine.ReadOnlyList`1<string>::.ctor(class [System.Collections]System.Collections.Generic.List`1<!0>)
    IL_000a:  ret
  } // end of method BlocksManager::get_Categories

  .method public hidebysig static class Game.Block 
          FindBlockByTypeName(string typeName,
                              bool throwIfNotFound) cil managed
  {
    // 代码大小       77 (0x4d)
    .maxstack  5
    .locals init (class Game.BlocksManager/'<>c__DisplayClass13_0' V_0,
             class Game.Block V_1)
    IL_0000:  newobj     instance void Game.BlocksManager/'<>c__DisplayClass13_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      string Game.BlocksManager/'<>c__DisplayClass13_0'::typeName
    IL_000d:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0012:  ldloc.0
    IL_0013:  ldftn      instance bool Game.BlocksManager/'<>c__DisplayClass13_0'::'<FindBlockByTypeName>b__0'(class Game.Block)
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
    IL_003a:  ldfld      string Game.BlocksManager/'<>c__DisplayClass13_0'::typeName
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
    .locals init (class Game.BlocksManager/'<>c__DisplayClass14_0' V_0)
    IL_0000:  newobj     instance void Game.BlocksManager/'<>c__DisplayClass14_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      string Game.BlocksManager/'<>c__DisplayClass14_0'::craftingId
    IL_000d:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0012:  ldloc.0
    IL_0013:  ldftn      instance bool Game.BlocksManager/'<>c__DisplayClass14_0'::'<FindBlocksByCraftingId>b__0'(class Game.Block)
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
    // 代码大小       1481 (0x5c9)
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
    IL_0034:  ldsfld     class [Engine]Engine.Graphics.RasterizerState Game.BlocksManager::m_rasterizerState
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
    IL_0055:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_005a:  starg.s    color
    IL_005c:  ldarga.s   color
    IL_005e:  ldc.i4     0xff
    IL_0063:  call       instance void [Engine]Engine.Color::set_A(uint8)
    IL_0068:  ldarg.s    topColor
    IL_006a:  ldloc.1
    IL_006b:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_0070:  starg.s    topColor
    IL_0072:  ldarga.s   topColor
    IL_0074:  ldc.i4     0xff
    IL_0079:  call       instance void [Engine]Engine.Color::set_A(uint8)
    IL_007e:  ldarg.3
    IL_007f:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
    IL_0084:  ldarg.3
    IL_0085:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Right()
    IL_008a:  ldarg.2
    IL_008b:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0090:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0095:  stloc.2
    IL_0096:  ldarg.3
    IL_0097:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Up()
    IL_009c:  ldarg.2
    IL_009d:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00a2:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_00a7:  stloc.3
    IL_00a8:  ldarg.3
    IL_00a9:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_00ae:  ldarg.2
    IL_00af:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00b4:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_00b9:  stloc.s    V_4
    IL_00bb:  dup
    IL_00bc:  ldc.r4     0.5
    IL_00c1:  ldloc.2
    IL_00c2:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_00c7:  ldloc.3
    IL_00c8:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00cd:  ldloc.s    V_4
    IL_00cf:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00d4:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00d9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00de:  stloc.s    V_5
    IL_00e0:  dup
    IL_00e1:  ldc.r4     0.5
    IL_00e6:  ldloc.2
    IL_00e7:  ldloc.3
    IL_00e8:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00ed:  ldloc.s    V_4
    IL_00ef:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00f4:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00f9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00fe:  stloc.s    V_6
    IL_0100:  dup
    IL_0101:  ldc.r4     0.5
    IL_0106:  ldloc.2
    IL_0107:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_010c:  ldloc.3
    IL_010d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0112:  ldloc.s    V_4
    IL_0114:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0119:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_011e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0123:  stloc.s    V_7
    IL_0125:  dup
    IL_0126:  ldc.r4     0.5
    IL_012b:  ldloc.2
    IL_012c:  ldloc.3
    IL_012d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0132:  ldloc.s    V_4
    IL_0134:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0139:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_013e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0143:  stloc.s    V_8
    IL_0145:  dup
    IL_0146:  ldc.r4     0.5
    IL_014b:  ldloc.2
    IL_014c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_0151:  ldloc.3
    IL_0152:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0157:  ldloc.s    V_4
    IL_0159:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_015e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0163:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0168:  stloc.s    V_9
    IL_016a:  dup
    IL_016b:  ldc.r4     0.5
    IL_0170:  ldloc.2
    IL_0171:  ldloc.3
    IL_0172:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0177:  ldloc.s    V_4
    IL_0179:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_017e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0183:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0188:  stloc.s    V_10
    IL_018a:  dup
    IL_018b:  ldc.r4     0.5
    IL_0190:  ldloc.2
    IL_0191:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_0196:  ldloc.3
    IL_0197:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_019c:  ldloc.s    V_4
    IL_019e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01a3:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01a8:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01ad:  stloc.s    V_11
    IL_01af:  ldc.r4     0.5
    IL_01b4:  ldloc.2
    IL_01b5:  ldloc.3
    IL_01b6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01bb:  ldloc.s    V_4
    IL_01bd:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01c2:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01c7:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01cc:  stloc.s    V_12
    IL_01ce:  ldarg.s    environmentData
    IL_01d0:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.DrawBlockEnvironmentData::ViewProjectionMatrix
    IL_01d5:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_HasValue()
    IL_01da:  brfalse.s  IL_0242

    IL_01dc:  ldarg.s    environmentData
    IL_01de:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.DrawBlockEnvironmentData::ViewProjectionMatrix
    IL_01e3:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_Value()
    IL_01e8:  stloc.s    V_17
    IL_01ea:  ldloca.s   V_5
    IL_01ec:  ldloca.s   V_17
    IL_01ee:  ldloca.s   V_5
    IL_01f0:  call       void [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector3&)
    IL_01f5:  ldloca.s   V_6
    IL_01f7:  ldloca.s   V_17
    IL_01f9:  ldloca.s   V_6
    IL_01fb:  call       void [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector3&)
    IL_0200:  ldloca.s   V_7
    IL_0202:  ldloca.s   V_17
    IL_0204:  ldloca.s   V_7
    IL_0206:  call       void [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector3&)
    IL_020b:  ldloca.s   V_8
    IL_020d:  ldloca.s   V_17
    IL_020f:  ldloca.s   V_8
    IL_0211:  call       void [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector3&)
    IL_0216:  ldloca.s   V_9
    IL_0218:  ldloca.s   V_17
    IL_021a:  ldloca.s   V_9
    IL_021c:  call       void [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector3&)
    IL_0221:  ldloca.s   V_10
    IL_0223:  ldloca.s   V_17
    IL_0225:  ldloca.s   V_10
    IL_0227:  call       void [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector3&)
    IL_022c:  ldloca.s   V_11
    IL_022e:  ldloca.s   V_17
    IL_0230:  ldloca.s   V_11
    IL_0232:  call       void [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector3&)
    IL_0237:  ldloca.s   V_12
    IL_0239:  ldloca.s   V_17
    IL_023b:  ldloca.s   V_12
    IL_023d:  call       void [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector3&)
    IL_0242:  ldarg.1
    IL_0243:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0248:  stloc.s    V_13
    IL_024a:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_024f:  ldloc.s    V_13
    IL_0251:  ldelem.ref
    IL_0252:  stloc.s    V_14
    IL_0254:  ldsfld     valuetype [Engine]Engine.Vector4[] Game.BlocksManager::m_slotTexCoords
    IL_0259:  ldloc.s    V_14
    IL_025b:  ldc.i4.0
    IL_025c:  ldarg.1
    IL_025d:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_0262:  ldelem     [Engine]Engine.Vector4
    IL_0267:  stloc.s    V_16
    IL_0269:  ldarg.s    color
    IL_026b:  ldarg.3
    IL_026c:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_0271:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_0276:  call       float32 Game.LightingManager::CalculateLighting(valuetype [Engine]Engine.Vector3)
    IL_027b:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_0280:  stloc.s    V_15
    IL_0282:  ldloca.s   V_15
    IL_0284:  ldc.i4     0xff
    IL_0289:  call       instance void [Engine]Engine.Color::set_A(uint8)
    IL_028e:  dup
    IL_028f:  ldloc.s    V_5
    IL_0291:  ldloc.s    V_7
    IL_0293:  ldloc.s    V_8
    IL_0295:  ldloc.s    V_6
    IL_0297:  ldloc.s    V_16
    IL_0299:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_029e:  ldloc.s    V_16
    IL_02a0:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_02a5:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_02aa:  ldloc.s    V_16
    IL_02ac:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_02b1:  ldloc.s    V_16
    IL_02b3:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_02b8:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_02bd:  ldloc.s    V_16
    IL_02bf:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_02c4:  ldloc.s    V_16
    IL_02c6:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_02cb:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_02d0:  ldloc.s    V_16
    IL_02d2:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_02d7:  ldloc.s    V_16
    IL_02d9:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_02de:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_02e3:  ldloc.s    V_15
    IL_02e5:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch3D::QueueQuad(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_02ea:  ldsfld     valuetype [Engine]Engine.Vector4[] Game.BlocksManager::m_slotTexCoords
    IL_02ef:  ldloc.s    V_14
    IL_02f1:  ldc.i4.2
    IL_02f2:  ldarg.1
    IL_02f3:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_02f8:  ldelem     [Engine]Engine.Vector4
    IL_02fd:  stloc.s    V_16
    IL_02ff:  ldarg.s    color
    IL_0301:  ldarg.3
    IL_0302:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_0307:  call       float32 Game.LightingManager::CalculateLighting(valuetype [Engine]Engine.Vector3)
    IL_030c:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_0311:  stloc.s    V_15
    IL_0313:  ldloca.s   V_15
    IL_0315:  ldc.i4     0xff
    IL_031a:  call       instance void [Engine]Engine.Color::set_A(uint8)
    IL_031f:  dup
    IL_0320:  ldloc.s    V_9
    IL_0322:  ldloc.s    V_10
    IL_0324:  ldloc.s    V_12
    IL_0326:  ldloc.s    V_11
    IL_0328:  ldloc.s    V_16
    IL_032a:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_032f:  ldloc.s    V_16
    IL_0331:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_0336:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_033b:  ldloc.s    V_16
    IL_033d:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_0342:  ldloc.s    V_16
    IL_0344:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_0349:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_034e:  ldloc.s    V_16
    IL_0350:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_0355:  ldloc.s    V_16
    IL_0357:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_035c:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0361:  ldloc.s    V_16
    IL_0363:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_0368:  ldloc.s    V_16
    IL_036a:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_036f:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0374:  ldloc.s    V_15
    IL_0376:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch3D::QueueQuad(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_037b:  ldsfld     valuetype [Engine]Engine.Vector4[] Game.BlocksManager::m_slotTexCoords
    IL_0380:  ldloc.s    V_14
    IL_0382:  ldc.i4.5
    IL_0383:  ldarg.1
    IL_0384:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_0389:  ldelem     [Engine]Engine.Vector4
    IL_038e:  stloc.s    V_16
    IL_0390:  ldarg.s    color
    IL_0392:  ldarg.3
    IL_0393:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Up()
    IL_0398:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_039d:  call       float32 Game.LightingManager::CalculateLighting(valuetype [Engine]Engine.Vector3)
    IL_03a2:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_03a7:  stloc.s    V_15
    IL_03a9:  ldloca.s   V_15
    IL_03ab:  ldc.i4     0xff
    IL_03b0:  call       instance void [Engine]Engine.Color::set_A(uint8)
    IL_03b5:  dup
    IL_03b6:  ldloc.s    V_5
    IL_03b8:  ldloc.s    V_6
    IL_03ba:  ldloc.s    V_10
    IL_03bc:  ldloc.s    V_9
    IL_03be:  ldloc.s    V_16
    IL_03c0:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_03c5:  ldloc.s    V_16
    IL_03c7:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_03cc:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_03d1:  ldloc.s    V_16
    IL_03d3:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_03d8:  ldloc.s    V_16
    IL_03da:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_03df:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_03e4:  ldloc.s    V_16
    IL_03e6:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_03eb:  ldloc.s    V_16
    IL_03ed:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_03f2:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_03f7:  ldloc.s    V_16
    IL_03f9:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_03fe:  ldloc.s    V_16
    IL_0400:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_0405:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_040a:  ldloc.s    V_15
    IL_040c:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch3D::QueueQuad(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0411:  ldsfld     valuetype [Engine]Engine.Vector4[] Game.BlocksManager::m_slotTexCoords
    IL_0416:  ldloc.s    V_14
    IL_0418:  ldc.i4.4
    IL_0419:  ldarg.1
    IL_041a:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_041f:  ldelem     [Engine]Engine.Vector4
    IL_0424:  stloc.s    V_16
    IL_0426:  ldarg.s    topColor
    IL_0428:  ldarg.3
    IL_0429:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Up()
    IL_042e:  call       float32 Game.LightingManager::CalculateLighting(valuetype [Engine]Engine.Vector3)
    IL_0433:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_0438:  stloc.s    V_15
    IL_043a:  ldloca.s   V_15
    IL_043c:  ldc.i4     0xff
    IL_0441:  call       instance void [Engine]Engine.Color::set_A(uint8)
    IL_0446:  dup
    IL_0447:  ldloc.s    V_7
    IL_0449:  ldloc.s    V_11
    IL_044b:  ldloc.s    V_12
    IL_044d:  ldloc.s    V_8
    IL_044f:  ldloc.s    V_16
    IL_0451:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_0456:  ldloc.s    V_16
    IL_0458:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_045d:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0462:  ldloc.s    V_16
    IL_0464:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_0469:  ldloc.s    V_16
    IL_046b:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_0470:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0475:  ldloc.s    V_16
    IL_0477:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_047c:  ldloc.s    V_16
    IL_047e:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_0483:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0488:  ldloc.s    V_16
    IL_048a:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_048f:  ldloc.s    V_16
    IL_0491:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_0496:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_049b:  ldloc.s    V_15
    IL_049d:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch3D::QueueQuad(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_04a2:  ldsfld     valuetype [Engine]Engine.Vector4[] Game.BlocksManager::m_slotTexCoords
    IL_04a7:  ldloc.s    V_14
    IL_04a9:  ldc.i4.1
    IL_04aa:  ldarg.1
    IL_04ab:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_04b0:  ldelem     [Engine]Engine.Vector4
    IL_04b5:  stloc.s    V_16
    IL_04b7:  ldarg.s    color
    IL_04b9:  ldarg.3
    IL_04ba:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Right()
    IL_04bf:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_04c4:  call       float32 Game.LightingManager::CalculateLighting(valuetype [Engine]Engine.Vector3)
    IL_04c9:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_04ce:  stloc.s    V_15
    IL_04d0:  ldloca.s   V_15
    IL_04d2:  ldc.i4     0xff
    IL_04d7:  call       instance void [Engine]Engine.Color::set_A(uint8)
    IL_04dc:  dup
    IL_04dd:  ldloc.s    V_5
    IL_04df:  ldloc.s    V_9
    IL_04e1:  ldloc.s    V_11
    IL_04e3:  ldloc.s    V_7
    IL_04e5:  ldloc.s    V_16
    IL_04e7:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_04ec:  ldloc.s    V_16
    IL_04ee:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_04f3:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_04f8:  ldloc.s    V_16
    IL_04fa:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_04ff:  ldloc.s    V_16
    IL_0501:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_0506:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_050b:  ldloc.s    V_16
    IL_050d:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_0512:  ldloc.s    V_16
    IL_0514:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_0519:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_051e:  ldloc.s    V_16
    IL_0520:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_0525:  ldloc.s    V_16
    IL_0527:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_052c:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0531:  ldloc.s    V_15
    IL_0533:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch3D::QueueQuad(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0538:  ldsfld     valuetype [Engine]Engine.Vector4[] Game.BlocksManager::m_slotTexCoords
    IL_053d:  ldloc.s    V_14
    IL_053f:  ldc.i4.3
    IL_0540:  ldarg.1
    IL_0541:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_0546:  ldelem     [Engine]Engine.Vector4
    IL_054b:  stloc.s    V_16
    IL_054d:  ldarg.s    color
    IL_054f:  ldarg.3
    IL_0550:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Right()
    IL_0555:  call       float32 Game.LightingManager::CalculateLighting(valuetype [Engine]Engine.Vector3)
    IL_055a:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_055f:  stloc.s    V_15
    IL_0561:  ldloca.s   V_15
    IL_0563:  ldc.i4     0xff
    IL_0568:  call       instance void [Engine]Engine.Color::set_A(uint8)
    IL_056d:  ldloc.s    V_6
    IL_056f:  ldloc.s    V_8
    IL_0571:  ldloc.s    V_12
    IL_0573:  ldloc.s    V_10
    IL_0575:  ldloc.s    V_16
    IL_0577:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_057c:  ldloc.s    V_16
    IL_057e:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_0583:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0588:  ldloc.s    V_16
    IL_058a:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_058f:  ldloc.s    V_16
    IL_0591:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_0596:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_059b:  ldloc.s    V_16
    IL_059d:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_05a2:  ldloc.s    V_16
    IL_05a4:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_05a9:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_05ae:  ldloc.s    V_16
    IL_05b0:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_05b5:  ldloc.s    V_16
    IL_05b7:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_05bc:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_05c1:  ldloc.s    V_15
    IL_05c3:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch3D::QueueQuad(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_05c8:  ret
  } // end of method BlocksManager::DrawCubeBlock

  .method public hidebysig static void  DrawFlatBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                                                      int32 'value',
                                                      float32 size,
                                                      valuetype [Engine]Engine.Matrix& matrix,
                                                      valuetype [Engine]Engine.Color color,
                                                      class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       631 (0x277)
    .maxstack  10
    .locals init (class [Engine]Engine.Graphics.Texture2D V_0,
             class [Engine]Engine.Graphics.TexturedBatch3D V_1,
             float32 V_2,
             valuetype [Engine]Engine.Vector3 V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             valuetype [Engine]Engine.Vector3 V_5,
             valuetype [Engine]Engine.Vector3 V_6,
             valuetype [Engine]Engine.Vector3 V_7,
             valuetype [Engine]Engine.Vector3 V_8,
             int32 V_9,
             class Game.Block V_10,
             valuetype [Engine]Engine.Vector4 V_11,
             valuetype [Engine]Engine.Matrix V_12)
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
    IL_0034:  ldsfld     class [Engine]Engine.Graphics.RasterizerState Game.BlocksManager::m_rasterizerState
    IL_0039:  ldnull
    IL_003a:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointClamp
    IL_003f:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch3D [Engine]Engine.Graphics.PrimitivesRenderer3D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_0044:  stloc.1
    IL_0045:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValue
    IL_004a:  ldarg.s    environmentData
    IL_004c:  ldfld      int32 Game.DrawBlockEnvironmentData::Light
    IL_0051:  ldelem.r4
    IL_0052:  stloc.2
    IL_0053:  ldarg.s    color
    IL_0055:  ldloc.2
    IL_0056:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_005b:  starg.s    color
    IL_005d:  ldarga.s   color
    IL_005f:  ldc.i4     0xff
    IL_0064:  call       instance void [Engine]Engine.Color::set_A(uint8)
    IL_0069:  ldarg.3
    IL_006a:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
    IL_006f:  ldarg.s    environmentData
    IL_0071:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.DrawBlockEnvironmentData::BillboardDirection
    IL_0076:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_007b:  brfalse.s  IL_00b9

    IL_007d:  ldarg.s    environmentData
    IL_007f:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.DrawBlockEnvironmentData::BillboardDirection
    IL_0084:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_0089:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_008e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_0093:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0098:  stloc.3
    IL_0099:  ldarg.s    environmentData
    IL_009b:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.DrawBlockEnvironmentData::BillboardDirection
    IL_00a0:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_00a5:  ldloc.3
    IL_00a6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_00ab:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_00b0:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_00b5:  stloc.s    V_4
    IL_00b7:  br.s       IL_00c8

    IL_00b9:  ldarg.3
    IL_00ba:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Right()
    IL_00bf:  stloc.3
    IL_00c0:  ldarg.3
    IL_00c1:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Up()
    IL_00c6:  stloc.s    V_4
    IL_00c8:  dup
    IL_00c9:  ldc.r4     0.85000002
    IL_00ce:  ldarg.2
    IL_00cf:  mul
    IL_00d0:  ldloc.3
    IL_00d1:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_00d6:  ldloc.s    V_4
    IL_00d8:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00dd:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00e2:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00e7:  stloc.s    V_5
    IL_00e9:  dup
    IL_00ea:  ldc.r4     0.85000002
    IL_00ef:  ldarg.2
    IL_00f0:  mul
    IL_00f1:  ldloc.3
    IL_00f2:  ldloc.s    V_4
    IL_00f4:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00f9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00fe:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0103:  stloc.s    V_6
    IL_0105:  dup
    IL_0106:  ldc.r4     0.85000002
    IL_010b:  ldarg.2
    IL_010c:  mul
    IL_010d:  ldloc.3
    IL_010e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_0113:  ldloc.s    V_4
    IL_0115:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_011a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_011f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0124:  stloc.s    V_7
    IL_0126:  ldc.r4     0.85000002
    IL_012b:  ldarg.2
    IL_012c:  mul
    IL_012d:  ldloc.3
    IL_012e:  ldloc.s    V_4
    IL_0130:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0135:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_013a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_013f:  stloc.s    V_8
    IL_0141:  ldarg.s    environmentData
    IL_0143:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.DrawBlockEnvironmentData::ViewProjectionMatrix
    IL_0148:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_HasValue()
    IL_014d:  brfalse.s  IL_0189

    IL_014f:  ldarg.s    environmentData
    IL_0151:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.DrawBlockEnvironmentData::ViewProjectionMatrix
    IL_0156:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_Value()
    IL_015b:  stloc.s    V_12
    IL_015d:  ldloca.s   V_5
    IL_015f:  ldloca.s   V_12
    IL_0161:  ldloca.s   V_5
    IL_0163:  call       void [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector3&)
    IL_0168:  ldloca.s   V_6
    IL_016a:  ldloca.s   V_12
    IL_016c:  ldloca.s   V_6
    IL_016e:  call       void [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector3&)
    IL_0173:  ldloca.s   V_7
    IL_0175:  ldloca.s   V_12
    IL_0177:  ldloca.s   V_7
    IL_0179:  call       void [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector3&)
    IL_017e:  ldloca.s   V_8
    IL_0180:  ldloca.s   V_12
    IL_0182:  ldloca.s   V_8
    IL_0184:  call       void [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector3&)
    IL_0189:  ldarg.1
    IL_018a:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_018f:  stloc.s    V_9
    IL_0191:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0196:  ldloc.s    V_9
    IL_0198:  ldelem.ref
    IL_0199:  stloc.s    V_10
    IL_019b:  ldsfld     valuetype [Engine]Engine.Vector4[] Game.BlocksManager::m_slotTexCoords
    IL_01a0:  ldloc.s    V_10
    IL_01a2:  ldc.i4.m1
    IL_01a3:  ldarg.1
    IL_01a4:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_01a9:  ldelem     [Engine]Engine.Vector4
    IL_01ae:  stloc.s    V_11
    IL_01b0:  ldloc.1
    IL_01b1:  ldloc.s    V_5
    IL_01b3:  ldloc.s    V_7
    IL_01b5:  ldloc.s    V_8
    IL_01b7:  ldloc.s    V_6
    IL_01b9:  ldloc.s    V_11
    IL_01bb:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_01c0:  ldloc.s    V_11
    IL_01c2:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_01c7:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_01cc:  ldloc.s    V_11
    IL_01ce:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_01d3:  ldloc.s    V_11
    IL_01d5:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_01da:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_01df:  ldloc.s    V_11
    IL_01e1:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_01e6:  ldloc.s    V_11
    IL_01e8:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_01ed:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_01f2:  ldloc.s    V_11
    IL_01f4:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_01f9:  ldloc.s    V_11
    IL_01fb:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_0200:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0205:  ldarg.s    color
    IL_0207:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch3D::QueueQuad(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_020c:  ldarg.s    environmentData
    IL_020e:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.DrawBlockEnvironmentData::BillboardDirection
    IL_0213:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0218:  brtrue.s   IL_0276

    IL_021a:  ldloc.1
    IL_021b:  ldloc.s    V_5
    IL_021d:  ldloc.s    V_6
    IL_021f:  ldloc.s    V_8
    IL_0221:  ldloc.s    V_7
    IL_0223:  ldloc.s    V_11
    IL_0225:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_022a:  ldloc.s    V_11
    IL_022c:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_0231:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0236:  ldloc.s    V_11
    IL_0238:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_023d:  ldloc.s    V_11
    IL_023f:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_0244:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0249:  ldloc.s    V_11
    IL_024b:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_0250:  ldloc.s    V_11
    IL_0252:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_0257:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_025c:  ldloc.s    V_11
    IL_025e:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_0263:  ldloc.s    V_11
    IL_0265:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_026a:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_026f:  ldarg.s    color
    IL_0271:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch3D::QueueQuad(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0276:  ret
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
    // 代码大小       697 (0x2b9)
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
    IL_001b:  ldarg.3
    IL_001c:  newobj     instance void [Engine]Engine.Vector4::.ctor(valuetype [Engine]Engine.Color)
    IL_0021:  ldloc.0
    IL_0022:  call       valuetype [Engine]Engine.Vector4 [Engine]Engine.Vector4::op_Multiply(valuetype [Engine]Engine.Vector4,
                                                                                              float32)
    IL_0027:  stloc.1
    IL_0028:  ldloc.1
    IL_0029:  ldsfld     valuetype [Engine]Engine.Vector4 [Engine]Engine.Vector4::One
    IL_002e:  call       bool [Engine]Engine.Vector4::op_Equality(valuetype [Engine]Engine.Vector4,
                                                                  valuetype [Engine]Engine.Vector4)
    IL_0033:  stloc.2
    IL_0034:  ldarg.0
    IL_0035:  ldarg.2
    IL_0036:  ldc.i4.1
    IL_0037:  ldc.i4.0
    IL_0038:  ldnull
    IL_0039:  ldsfld     class [Engine]Engine.Graphics.RasterizerState Game.BlocksManager::m_rasterizerState
    IL_003e:  ldnull
    IL_003f:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointClamp
    IL_0044:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch3D [Engine]Engine.Graphics.PrimitivesRenderer3D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_0049:  stloc.3
    IL_004a:  ldc.i4.0
    IL_004b:  stloc.s    V_4
    IL_004d:  ldarg.s    environmentData
    IL_004f:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.DrawBlockEnvironmentData::ViewProjectionMatrix
    IL_0054:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_HasValue()
    IL_0059:  brfalse.s  IL_0077

    IL_005b:  ldarg.s    matrix
    IL_005d:  ldobj      [Engine]Engine.Matrix
    IL_0062:  ldarg.s    environmentData
    IL_0064:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.DrawBlockEnvironmentData::ViewProjectionMatrix
    IL_0069:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_Value()
    IL_006e:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0073:  stloc.s    V_5
    IL_0075:  br.s       IL_0080

    IL_0077:  ldarg.s    matrix
    IL_0079:  ldobj      [Engine]Engine.Matrix
    IL_007e:  stloc.s    V_5
    IL_0080:  ldarg.s    size
    IL_0082:  ldc.r4     1.
    IL_0087:  beq.s      IL_0099

    IL_0089:  ldarg.s    size
    IL_008b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32)
    IL_0090:  ldloc.s    V_5
    IL_0092:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0097:  stloc.s    V_5
    IL_0099:  ldloc.s    V_5
    IL_009b:  ldfld      float32 [Engine]Engine.Matrix::M14
    IL_00a0:  ldc.r4     0.0
    IL_00a5:  bne.un.s   IL_00d1

    IL_00a7:  ldloc.s    V_5
    IL_00a9:  ldfld      float32 [Engine]Engine.Matrix::M24
    IL_00ae:  ldc.r4     0.0
    IL_00b3:  bne.un.s   IL_00d1

    IL_00b5:  ldloc.s    V_5
    IL_00b7:  ldfld      float32 [Engine]Engine.Matrix::M34
    IL_00bc:  ldc.r4     0.0
    IL_00c1:  bne.un.s   IL_00d1

    IL_00c3:  ldloc.s    V_5
    IL_00c5:  ldfld      float32 [Engine]Engine.Matrix::M44
    IL_00ca:  ldc.r4     1.
    IL_00cf:  beq.s      IL_00d4

    IL_00d1:  ldc.i4.1
    IL_00d2:  stloc.s    V_4
    IL_00d4:  ldarg.1
    IL_00d5:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
    IL_00da:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_00df:  stloc.s    V_6
    IL_00e1:  ldarg.1
    IL_00e2:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
    IL_00e7:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Array()
    IL_00ec:  stloc.s    V_7
    IL_00ee:  ldarg.1
    IL_00ef:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.BlockMesh::Indices
    IL_00f4:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_00f9:  stloc.s    V_8
    IL_00fb:  ldarg.1
    IL_00fc:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.BlockMesh::Indices
    IL_0101:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0106:  stloc.s    V_9
    IL_0108:  ldloc.3
    IL_0109:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture> [Engine]Engine.Graphics.BaseTexturedBatch::TriangleVertices
    IL_010e:  stloc.s    V_10
    IL_0110:  ldloc.s    V_10
    IL_0112:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture>::get_Count()
    IL_0117:  stloc.s    V_11
    IL_0119:  ldloc.s    V_10
    IL_011b:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture>::get_Count()
    IL_0120:  stloc.s    V_12
    IL_0122:  ldloc.s    V_10
    IL_0124:  dup
    IL_0125:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture>::get_Count()
    IL_012a:  ldloc.s    V_6
    IL_012c:  add
    IL_012d:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture>::set_Count(int32)
    IL_0132:  ldc.i4.0
    IL_0133:  stloc.s    V_15
    IL_0135:  br         IL_0265

    IL_013a:  ldloc.s    V_7
    IL_013c:  ldloc.s    V_15
    IL_013e:  ldelem     Game.BlockMeshVertex
    IL_0143:  stloc.s    V_16
    IL_0145:  ldloc.s    V_4
    IL_0147:  brfalse.s  IL_01a2

    IL_0149:  ldloca.s   V_17
    IL_014b:  ldloc.s    V_16
    IL_014d:  ldfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_0152:  ldc.r4     1.
    IL_0157:  call       instance void [Engine]Engine.Vector4::.ctor(valuetype [Engine]Engine.Vector3,
                                                                     float32)
    IL_015c:  ldloca.s   V_17
    IL_015e:  ldloca.s   V_5
    IL_0160:  ldloca.s   V_17
    IL_0162:  call       void [Engine]Engine.Vector4::Transform(valuetype [Engine]Engine.Vector4&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector4&)
    IL_0167:  ldc.r4     1.
    IL_016c:  ldloc.s    V_17
    IL_016e:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_0173:  div
    IL_0174:  stloc.s    V_18
    IL_0176:  ldloca.s   V_16
    IL_0178:  ldloc.s    V_17
    IL_017a:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_017f:  ldloc.s    V_18
    IL_0181:  mul
    IL_0182:  ldloc.s    V_17
    IL_0184:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_0189:  ldloc.s    V_18
    IL_018b:  mul
    IL_018c:  ldloc.s    V_17
    IL_018e:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_0193:  ldloc.s    V_18
    IL_0195:  mul
    IL_0196:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_019b:  stfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_01a0:  br.s       IL_01b7

    IL_01a2:  ldloca.s   V_16
    IL_01a4:  ldflda     valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_01a9:  ldloca.s   V_5
    IL_01ab:  ldloca.s   V_16
    IL_01ad:  ldflda     valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_01b2:  call       void [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector3&)
    IL_01b7:  ldloc.s    V_16
    IL_01b9:  ldfld      bool Game.BlockMeshVertex::IsEmissive
    IL_01be:  ldloc.2
    IL_01bf:  or
    IL_01c0:  brfalse.s  IL_01f1

    IL_01c2:  ldloc.s    V_10
    IL_01c4:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture>::get_Array()
    IL_01c9:  ldloc.s    V_12
    IL_01cb:  dup
    IL_01cc:  ldc.i4.1
    IL_01cd:  add
    IL_01ce:  stloc.s    V_12
    IL_01d0:  ldloc.s    V_16
    IL_01d2:  ldfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_01d7:  ldloc.s    V_16
    IL_01d9:  ldfld      valuetype [Engine]Engine.Color Game.BlockMeshVertex::Color
    IL_01de:  ldloc.s    V_16
    IL_01e0:  ldfld      valuetype [Engine]Engine.Vector2 Game.BlockMeshVertex::TextureCoordinates
    IL_01e5:  newobj     instance void [Engine]Engine.Graphics.VertexPositionColorTexture::.ctor(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Color,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_01ea:  stelem     [Engine]Engine.Graphics.VertexPositionColorTexture
    IL_01ef:  br.s       IL_025f

    IL_01f1:  ldloca.s   V_19
    IL_01f3:  ldloca.s   V_16
    IL_01f5:  ldflda     valuetype [Engine]Engine.Color Game.BlockMeshVertex::Color
    IL_01fa:  call       instance uint8 [Engine]Engine.Color::get_R()
    IL_01ff:  conv.r4
    IL_0200:  ldloc.1
    IL_0201:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_0206:  mul
    IL_0207:  conv.u1
    IL_0208:  ldloca.s   V_16
    IL_020a:  ldflda     valuetype [Engine]Engine.Color Game.BlockMeshVertex::Color
    IL_020f:  call       instance uint8 [Engine]Engine.Color::get_G()
    IL_0214:  conv.r4
    IL_0215:  ldloc.1
    IL_0216:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_021b:  mul
    IL_021c:  conv.u1
    IL_021d:  ldloca.s   V_16
    IL_021f:  ldflda     valuetype [Engine]Engine.Color Game.BlockMeshVertex::Color
    IL_0224:  call       instance uint8 [Engine]Engine.Color::get_B()
    IL_0229:  conv.r4
    IL_022a:  ldloc.1
    IL_022b:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_0230:  mul
    IL_0231:  conv.u1
    IL_0232:  call       instance void [Engine]Engine.Color::.ctor(uint8,
                                                                   uint8,
                                                                   uint8)
    IL_0237:  ldloc.s    V_10
    IL_0239:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture>::get_Array()
    IL_023e:  ldloc.s    V_12
    IL_0240:  dup
    IL_0241:  ldc.i4.1
    IL_0242:  add
    IL_0243:  stloc.s    V_12
    IL_0245:  ldloc.s    V_16
    IL_0247:  ldfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_024c:  ldloc.s    V_19
    IL_024e:  ldloc.s    V_16
    IL_0250:  ldfld      valuetype [Engine]Engine.Vector2 Game.BlockMeshVertex::TextureCoordinates
    IL_0255:  newobj     instance void [Engine]Engine.Graphics.VertexPositionColorTexture::.ctor(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Color,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_025a:  stelem     [Engine]Engine.Graphics.VertexPositionColorTexture
    IL_025f:  ldloc.s    V_15
    IL_0261:  ldc.i4.1
    IL_0262:  add
    IL_0263:  stloc.s    V_15
    IL_0265:  ldloc.s    V_15
    IL_0267:  ldloc.s    V_6
    IL_0269:  blt        IL_013a

    IL_026e:  ldloc.3
    IL_026f:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> [Engine]Engine.Graphics.BaseTexturedBatch::TriangleIndices
    IL_0274:  stloc.s    V_13
    IL_0276:  ldloc.s    V_13
    IL_0278:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_027d:  stloc.s    V_14
    IL_027f:  ldloc.s    V_13
    IL_0281:  dup
    IL_0282:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_0287:  ldloc.s    V_8
    IL_0289:  add
    IL_028a:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::set_Count(int32)
    IL_028f:  ldc.i4.0
    IL_0290:  stloc.s    V_20
    IL_0292:  br.s       IL_02b2

    IL_0294:  ldloc.s    V_13
    IL_0296:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_029b:  ldloc.s    V_14
    IL_029d:  dup
    IL_029e:  ldc.i4.1
    IL_029f:  add
    IL_02a0:  stloc.s    V_14
    IL_02a2:  ldloc.s    V_11
    IL_02a4:  ldloc.s    V_9
    IL_02a6:  ldloc.s    V_20
    IL_02a8:  ldelem.u2
    IL_02a9:  add
    IL_02aa:  conv.u2
    IL_02ab:  stelem.i2
    IL_02ac:  ldloc.s    V_20
    IL_02ae:  ldc.i4.1
    IL_02af:  add
    IL_02b0:  stloc.s    V_20
    IL_02b2:  ldloc.s    V_20
    IL_02b4:  ldloc.s    V_8
    IL_02b6:  blt.s      IL_0294

    IL_02b8:  ret
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
    IL_0001:  call       int32 Game.TerrainData::ExtractContents(int32)
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
             class Game.BlocksManager/'<>c__DisplayClass21_0' V_5,
             class Game.Block V_6,
             class [System.Collections]System.Collections.Generic.Dictionary`2<string,class [System.Reflection]System.Reflection.FieldInfo> V_7,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.FieldInfo> V_8,
             class [System.Reflection]System.Reflection.FieldInfo V_9,
             int32 V_10,
             string V_11,
             string V_12,
             class [System.Reflection]System.Reflection.FieldInfo V_13,
             object V_14,
             class Game.BlocksManager/'<>c__DisplayClass21_1' V_15,
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

    IL_006d:  newobj     instance void Game.BlocksManager/'<>c__DisplayClass21_0'::.ctor()
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
    IL_00ae:  stfld      string Game.BlocksManager/'<>c__DisplayClass21_0'::typeName
    IL_00b3:  ldloc.s    V_5
    IL_00b5:  ldfld      string Game.BlocksManager/'<>c__DisplayClass21_0'::typeName
    IL_00ba:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_00bf:  brtrue     IL_029e

    IL_00c4:  ldsfld     class Game.Block[] Game.BlocksManager::m_blocks
    IL_00c9:  ldloc.s    V_5
    IL_00cb:  ldftn      instance bool Game.BlocksManager/'<>c__DisplayClass21_0'::'<LoadBlocksData>b__0'(class Game.Block)
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
    IL_00f0:  ldfld      string Game.BlocksManager/'<>c__DisplayClass21_0'::typeName
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
    IL_011a:  ldfld      string Game.BlocksManager/'<>c__DisplayClass21_0'::typeName
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

    IL_01f1:  newobj     instance void Game.BlocksManager/'<>c__DisplayClass21_1'::.ctor()
    IL_01f6:  stloc.s    V_15
    IL_01f8:  ldloc.s    V_15
    IL_01fa:  ldloc.s    V_12
    IL_01fc:  ldc.i4.1
    IL_01fd:  callvirt   instance string [System.Runtime]System.String::Substring(int32)
    IL_0202:  stfld      string Game.BlocksManager/'<>c__DisplayClass21_1'::refTypeName
    IL_0207:  ldloc.s    V_15
    IL_0209:  ldfld      string Game.BlocksManager/'<>c__DisplayClass21_1'::refTypeName
    IL_020e:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0213:  brfalse.s  IL_0225

    IL_0215:  ldloc.s    V_6
    IL_0217:  ldfld      int32 Game.Block::BlockIndex
    IL_021c:  box        [System.Runtime]System.Int32
    IL_0221:  stloc.s    V_14
    IL_0223:  br.s       IL_0282

    IL_0225:  ldsfld     class Game.Block[] Game.BlocksManager::m_blocks
    IL_022a:  ldloc.s    V_15
    IL_022c:  ldftn      instance bool Game.BlocksManager/'<>c__DisplayClass21_1'::'<LoadBlocksData>b__1'(class Game.Block)
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
    IL_0251:  ldfld      string Game.BlocksManager/'<>c__DisplayClass21_1'::refTypeName
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
    // 代码大小       60 (0x3c)
    .maxstack  8
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<string>::.ctor()
    IL_0005:  stsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksManager::m_categories
    IL_000a:  newobj     instance void Game.DrawBlockEnvironmentData::.ctor()
    IL_000f:  stsfld     class Game.DrawBlockEnvironmentData Game.BlocksManager::m_defaultEnvironmentData
    IL_0014:  newobj     instance void [Engine]Engine.Graphics.RasterizerState::.ctor()
    IL_0019:  dup
    IL_001a:  ldc.i4.2
    IL_001b:  callvirt   instance void [Engine]Engine.Graphics.RasterizerState::set_CullMode(valuetype [Engine]Engine.Graphics.CullMode)
    IL_0020:  dup
    IL_0021:  ldc.i4.1
    IL_0022:  callvirt   instance void [Engine]Engine.Graphics.RasterizerState::set_ScissorTestEnable(bool)
    IL_0027:  stsfld     class [Engine]Engine.Graphics.RasterizerState Game.BlocksManager::m_rasterizerState
    IL_002c:  ldc.i4     0x100
    IL_0031:  newarr     [Engine]Engine.Vector4
    IL_0036:  stsfld     valuetype [Engine]Engine.Vector4[] Game.BlocksManager::m_slotTexCoords
    IL_003b:  ret
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