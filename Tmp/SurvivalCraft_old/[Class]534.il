.class public auto ansi beforefieldinit Game.SubsystemBlockBehaviors
       extends [EntitySystem]GameEntitySystem.Subsystem
{
  .field private class Game.SubsystemBlockBehavior[][] m_blockBehaviorsByContents
  .field private class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemBlockBehavior> m_blockBehaviors
  .method public hidebysig specialname instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.SubsystemBlockBehavior> 
          get_BlockBehaviors() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemBlockBehavior> Game.SubsystemBlockBehaviors::m_blockBehaviors
    IL_0006:  newobj     instance void valuetype [Engine]Engine.ReadOnlyList`1<class Game.SubsystemBlockBehavior>::.ctor(class [System.Collections]System.Collections.Generic.List`1<!0>)
    IL_000b:  ret
  } // end of method SubsystemBlockBehaviors::get_BlockBehaviors

  .method public hidebysig instance class Game.SubsystemBlockBehavior[] 
          GetBlockBehaviors(int32 contents) cil managed
  {
    // 代码大小       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemBlockBehavior[][] Game.SubsystemBlockBehaviors::m_blockBehaviorsByContents
    IL_0006:  ldarg.1
    IL_0007:  ldelem.ref
    IL_0008:  ret
  } // end of method SubsystemBlockBehaviors::GetBlockBehaviors

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       295 (0x127)
    .maxstack  5
    .locals init (class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemBlockBehavior>> V_0,
             int32 V_1,
             string[] V_2,
             int32 V_3,
             string V_4,
             class Game.SubsystemBlockBehavior V_5,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.SubsystemBlockBehavior> V_6,
             class Game.SubsystemBlockBehavior V_7,
             int32[] V_8,
             int32 V_9,
             int32 V_10)
    IL_0000:  ldarg.0
    IL_0001:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0006:  ldlen
    IL_0007:  conv.i4
    IL_0008:  newarr     class Game.SubsystemBlockBehavior[]
    IL_000d:  stfld      class Game.SubsystemBlockBehavior[][] Game.SubsystemBlockBehaviors::m_blockBehaviorsByContents
    IL_0012:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemBlockBehavior>>::.ctor()
    IL_0017:  stloc.0
    IL_0018:  ldc.i4.0
    IL_0019:  stloc.1
    IL_001a:  br.s       IL_0080

    IL_001c:  ldloc.0
    IL_001d:  ldloc.1
    IL_001e:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemBlockBehavior>::.ctor()
    IL_0023:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemBlockBehavior>>::set_Item(!0,
                                                                                                                                                                                                                         !1)
    IL_0028:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_002d:  ldloc.1
    IL_002e:  ldelem.ref
    IL_002f:  ldfld      string Game.Block::Behaviors
    IL_0034:  ldc.i4.1
    IL_0035:  newarr     [System.Runtime]System.Char
    IL_003a:  dup
    IL_003b:  ldc.i4.0
    IL_003c:  ldc.i4.s   44
    IL_003e:  stelem.i2
    IL_003f:  ldc.i4.1
    IL_0040:  callvirt   instance string[] [System.Runtime]System.String::Split(char[],
                                                                                valuetype [System.Runtime]System.StringSplitOptions)
    IL_0045:  stloc.2
    IL_0046:  ldc.i4.0
    IL_0047:  stloc.3
    IL_0048:  br.s       IL_0076

    IL_004a:  ldloc.2
    IL_004b:  ldloc.3
    IL_004c:  ldelem.ref
    IL_004d:  stloc.s    V_4
    IL_004f:  ldarg.0
    IL_0050:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0055:  ldloc.s    V_4
    IL_0057:  callvirt   instance string [System.Runtime]System.String::Trim()
    IL_005c:  ldc.i4.1
    IL_005d:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemBlockBehavior>(string,
                                                                                                                               bool)
    IL_0062:  stloc.s    V_5
    IL_0064:  ldloc.0
    IL_0065:  ldloc.1
    IL_0066:  callvirt   instance !1 class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemBlockBehavior>>::get_Item(!0)
    IL_006b:  ldloc.s    V_5
    IL_006d:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemBlockBehavior>::Add(!0)
    IL_0072:  ldloc.3
    IL_0073:  ldc.i4.1
    IL_0074:  add
    IL_0075:  stloc.3
    IL_0076:  ldloc.3
    IL_0077:  ldloc.2
    IL_0078:  ldlen
    IL_0079:  conv.i4
    IL_007a:  blt.s      IL_004a

    IL_007c:  ldloc.1
    IL_007d:  ldc.i4.1
    IL_007e:  add
    IL_007f:  stloc.1
    IL_0080:  ldloc.1
    IL_0081:  ldarg.0
    IL_0082:  ldfld      class Game.SubsystemBlockBehavior[][] Game.SubsystemBlockBehaviors::m_blockBehaviorsByContents
    IL_0087:  ldlen
    IL_0088:  conv.i4
    IL_0089:  blt.s      IL_001c

    IL_008b:  ldarg.0
    IL_008c:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0091:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [EntitySystem]GameEntitySystem.Project::FindSubsystems<class Game.SubsystemBlockBehavior>()
    IL_0096:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.SubsystemBlockBehavior>::GetEnumerator()
    IL_009b:  stloc.s    V_6
    .try
    {
      IL_009d:  br.s       IL_00e2

      IL_009f:  ldloc.s    V_6
      IL_00a1:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.SubsystemBlockBehavior>::get_Current()
      IL_00a6:  stloc.s    V_7
      IL_00a8:  ldarg.0
      IL_00a9:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemBlockBehavior> Game.SubsystemBlockBehaviors::m_blockBehaviors
      IL_00ae:  ldloc.s    V_7
      IL_00b0:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemBlockBehavior>::Add(!0)
      IL_00b5:  ldloc.s    V_7
      IL_00b7:  callvirt   instance int32[] Game.SubsystemBlockBehavior::get_HandledBlocks()
      IL_00bc:  stloc.s    V_8
      IL_00be:  ldc.i4.0
      IL_00bf:  stloc.3
      IL_00c0:  br.s       IL_00db

      IL_00c2:  ldloc.s    V_8
      IL_00c4:  ldloc.3
      IL_00c5:  ldelem.i4
      IL_00c6:  stloc.s    V_9
      IL_00c8:  ldloc.0
      IL_00c9:  ldloc.s    V_9
      IL_00cb:  callvirt   instance !1 class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemBlockBehavior>>::get_Item(!0)
      IL_00d0:  ldloc.s    V_7
      IL_00d2:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemBlockBehavior>::Add(!0)
      IL_00d7:  ldloc.3
      IL_00d8:  ldc.i4.1
      IL_00d9:  add
      IL_00da:  stloc.3
      IL_00db:  ldloc.3
      IL_00dc:  ldloc.s    V_8
      IL_00de:  ldlen
      IL_00df:  conv.i4
      IL_00e0:  blt.s      IL_00c2

      IL_00e2:  ldloc.s    V_6
      IL_00e4:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_00e9:  brtrue.s   IL_009f

      IL_00eb:  leave.s    IL_00f9

    }  // end .try
    finally
    {
      IL_00ed:  ldloc.s    V_6
      IL_00ef:  brfalse.s  IL_00f8

      IL_00f1:  ldloc.s    V_6
      IL_00f3:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00f8:  endfinally
    }  // end handler
    IL_00f9:  ldc.i4.0
    IL_00fa:  stloc.s    V_10
    IL_00fc:  br.s       IL_011a

    IL_00fe:  ldarg.0
    IL_00ff:  ldfld      class Game.SubsystemBlockBehavior[][] Game.SubsystemBlockBehaviors::m_blockBehaviorsByContents
    IL_0104:  ldloc.s    V_10
    IL_0106:  ldloc.0
    IL_0107:  ldloc.s    V_10
    IL_0109:  callvirt   instance !1 class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemBlockBehavior>>::get_Item(!0)
    IL_010e:  callvirt   instance !0[] class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemBlockBehavior>::ToArray()
    IL_0113:  stelem.ref
    IL_0114:  ldloc.s    V_10
    IL_0116:  ldc.i4.1
    IL_0117:  add
    IL_0118:  stloc.s    V_10
    IL_011a:  ldloc.s    V_10
    IL_011c:  ldarg.0
    IL_011d:  ldfld      class Game.SubsystemBlockBehavior[][] Game.SubsystemBlockBehaviors::m_blockBehaviorsByContents
    IL_0122:  ldlen
    IL_0123:  conv.i4
    IL_0124:  blt.s      IL_00fe

    IL_0126:  ret
  } // end of method SubsystemBlockBehaviors::Load

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemBlockBehavior>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemBlockBehavior> Game.SubsystemBlockBehaviors::m_blockBehaviors
    IL_000b:  ldarg.0
    IL_000c:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_0011:  ret
  } // end of method SubsystemBlockBehaviors::.ctor

  .property instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.SubsystemBlockBehavior>
          BlockBehaviors()
  {
    .get instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.SubsystemBlockBehavior> Game.SubsystemBlockBehaviors::get_BlockBehaviors()
  } // end of property SubsystemBlockBehaviors::BlockBehaviors
} // end of class Game.SubsystemBlockBehaviors