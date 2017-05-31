.class public abstract auto ansi sealed beforefieldinit Game.EnumUtils
       extends [System.Runtime]System.Object
{
  .class sequential ansi sealed nested private beforefieldinit NamesValues
         extends [System.Runtime]System.ValueType
  {
    .field public valuetype [Engine]Engine.ReadOnlyList`1<string> Names
    .field public valuetype [Engine]Engine.ReadOnlyList`1<int32> Values
  } // end of class NamesValues

  .class abstract auto ansi sealed nested private beforefieldinit Cache
         extends [System.Runtime]System.Object
  {
    .field private static class [System.Collections]System.Collections.Generic.Dictionary`2<class [System.Runtime]System.Type,valuetype Game.EnumUtils/NamesValues> m_namesValuesByType
    .method public hidebysig static valuetype Game.EnumUtils/NamesValues 
            Query(class [System.Runtime]System.Type 'type') cil managed
    {
      // 代码大小       120 (0x78)
      .maxstack  3
      .locals init (class [System.Collections]System.Collections.Generic.Dictionary`2<class [System.Runtime]System.Type,valuetype Game.EnumUtils/NamesValues> V_0,
               bool V_1,
               valuetype Game.EnumUtils/NamesValues V_2,
               valuetype Game.EnumUtils/NamesValues V_3)
      IL_0000:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<class [System.Runtime]System.Type,valuetype Game.EnumUtils/NamesValues> Game.EnumUtils/Cache::m_namesValuesByType
      IL_0005:  stloc.0
      IL_0006:  ldc.i4.0
      IL_0007:  stloc.1
      .try
      {
        IL_0008:  ldloc.0
        IL_0009:  ldloca.s   V_1
        IL_000b:  call       void [System.Threading]System.Threading.Monitor::Enter(object,
                                                                                    bool&)
        IL_0010:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<class [System.Runtime]System.Type,valuetype Game.EnumUtils/NamesValues> Game.EnumUtils/Cache::m_namesValuesByType
        IL_0015:  ldarg.0
        IL_0016:  ldloca.s   V_2
        IL_0018:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<class [System.Runtime]System.Type,valuetype Game.EnumUtils/NamesValues>::TryGetValue(!0,
                                                                                                                                                                                                  !1&)
        IL_001d:  brtrue.s   IL_0068

        IL_001f:  ldloca.s   V_3
        IL_0021:  initobj    Game.EnumUtils/NamesValues
        IL_0027:  ldloca.s   V_3
        IL_0029:  ldarg.0
        IL_002a:  call       string[] [System.Runtime]System.Enum::GetNames(class [System.Runtime]System.Type)
        IL_002f:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<string>::.ctor(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!0>)
        IL_0034:  newobj     instance void valuetype [Engine]Engine.ReadOnlyList`1<string>::.ctor(class [System.Collections]System.Collections.Generic.List`1<!0>)
        IL_0039:  stfld      valuetype [Engine]Engine.ReadOnlyList`1<string> Game.EnumUtils/NamesValues::Names
        IL_003e:  ldloca.s   V_3
        IL_0040:  ldarg.0
        IL_0041:  call       class [System.Runtime]System.Array [System.Runtime]System.Enum::GetValues(class [System.Runtime]System.Type)
        IL_0046:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Cast<int32>(class [System.Runtime]System.Collections.IEnumerable)
        IL_004b:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<int32>::.ctor(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!0>)
        IL_0050:  newobj     instance void valuetype [Engine]Engine.ReadOnlyList`1<int32>::.ctor(class [System.Collections]System.Collections.Generic.List`1<!0>)
        IL_0055:  stfld      valuetype [Engine]Engine.ReadOnlyList`1<int32> Game.EnumUtils/NamesValues::Values
        IL_005a:  ldloc.3
        IL_005b:  stloc.2
        IL_005c:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<class [System.Runtime]System.Type,valuetype Game.EnumUtils/NamesValues> Game.EnumUtils/Cache::m_namesValuesByType
        IL_0061:  ldarg.0
        IL_0062:  ldloc.2
        IL_0063:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class [System.Runtime]System.Type,valuetype Game.EnumUtils/NamesValues>::Add(!0,
                                                                                                                                                                                          !1)
        IL_0068:  ldloc.2
        IL_0069:  stloc.3
        IL_006a:  leave.s    IL_0076

      }  // end .try
      finally
      {
        IL_006c:  ldloc.1
        IL_006d:  brfalse.s  IL_0075

        IL_006f:  ldloc.0
        IL_0070:  call       void [System.Threading]System.Threading.Monitor::Exit(object)
        IL_0075:  endfinally
      }  // end handler
      IL_0076:  ldloc.3
      IL_0077:  ret
    } // end of method Cache::Query

    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class [System.Runtime]System.Type,valuetype Game.EnumUtils/NamesValues>::.ctor()
      IL_0005:  stsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<class [System.Runtime]System.Type,valuetype Game.EnumUtils/NamesValues> Game.EnumUtils/Cache::m_namesValuesByType
      IL_000a:  ret
    } // end of method Cache::.cctor

  } // end of class Cache

  .method public hidebysig static string 
          GetEnumName(class [System.Runtime]System.Type 'type',
                      int32 'value') cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       class [System.Runtime]System.Collections.Generic.IList`1<int32> Game.EnumUtils::GetEnumValues(class [System.Runtime]System.Type)
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.IList`1<int32>::IndexOf(!0)
    IL_000c:  stloc.0
    IL_000d:  ldloc.0
    IL_000e:  ldc.i4.0
    IL_000f:  blt.s      IL_001e

    IL_0011:  ldarg.0
    IL_0012:  call       class [System.Runtime]System.Collections.Generic.IList`1<string> Game.EnumUtils::GetEnumNames(class [System.Runtime]System.Type)
    IL_0017:  ldloc.0
    IL_0018:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IList`1<string>::get_Item(int32)
    IL_001d:  ret

    IL_001e:  ldstr      "<invalid enum>"
    IL_0023:  ret
  } // end of method EnumUtils::GetEnumName

  .method public hidebysig static class [System.Runtime]System.Collections.Generic.IList`1<string> 
          GetEnumNames(class [System.Runtime]System.Type 'type') cil managed
  {
    // 代码大小       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       valuetype Game.EnumUtils/NamesValues Game.EnumUtils/Cache::Query(class [System.Runtime]System.Type)
    IL_0006:  ldfld      valuetype [Engine]Engine.ReadOnlyList`1<string> Game.EnumUtils/NamesValues::Names
    IL_000b:  box        valuetype [Engine]Engine.ReadOnlyList`1<string>
    IL_0010:  ret
  } // end of method EnumUtils::GetEnumNames

  .method public hidebysig static class [System.Runtime]System.Collections.Generic.IList`1<int32> 
          GetEnumValues(class [System.Runtime]System.Type 'type') cil managed
  {
    // 代码大小       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       valuetype Game.EnumUtils/NamesValues Game.EnumUtils/Cache::Query(class [System.Runtime]System.Type)
    IL_0006:  ldfld      valuetype [Engine]Engine.ReadOnlyList`1<int32> Game.EnumUtils/NamesValues::Values
    IL_000b:  box        valuetype [Engine]Engine.ReadOnlyList`1<int32>
    IL_0010:  ret
  } // end of method EnumUtils::GetEnumValues

} // end of class Game.EnumUtils