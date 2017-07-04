.class public abstract auto ansi sealed beforefieldinit Game.StringsManager
       extends [System.Runtime]System.Object
{
  .field private static class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> m_strings
  .method public hidebysig static string 
          GetString(string name) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  3
    .locals init (string V_0)
    IL_0000:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> Game.StringsManager::m_strings
    IL_0005:  ldarg.0
    IL_0006:  ldloca.s   V_0
    IL_0008:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::TryGetValue(!0,
                                                                                                                                     !1&)
    IL_000d:  brtrue.s   IL_0015

    IL_000f:  ldstr      "<Plchldr>"
    IL_0014:  ret

    IL_0015:  ldloc.0
    IL_0016:  ret
  } // end of method StringsManager::GetString

  .method public hidebysig static void  LoadStrings() cil managed
  {
    // 代码大小       97 (0x61)
    .maxstack  3
    .locals init (class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> V_0,
             string V_1,
             string V_2)
    IL_0000:  ldstr      "Strings"
    IL_0005:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_000a:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements()
    IL_000f:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
    IL_0014:  stloc.0
    .try
    {
      IL_0015:  br.s       IL_004c

      IL_0017:  ldloc.0
      IL_0018:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
      IL_001d:  dup
      IL_001e:  ldstr      "Name"
      IL_0023:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                              string)
      IL_0028:  stloc.1
      IL_0029:  callvirt   instance string [System.Xml.XDocument]System.Xml.Linq.XElement::get_Value()
      IL_002e:  stloc.2
      IL_002f:  ldloc.2
      IL_0030:  ldstr      "\\n"
      IL_0035:  ldstr      "\n"
      IL_003a:  callvirt   instance string [System.Runtime]System.String::Replace(string,
                                                                                  string)
      IL_003f:  stloc.2
      IL_0040:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> Game.StringsManager::m_strings
      IL_0045:  ldloc.1
      IL_0046:  ldloc.2
      IL_0047:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_004c:  ldloc.0
      IL_004d:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0052:  brtrue.s   IL_0017

      IL_0054:  leave.s    IL_0060

    }  // end .try
    finally
    {
      IL_0056:  ldloc.0
      IL_0057:  brfalse.s  IL_005f

      IL_0059:  ldloc.0
      IL_005a:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_005f:  endfinally
    }  // end handler
    IL_0060:  ret
  } // end of method StringsManager::LoadStrings

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::.ctor()
    IL_0005:  stsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> Game.StringsManager::m_strings
    IL_000a:  ret
  } // end of method StringsManager::.cctor

} // end of class Game.StringsManager