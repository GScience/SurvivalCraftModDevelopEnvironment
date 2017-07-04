.class public auto ansi beforefieldinit Game.SubsystemPlayerStats
       extends [EntitySystem]GameEntitySystem.Subsystem
{
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.PlayerStats> m_playerStats
  .method public hidebysig instance class Game.PlayerStats 
          GetPlayerStats(int32 playerIndex) cil managed
  {
    // 代码大小       37 (0x25)
    .maxstack  3
    .locals init (class Game.PlayerStats V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.PlayerStats> Game.SubsystemPlayerStats::m_playerStats
    IL_0006:  ldarg.1
    IL_0007:  ldloca.s   V_0
    IL_0009:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.PlayerStats>::TryGetValue(!0,
                                                                                                                                                    !1&)
    IL_000e:  brtrue.s   IL_0023

    IL_0010:  newobj     instance void Game.PlayerStats::.ctor()
    IL_0015:  stloc.0
    IL_0016:  ldarg.0
    IL_0017:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.PlayerStats> Game.SubsystemPlayerStats::m_playerStats
    IL_001c:  ldarg.1
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.PlayerStats>::Add(!0,
                                                                                                                                            !1)
    IL_0023:  ldloc.0
    IL_0024:  ret
  } // end of method SubsystemPlayerStats::GetPlayerStats

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       100 (0x64)
    .maxstack  3
    .locals init (class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>> V_0,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object> V_1,
             class Game.PlayerStats V_2)
    IL_0000:  ldarg.1
    IL_0001:  ldstr      "Stats"
    IL_0006:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string)
    IL_000b:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>> [EntitySystem]TemplatesDatabase.ValuesDictionary::GetEnumerator()
    IL_0010:  stloc.0
    .try
    {
      IL_0011:  br.s       IL_004f

      IL_0013:  ldloc.0
      IL_0014:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>>::get_Current()
      IL_0019:  stloc.1
      IL_001a:  newobj     instance void Game.PlayerStats::.ctor()
      IL_001f:  stloc.2
      IL_0020:  ldloc.2
      IL_0021:  ldloca.s   V_1
      IL_0023:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>::get_Value()
      IL_0028:  castclass  [EntitySystem]TemplatesDatabase.ValuesDictionary
      IL_002d:  callvirt   instance void Game.PlayerStats::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
      IL_0032:  ldarg.0
      IL_0033:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.PlayerStats> Game.SubsystemPlayerStats::m_playerStats
      IL_0038:  ldloca.s   V_1
      IL_003a:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>::get_Key()
      IL_003f:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
      IL_0044:  call       int32 [System.Runtime]System.Int32::Parse(string,
                                                                     class [System.Runtime]System.IFormatProvider)
      IL_0049:  ldloc.2
      IL_004a:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.PlayerStats>::Add(!0,
                                                                                                                                              !1)
      IL_004f:  ldloc.0
      IL_0050:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0055:  brtrue.s   IL_0013

      IL_0057:  leave.s    IL_0063

    }  // end .try
    finally
    {
      IL_0059:  ldloc.0
      IL_005a:  brfalse.s  IL_0062

      IL_005c:  ldloc.0
      IL_005d:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0062:  endfinally
    }  // end handler
    IL_0063:  ret
  } // end of method SubsystemPlayerStats::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       113 (0x71)
    .maxstack  3
    .locals init (class [EntitySystem]TemplatesDatabase.ValuesDictionary V_0,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<int32,class Game.PlayerStats> V_1,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,class Game.PlayerStats> V_2,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_3,
             int32 V_4)
    IL_0000:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldarg.1
    IL_0007:  ldstr      "Stats"
    IL_000c:  ldloc.0
    IL_000d:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string,
                                                                                                                                                          !!0)
    IL_0012:  ldarg.0
    IL_0013:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.PlayerStats> Game.SubsystemPlayerStats::m_playerStats
    IL_0018:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.PlayerStats>::GetEnumerator()
    IL_001d:  stloc.1
    .try
    {
      IL_001e:  br.s       IL_0057

      IL_0020:  ldloca.s   V_1
      IL_0022:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<int32,class Game.PlayerStats>::get_Current()
      IL_0027:  stloc.2
      IL_0028:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
      IL_002d:  stloc.3
      IL_002e:  ldloc.0
      IL_002f:  ldloca.s   V_2
      IL_0031:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,class Game.PlayerStats>::get_Key()
      IL_0036:  stloc.s    V_4
      IL_0038:  ldloca.s   V_4
      IL_003a:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
      IL_003f:  call       instance string [System.Runtime]System.Int32::ToString(class [System.Runtime]System.IFormatProvider)
      IL_0044:  ldloc.3
      IL_0045:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string,
                                                                                                                                                            !!0)
      IL_004a:  ldloca.s   V_2
      IL_004c:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,class Game.PlayerStats>::get_Value()
      IL_0051:  ldloc.3
      IL_0052:  callvirt   instance void Game.PlayerStats::Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
      IL_0057:  ldloca.s   V_1
      IL_0059:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<int32,class Game.PlayerStats>::MoveNext()
      IL_005e:  brtrue.s   IL_0020

      IL_0060:  leave.s    IL_0070

    }  // end .try
    finally
    {
      IL_0062:  ldloca.s   V_1
      IL_0064:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<int32,class Game.PlayerStats>
      IL_006a:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_006f:  endfinally
    }  // end handler
    IL_0070:  ret
  } // end of method SubsystemPlayerStats::Save

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.PlayerStats>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.PlayerStats> Game.SubsystemPlayerStats::m_playerStats
    IL_000b:  ldarg.0
    IL_000c:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_0011:  ret
  } // end of method SubsystemPlayerStats::.ctor

} // end of class Game.SubsystemPlayerStats