.class public abstract auto ansi sealed beforefieldinit Game.CommunityContentManager
       extends [System.Runtime]System.Object
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.CommunityContentManager/'<>c' '<>9'
    .field public static class [System.Runtime]System.Action`1<string> '<>9__4_0'
    .field public static class [System.Runtime]System.Action`1<string> '<>9__4_1'
    .field public static class [System.Runtime]System.Action`1<string> '<>9__4_2'
    .field public static class [System.Runtime]System.Action`1<string> '<>9__4_3'
    .field public static class [System.Runtime]System.Action '<>9__4_4'
    .field public static class [System.Runtime]System.Action '<>9__8_2'
    .field public static class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> '<>9__8_3'
    .field public static class [System.Runtime]System.Action '<>9__8_5'
    .field public static class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> '<>9__8_6'
    .field public static class [System.Runtime]System.Action '<>9__8_8'
    .field public static class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> '<>9__8_9'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.CommunityContentManager/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.CommunityContentManager/'<>c' Game.CommunityContentManager/'<>c'::'<>9'
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
            '<Initialize>b__4_0'(string path) cil managed
    {
      // 代码大小       19 (0x13)
      .maxstack  8
      IL_0000:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> Game.CommunityContentManager::m_idToAddressMap
      IL_0005:  ldc.i4.2
      IL_0006:  ldarg.1
      IL_0007:  call       string Game.CommunityContentManager::MakeContentIdString(valuetype Game.ExternalContentType,
                                                                                    string)
      IL_000c:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Remove(!0)
      IL_0011:  pop
      IL_0012:  ret
    } // end of method '<>c'::'<Initialize>b__4_0'

    .method assembly hidebysig instance void 
            '<Initialize>b__4_1'(string path) cil managed
    {
      // 代码大小       19 (0x13)
      .maxstack  8
      IL_0000:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> Game.CommunityContentManager::m_idToAddressMap
      IL_0005:  ldc.i4.3
      IL_0006:  ldarg.1
      IL_0007:  call       string Game.CommunityContentManager::MakeContentIdString(valuetype Game.ExternalContentType,
                                                                                    string)
      IL_000c:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Remove(!0)
      IL_0011:  pop
      IL_0012:  ret
    } // end of method '<>c'::'<Initialize>b__4_1'

    .method assembly hidebysig instance void 
            '<Initialize>b__4_2'(string path) cil managed
    {
      // 代码大小       19 (0x13)
      .maxstack  8
      IL_0000:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> Game.CommunityContentManager::m_idToAddressMap
      IL_0005:  ldc.i4.4
      IL_0006:  ldarg.1
      IL_0007:  call       string Game.CommunityContentManager::MakeContentIdString(valuetype Game.ExternalContentType,
                                                                                    string)
      IL_000c:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Remove(!0)
      IL_0011:  pop
      IL_0012:  ret
    } // end of method '<>c'::'<Initialize>b__4_2'

    .method assembly hidebysig instance void 
            '<Initialize>b__4_3'(string path) cil managed
    {
      // 代码大小       19 (0x13)
      .maxstack  8
      IL_0000:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> Game.CommunityContentManager::m_idToAddressMap
      IL_0005:  ldc.i4.5
      IL_0006:  ldarg.1
      IL_0007:  call       string Game.CommunityContentManager::MakeContentIdString(valuetype Game.ExternalContentType,
                                                                                    string)
      IL_000c:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Remove(!0)
      IL_0011:  pop
      IL_0012:  ret
    } // end of method '<>c'::'<Initialize>b__4_3'

    .method assembly hidebysig instance void 
            '<Initialize>b__4_4'() cil managed
    {
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  call       void Game.CommunityContentManager::Save()
      IL_0005:  ret
    } // end of method '<>c'::'<Initialize>b__4_4'

    .method assembly hidebysig instance void 
            '<Download>b__8_2'() cil managed
    {
      // 代码大小       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method '<>c'::'<Download>b__8_2'

    .method assembly hidebysig instance void 
            '<Download>b__8_3'(class [System.Runtime]System.Exception '<obj>') cil managed
    {
      // 代码大小       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method '<>c'::'<Download>b__8_3'

    .method assembly hidebysig instance void 
            '<Download>b__8_5'() cil managed
    {
      // 代码大小       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method '<>c'::'<Download>b__8_5'

    .method assembly hidebysig instance void 
            '<Download>b__8_6'(class [System.Runtime]System.Exception '<obj>') cil managed
    {
      // 代码大小       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method '<>c'::'<Download>b__8_6'

    .method assembly hidebysig instance void 
            '<Download>b__8_8'() cil managed
    {
      // 代码大小       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method '<>c'::'<Download>b__8_8'

    .method assembly hidebysig instance void 
            '<Download>b__8_9'(class [System.Runtime]System.Exception '<obj>') cil managed
    {
      // 代码大小       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method '<>c'::'<Download>b__8_9'

  } // end of class '<>c'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass7_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class [System.Runtime]System.Action`2<class [System.Collections]System.Collections.Generic.List`1<class Game.CommunityContentEntry>,string> success
    .field public class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> failure
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass7_0'::.ctor

    .method assembly hidebysig instance void 
            '<List>b__0'(uint8[] result) cil managed
    {
      // 代码大小       264 (0x108)
      .maxstack  6
      .locals init (string V_0,
               class [System.Collections]System.Collections.Generic.List`1<class Game.CommunityContentEntry> V_1,
               class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> V_2,
               class [System.Xml.XDocument]System.Xml.Linq.XElement V_3,
               class [System.Runtime]System.Exception V_4)
      .try
      {
        IL_0000:  call       class [System.Text.Encoding]System.Text.Encoding [System.Text.Encoding]System.Text.Encoding::get_UTF8()
        IL_0005:  ldarg.1
        IL_0006:  ldc.i4.0
        IL_0007:  ldarg.1
        IL_0008:  ldlen
        IL_0009:  conv.i4
        IL_000a:  callvirt   instance string [System.Text.Encoding]System.Text.Encoding::GetString(uint8[],
                                                                                                   int32,
                                                                                                   int32)
        IL_000f:  ldc.i4.1
        IL_0010:  call       class [System.Xml.XDocument]System.Xml.Linq.XElement [EntitySystem]XmlUtilities.XmlUtils::LoadXmlFromString(string,
                                                                                                                                         bool)
        IL_0015:  dup
        IL_0016:  ldstr      "NextCursor"
        IL_001b:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                                string)
        IL_0020:  stloc.0
        IL_0021:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.CommunityContentEntry>::.ctor()
        IL_0026:  stloc.1
        IL_0027:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements()
        IL_002c:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
        IL_0031:  stloc.2
        .try
        {
          IL_0032:  br         IL_00d0

          IL_0037:  ldloc.2
          IL_0038:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
          IL_003d:  stloc.3
          .try
          {
            IL_003e:  ldloc.1
            IL_003f:  newobj     instance void Game.CommunityContentEntry::.ctor()
            IL_0044:  dup
            IL_0045:  ldloc.3
            IL_0046:  ldstr      "Type"
            IL_004b:  ldc.i4.0
            IL_004c:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<valuetype Game.ExternalContentType>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                                                                string,
                                                                                                                                !!0)
            IL_0051:  stfld      valuetype Game.ExternalContentType Game.CommunityContentEntry::Type
            IL_0056:  dup
            IL_0057:  ldloc.3
            IL_0058:  ldstr      "Name"
            IL_005d:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                                    string)
            IL_0062:  stfld      string Game.CommunityContentEntry::Name
            IL_0067:  dup
            IL_0068:  ldloc.3
            IL_0069:  ldstr      "Url"
            IL_006e:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                                    string)
            IL_0073:  stfld      string Game.CommunityContentEntry::Address
            IL_0078:  dup
            IL_0079:  ldloc.3
            IL_007a:  ldstr      "UserId"
            IL_007f:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                                    string)
            IL_0084:  stfld      string Game.CommunityContentEntry::UserId
            IL_0089:  dup
            IL_008a:  ldloc.3
            IL_008b:  ldstr      "Size"
            IL_0090:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<int64>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                                   string)
            IL_0095:  stfld      int64 Game.CommunityContentEntry::Size
            IL_009a:  dup
            IL_009b:  ldloc.3
            IL_009c:  ldstr      "ExtraText"
            IL_00a1:  ldsfld     string [System.Runtime]System.String::Empty
            IL_00a6:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                                    string,
                                                                                                    !!0)
            IL_00ab:  stfld      string Game.CommunityContentEntry::ExtraText
            IL_00b0:  dup
            IL_00b1:  ldloc.3
            IL_00b2:  ldstr      "RatingsAverage"
            IL_00b7:  ldc.r4     0.0
            IL_00bc:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<float32>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                                     string,
                                                                                                     !!0)
            IL_00c1:  stfld      float32 Game.CommunityContentEntry::RatingsAverage
            IL_00c6:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.CommunityContentEntry>::Add(!0)
            IL_00cb:  leave.s    IL_00d0

          }  // end .try
          catch [System.Runtime]System.Exception 
          {
            IL_00cd:  pop
            IL_00ce:  leave.s    IL_00d0

          }  // end handler
          IL_00d0:  ldloc.2
          IL_00d1:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
          IL_00d6:  brtrue     IL_0037

          IL_00db:  leave.s    IL_00e7

        }  // end .try
        finally
        {
          IL_00dd:  ldloc.2
          IL_00de:  brfalse.s  IL_00e6

          IL_00e0:  ldloc.2
          IL_00e1:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
          IL_00e6:  endfinally
        }  // end handler
        IL_00e7:  ldarg.0
        IL_00e8:  ldfld      class [System.Runtime]System.Action`2<class [System.Collections]System.Collections.Generic.List`1<class Game.CommunityContentEntry>,string> Game.CommunityContentManager/'<>c__DisplayClass7_0'::success
        IL_00ed:  ldloc.1
        IL_00ee:  ldloc.0
        IL_00ef:  callvirt   instance void class [System.Runtime]System.Action`2<class [System.Collections]System.Collections.Generic.List`1<class Game.CommunityContentEntry>,string>::Invoke(!0,
                                                                                                                                                                                               !1)
        IL_00f4:  leave.s    IL_0107

      }  // end .try
      catch [System.Runtime]System.Exception 
      {
        IL_00f6:  stloc.s    V_4
        IL_00f8:  ldarg.0
        IL_00f9:  ldfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.CommunityContentManager/'<>c__DisplayClass7_0'::failure
        IL_00fe:  ldloc.s    V_4
        IL_0100:  callvirt   instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::Invoke(!0)
        IL_0105:  leave.s    IL_0107

      }  // end handler
      IL_0107:  ret
    } // end of method '<>c__DisplayClass7_0'::'<List>b__0'

    .method assembly hidebysig instance void 
            '<List>b__1'(class [System.Runtime]System.Exception 'error') cil managed
    {
      // 代码大小       13 (0xd)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.CommunityContentManager/'<>c__DisplayClass7_0'::failure
      IL_0006:  ldarg.1
      IL_0007:  callvirt   instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::Invoke(!0)
      IL_000c:  ret
    } // end of method '<>c__DisplayClass7_0'::'<List>b__1'

  } // end of class '<>c__DisplayClass7_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass8_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public valuetype Game.ExternalContentType 'type'
    .field public string name
    .field public string address
    .field public string userId
    .field public class Game.CancellableProgress progress
    .field public class [System.Runtime]System.Action success
    .field public class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> failure
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass8_0'::.ctor

    .method assembly hidebysig instance void 
            '<Download>b__0'(uint8[] data) cil managed
    {
      // 代码大小       90 (0x5a)
      .maxstack  6
      .locals init (class Game.CommunityContentManager/'<>c__DisplayClass8_1' V_0)
      IL_0000:  newobj     instance void Game.CommunityContentManager/'<>c__DisplayClass8_1'::.ctor()
      IL_0005:  stloc.0
      IL_0006:  ldloc.0
      IL_0007:  ldarg.0
      IL_0008:  stfld      class Game.CommunityContentManager/'<>c__DisplayClass8_0' Game.CommunityContentManager/'<>c__DisplayClass8_1'::'CS$<>8__locals1'
      IL_000d:  ldloc.0
      IL_000e:  ldarg.1
      IL_000f:  stfld      uint8[] Game.CommunityContentManager/'<>c__DisplayClass8_1'::data
      IL_0014:  ldloc.0
      IL_0015:  ldloc.0
      IL_0016:  ldfld      uint8[] Game.CommunityContentManager/'<>c__DisplayClass8_1'::data
      IL_001b:  call       string Game.CommunityContentManager::CalculateContentHashString(uint8[])
      IL_0020:  stfld      string Game.CommunityContentManager/'<>c__DisplayClass8_1'::hash
      IL_0025:  ldloc.0
      IL_0026:  ldfld      uint8[] Game.CommunityContentManager/'<>c__DisplayClass8_1'::data
      IL_002b:  newobj     instance void [System.IO]System.IO.MemoryStream::.ctor(uint8[])
      IL_0030:  ldarg.0
      IL_0031:  ldfld      valuetype Game.ExternalContentType Game.CommunityContentManager/'<>c__DisplayClass8_0'::'type'
      IL_0036:  ldarg.0
      IL_0037:  ldfld      string Game.CommunityContentManager/'<>c__DisplayClass8_0'::name
      IL_003c:  ldloc.0
      IL_003d:  ldftn      instance void Game.CommunityContentManager/'<>c__DisplayClass8_1'::'<Download>b__1'(string)
      IL_0043:  newobj     instance void class [System.Runtime]System.Action`1<string>::.ctor(object,
                                                                                              native int)
      IL_0048:  ldloc.0
      IL_0049:  ldftn      instance void Game.CommunityContentManager/'<>c__DisplayClass8_1'::'<Download>b__4'(class [System.Runtime]System.Exception)
      IL_004f:  newobj     instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::.ctor(object,
                                                                                                                              native int)
      IL_0054:  call       void Game.ExternalContentManager::ImportExternalContent(class [System.IO]System.IO.Stream,
                                                                                   valuetype Game.ExternalContentType,
                                                                                   string,
                                                                                   class [System.Runtime]System.Action`1<string>,
                                                                                   class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
      IL_0059:  ret
    } // end of method '<>c__DisplayClass8_0'::'<Download>b__0'

    .method assembly hidebysig instance void 
            '<Download>b__7'(class [System.Runtime]System.Exception 'error') cil managed
    {
      // 代码大小       169 (0xa9)
      .maxstack  10
      IL_0000:  ldarg.0
      IL_0001:  ldfld      string Game.CommunityContentManager/'<>c__DisplayClass8_0'::address
      IL_0006:  ldstr      "DownloadFailure"
      IL_000b:  ldnull
      IL_000c:  ldnull
      IL_000d:  ldc.i4.0
      IL_000e:  conv.i8
      IL_000f:  ldarg.0
      IL_0010:  ldfld      string Game.CommunityContentManager/'<>c__DisplayClass8_0'::userId
      IL_0015:  ldnull
      IL_0016:  ldsfld     class [System.Runtime]System.Action Game.CommunityContentManager/'<>c'::'<>9__8_8'
      IL_001b:  dup
      IL_001c:  brtrue.s   IL_0035

      IL_001e:  pop
      IL_001f:  ldsfld     class Game.CommunityContentManager/'<>c' Game.CommunityContentManager/'<>c'::'<>9'
      IL_0024:  ldftn      instance void Game.CommunityContentManager/'<>c'::'<Download>b__8_8'()
      IL_002a:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                              native int)
      IL_002f:  dup
      IL_0030:  stsfld     class [System.Runtime]System.Action Game.CommunityContentManager/'<>c'::'<>9__8_8'
      IL_0035:  ldsfld     class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.CommunityContentManager/'<>c'::'<>9__8_9'
      IL_003a:  dup
      IL_003b:  brtrue.s   IL_0054

      IL_003d:  pop
      IL_003e:  ldsfld     class Game.CommunityContentManager/'<>c' Game.CommunityContentManager/'<>c'::'<>9'
      IL_0043:  ldftn      instance void Game.CommunityContentManager/'<>c'::'<Download>b__8_9'(class [System.Runtime]System.Exception)
      IL_0049:  newobj     instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::.ctor(object,
                                                                                                                              native int)
      IL_004e:  dup
      IL_004f:  stsfld     class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.CommunityContentManager/'<>c'::'<>9__8_9'
      IL_0054:  call       void Game.CommunityContentManager::Feedback(string,
                                                                       string,
                                                                       string,
                                                                       string,
                                                                       int64,
                                                                       string,
                                                                       class Game.CancellableProgress,
                                                                       class [System.Runtime]System.Action,
                                                                       class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
      IL_0059:  ldstr      "[CommunityContentManager] Download Failure"
      IL_005e:  ldc.i4.2
      IL_005f:  newarr     Game.AnalyticsParameter
      IL_0064:  dup
      IL_0065:  ldc.i4.0
      IL_0066:  ldstr      "Name"
      IL_006b:  ldarg.0
      IL_006c:  ldfld      string Game.CommunityContentManager/'<>c__DisplayClass8_0'::name
      IL_0071:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                        string)
      IL_0076:  stelem     Game.AnalyticsParameter
      IL_007b:  dup
      IL_007c:  ldc.i4.1
      IL_007d:  ldstr      "Error"
      IL_0082:  ldarg.1
      IL_0083:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
      IL_0088:  callvirt   instance string [System.Runtime]System.Object::ToString()
      IL_008d:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                        string)
      IL_0092:  stelem     Game.AnalyticsParameter
      IL_0097:  call       void Game.AnalyticsManager::LogEvent(string,
                                                                valuetype Game.AnalyticsParameter[])
      IL_009c:  ldarg.0
      IL_009d:  ldfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.CommunityContentManager/'<>c__DisplayClass8_0'::failure
      IL_00a2:  ldarg.1
      IL_00a3:  callvirt   instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::Invoke(!0)
      IL_00a8:  ret
    } // end of method '<>c__DisplayClass8_0'::'<Download>b__7'

  } // end of class '<>c__DisplayClass8_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass8_1'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public string hash
    .field public uint8[] data
    .field public class Game.CommunityContentManager/'<>c__DisplayClass8_0' 'CS$<>8__locals1'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass8_1'::.ctor

    .method assembly hidebysig instance void 
            '<Download>b__1'(string downloadedName) cil managed
    {
      // 代码大小       220 (0xdc)
      .maxstack  10
      IL_0000:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> Game.CommunityContentManager::m_idToAddressMap
      IL_0005:  ldarg.0
      IL_0006:  ldfld      class Game.CommunityContentManager/'<>c__DisplayClass8_0' Game.CommunityContentManager/'<>c__DisplayClass8_1'::'CS$<>8__locals1'
      IL_000b:  ldfld      valuetype Game.ExternalContentType Game.CommunityContentManager/'<>c__DisplayClass8_0'::'type'
      IL_0010:  ldarg.1
      IL_0011:  call       string Game.CommunityContentManager::MakeContentIdString(valuetype Game.ExternalContentType,
                                                                                    string)
      IL_0016:  ldarg.0
      IL_0017:  ldfld      class Game.CommunityContentManager/'<>c__DisplayClass8_0' Game.CommunityContentManager/'<>c__DisplayClass8_1'::'CS$<>8__locals1'
      IL_001c:  ldfld      string Game.CommunityContentManager/'<>c__DisplayClass8_0'::address
      IL_0021:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::set_Item(!0,
                                                                                                                                    !1)
      IL_0026:  ldarg.0
      IL_0027:  ldfld      class Game.CommunityContentManager/'<>c__DisplayClass8_0' Game.CommunityContentManager/'<>c__DisplayClass8_1'::'CS$<>8__locals1'
      IL_002c:  ldfld      string Game.CommunityContentManager/'<>c__DisplayClass8_0'::address
      IL_0031:  ldstr      "Success"
      IL_0036:  ldnull
      IL_0037:  ldarg.0
      IL_0038:  ldfld      string Game.CommunityContentManager/'<>c__DisplayClass8_1'::hash
      IL_003d:  ldarg.0
      IL_003e:  ldfld      uint8[] Game.CommunityContentManager/'<>c__DisplayClass8_1'::data
      IL_0043:  ldlen
      IL_0044:  conv.i4
      IL_0045:  conv.i8
      IL_0046:  ldarg.0
      IL_0047:  ldfld      class Game.CommunityContentManager/'<>c__DisplayClass8_0' Game.CommunityContentManager/'<>c__DisplayClass8_1'::'CS$<>8__locals1'
      IL_004c:  ldfld      string Game.CommunityContentManager/'<>c__DisplayClass8_0'::userId
      IL_0051:  ldarg.0
      IL_0052:  ldfld      class Game.CommunityContentManager/'<>c__DisplayClass8_0' Game.CommunityContentManager/'<>c__DisplayClass8_1'::'CS$<>8__locals1'
      IL_0057:  ldfld      class Game.CancellableProgress Game.CommunityContentManager/'<>c__DisplayClass8_0'::progress
      IL_005c:  ldsfld     class [System.Runtime]System.Action Game.CommunityContentManager/'<>c'::'<>9__8_2'
      IL_0061:  dup
      IL_0062:  brtrue.s   IL_007b

      IL_0064:  pop
      IL_0065:  ldsfld     class Game.CommunityContentManager/'<>c' Game.CommunityContentManager/'<>c'::'<>9'
      IL_006a:  ldftn      instance void Game.CommunityContentManager/'<>c'::'<Download>b__8_2'()
      IL_0070:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                              native int)
      IL_0075:  dup
      IL_0076:  stsfld     class [System.Runtime]System.Action Game.CommunityContentManager/'<>c'::'<>9__8_2'
      IL_007b:  ldsfld     class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.CommunityContentManager/'<>c'::'<>9__8_3'
      IL_0080:  dup
      IL_0081:  brtrue.s   IL_009a

      IL_0083:  pop
      IL_0084:  ldsfld     class Game.CommunityContentManager/'<>c' Game.CommunityContentManager/'<>c'::'<>9'
      IL_0089:  ldftn      instance void Game.CommunityContentManager/'<>c'::'<Download>b__8_3'(class [System.Runtime]System.Exception)
      IL_008f:  newobj     instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::.ctor(object,
                                                                                                                              native int)
      IL_0094:  dup
      IL_0095:  stsfld     class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.CommunityContentManager/'<>c'::'<>9__8_3'
      IL_009a:  call       void Game.CommunityContentManager::Feedback(string,
                                                                       string,
                                                                       string,
                                                                       string,
                                                                       int64,
                                                                       string,
                                                                       class Game.CancellableProgress,
                                                                       class [System.Runtime]System.Action,
                                                                       class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
      IL_009f:  ldstr      "[CommunityContentManager] Download Success"
      IL_00a4:  ldc.i4.1
      IL_00a5:  newarr     Game.AnalyticsParameter
      IL_00aa:  dup
      IL_00ab:  ldc.i4.0
      IL_00ac:  ldstr      "Name"
      IL_00b1:  ldarg.0
      IL_00b2:  ldfld      class Game.CommunityContentManager/'<>c__DisplayClass8_0' Game.CommunityContentManager/'<>c__DisplayClass8_1'::'CS$<>8__locals1'
      IL_00b7:  ldfld      string Game.CommunityContentManager/'<>c__DisplayClass8_0'::name
      IL_00bc:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                        string)
      IL_00c1:  stelem     Game.AnalyticsParameter
      IL_00c6:  call       void Game.AnalyticsManager::LogEvent(string,
                                                                valuetype Game.AnalyticsParameter[])
      IL_00cb:  ldarg.0
      IL_00cc:  ldfld      class Game.CommunityContentManager/'<>c__DisplayClass8_0' Game.CommunityContentManager/'<>c__DisplayClass8_1'::'CS$<>8__locals1'
      IL_00d1:  ldfld      class [System.Runtime]System.Action Game.CommunityContentManager/'<>c__DisplayClass8_0'::success
      IL_00d6:  callvirt   instance void [System.Runtime]System.Action::Invoke()
      IL_00db:  ret
    } // end of method '<>c__DisplayClass8_1'::'<Download>b__1'

    .method assembly hidebysig instance void 
            '<Download>b__4'(class [System.Runtime]System.Exception 'error') cil managed
    {
      // 代码大小       201 (0xc9)
      .maxstack  10
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CommunityContentManager/'<>c__DisplayClass8_0' Game.CommunityContentManager/'<>c__DisplayClass8_1'::'CS$<>8__locals1'
      IL_0006:  ldfld      string Game.CommunityContentManager/'<>c__DisplayClass8_0'::address
      IL_000b:  ldstr      "ImportFailure"
      IL_0010:  ldnull
      IL_0011:  ldarg.0
      IL_0012:  ldfld      string Game.CommunityContentManager/'<>c__DisplayClass8_1'::hash
      IL_0017:  ldarg.0
      IL_0018:  ldfld      uint8[] Game.CommunityContentManager/'<>c__DisplayClass8_1'::data
      IL_001d:  ldlen
      IL_001e:  conv.i4
      IL_001f:  conv.i8
      IL_0020:  ldarg.0
      IL_0021:  ldfld      class Game.CommunityContentManager/'<>c__DisplayClass8_0' Game.CommunityContentManager/'<>c__DisplayClass8_1'::'CS$<>8__locals1'
      IL_0026:  ldfld      string Game.CommunityContentManager/'<>c__DisplayClass8_0'::userId
      IL_002b:  ldnull
      IL_002c:  ldsfld     class [System.Runtime]System.Action Game.CommunityContentManager/'<>c'::'<>9__8_5'
      IL_0031:  dup
      IL_0032:  brtrue.s   IL_004b

      IL_0034:  pop
      IL_0035:  ldsfld     class Game.CommunityContentManager/'<>c' Game.CommunityContentManager/'<>c'::'<>9'
      IL_003a:  ldftn      instance void Game.CommunityContentManager/'<>c'::'<Download>b__8_5'()
      IL_0040:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                              native int)
      IL_0045:  dup
      IL_0046:  stsfld     class [System.Runtime]System.Action Game.CommunityContentManager/'<>c'::'<>9__8_5'
      IL_004b:  ldsfld     class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.CommunityContentManager/'<>c'::'<>9__8_6'
      IL_0050:  dup
      IL_0051:  brtrue.s   IL_006a

      IL_0053:  pop
      IL_0054:  ldsfld     class Game.CommunityContentManager/'<>c' Game.CommunityContentManager/'<>c'::'<>9'
      IL_0059:  ldftn      instance void Game.CommunityContentManager/'<>c'::'<Download>b__8_6'(class [System.Runtime]System.Exception)
      IL_005f:  newobj     instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::.ctor(object,
                                                                                                                              native int)
      IL_0064:  dup
      IL_0065:  stsfld     class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.CommunityContentManager/'<>c'::'<>9__8_6'
      IL_006a:  call       void Game.CommunityContentManager::Feedback(string,
                                                                       string,
                                                                       string,
                                                                       string,
                                                                       int64,
                                                                       string,
                                                                       class Game.CancellableProgress,
                                                                       class [System.Runtime]System.Action,
                                                                       class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
      IL_006f:  ldstr      "[CommunityContentManager] Import Failure"
      IL_0074:  ldc.i4.2
      IL_0075:  newarr     Game.AnalyticsParameter
      IL_007a:  dup
      IL_007b:  ldc.i4.0
      IL_007c:  ldstr      "Name"
      IL_0081:  ldarg.0
      IL_0082:  ldfld      class Game.CommunityContentManager/'<>c__DisplayClass8_0' Game.CommunityContentManager/'<>c__DisplayClass8_1'::'CS$<>8__locals1'
      IL_0087:  ldfld      string Game.CommunityContentManager/'<>c__DisplayClass8_0'::name
      IL_008c:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                        string)
      IL_0091:  stelem     Game.AnalyticsParameter
      IL_0096:  dup
      IL_0097:  ldc.i4.1
      IL_0098:  ldstr      "Error"
      IL_009d:  ldarg.1
      IL_009e:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
      IL_00a3:  callvirt   instance string [System.Runtime]System.Object::ToString()
      IL_00a8:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                        string)
      IL_00ad:  stelem     Game.AnalyticsParameter
      IL_00b2:  call       void Game.AnalyticsManager::LogEvent(string,
                                                                valuetype Game.AnalyticsParameter[])
      IL_00b7:  ldarg.0
      IL_00b8:  ldfld      class Game.CommunityContentManager/'<>c__DisplayClass8_0' Game.CommunityContentManager/'<>c__DisplayClass8_1'::'CS$<>8__locals1'
      IL_00bd:  ldfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.CommunityContentManager/'<>c__DisplayClass8_0'::failure
      IL_00c2:  ldarg.1
      IL_00c3:  callvirt   instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::Invoke(!0)
      IL_00c8:  ret
    } // end of method '<>c__DisplayClass8_1'::'<Download>b__4'

  } // end of class '<>c__DisplayClass8_1'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass9_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public string userId
    .field public string name
    .field public string address
    .field public valuetype Game.ExternalContentType 'type'
    .field public class Game.CancellableProgress progress
    .field public class [System.Runtime]System.Action success
    .field public class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> failure
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass9_0'::.ctor

    .method assembly hidebysig instance void 
            '<Publish>b__0'(uint8[] data) cil managed
    {
      // 代码大小       273 (0x111)
      .maxstack  8
      .locals init (class Game.CommunityContentManager/'<>c__DisplayClass9_1' V_0,
               string V_1,
               class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> V_2,
               int32 V_3,
               valuetype Game.Platform V_4)
      IL_0000:  newobj     instance void Game.CommunityContentManager/'<>c__DisplayClass9_1'::.ctor()
      IL_0005:  stloc.0
      IL_0006:  ldloc.0
      IL_0007:  ldarg.0
      IL_0008:  stfld      class Game.CommunityContentManager/'<>c__DisplayClass9_0' Game.CommunityContentManager/'<>c__DisplayClass9_1'::'CS$<>8__locals1'
      IL_000d:  ldloc.0
      IL_000e:  ldarg.1
      IL_000f:  stfld      uint8[] Game.CommunityContentManager/'<>c__DisplayClass9_1'::data
      IL_0014:  ldloc.0
      IL_0015:  ldfld      uint8[] Game.CommunityContentManager/'<>c__DisplayClass9_1'::data
      IL_001a:  call       string Game.CommunityContentManager::CalculateContentHashString(uint8[])
      IL_001f:  stloc.1
      IL_0020:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::.ctor()
      IL_0025:  stloc.2
      IL_0026:  ldloc.2
      IL_0027:  ldstr      "Action"
      IL_002c:  ldstr      "publish"
      IL_0031:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_0036:  ldloc.2
      IL_0037:  ldstr      "UserId"
      IL_003c:  ldarg.0
      IL_003d:  ldfld      string Game.CommunityContentManager/'<>c__DisplayClass9_0'::userId
      IL_0042:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_0047:  ldloc.2
      IL_0048:  ldstr      "Name"
      IL_004d:  ldarg.0
      IL_004e:  ldfld      string Game.CommunityContentManager/'<>c__DisplayClass9_0'::name
      IL_0053:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_0058:  ldloc.2
      IL_0059:  ldstr      "Url"
      IL_005e:  ldarg.0
      IL_005f:  ldfld      string Game.CommunityContentManager/'<>c__DisplayClass9_0'::address
      IL_0064:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_0069:  ldloc.2
      IL_006a:  ldstr      "Type"
      IL_006f:  ldarg.0
      IL_0070:  ldflda     valuetype Game.ExternalContentType Game.CommunityContentManager/'<>c__DisplayClass9_0'::'type'
      IL_0075:  constrained. Game.ExternalContentType
      IL_007b:  callvirt   instance string [System.Runtime]System.Object::ToString()
      IL_0080:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_0085:  ldloc.2
      IL_0086:  ldstr      "Hash"
      IL_008b:  ldloc.1
      IL_008c:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_0091:  ldloc.2
      IL_0092:  ldstr      "Size"
      IL_0097:  ldloc.0
      IL_0098:  ldfld      uint8[] Game.CommunityContentManager/'<>c__DisplayClass9_1'::data
      IL_009d:  ldlen
      IL_009e:  conv.i4
      IL_009f:  stloc.3
      IL_00a0:  ldloca.s   V_3
      IL_00a2:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
      IL_00a7:  call       instance string [System.Runtime]System.Int32::ToString(class [System.Runtime]System.IFormatProvider)
      IL_00ac:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_00b1:  ldloc.2
      IL_00b2:  ldstr      "Platform"
      IL_00b7:  call       valuetype Game.Platform Game.VersionsManager::get_Platform()
      IL_00bc:  stloc.s    V_4
      IL_00be:  ldloca.s   V_4
      IL_00c0:  constrained. Game.Platform
      IL_00c6:  callvirt   instance string [System.Runtime]System.Object::ToString()
      IL_00cb:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_00d0:  ldloc.2
      IL_00d1:  ldstr      "Version"
      IL_00d6:  call       string Game.VersionsManager::get_Version()
      IL_00db:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                               !1)
      IL_00e0:  ldstr      "https://scresdir.appspot.com/resource"
      IL_00e5:  ldnull
      IL_00e6:  ldnull
      IL_00e7:  ldloc.2
      IL_00e8:  call       class [System.IO]System.IO.MemoryStream Game.WebManager::UrlParametersToStream(class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>)
      IL_00ed:  ldarg.0
      IL_00ee:  ldfld      class Game.CancellableProgress Game.CommunityContentManager/'<>c__DisplayClass9_0'::progress
      IL_00f3:  ldloc.0
      IL_00f4:  ldftn      instance void Game.CommunityContentManager/'<>c__DisplayClass9_1'::'<Publish>b__1'(uint8[])
      IL_00fa:  newobj     instance void class [System.Runtime]System.Action`1<uint8[]>::.ctor(object,
                                                                                               native int)
      IL_00ff:  ldloc.0
      IL_0100:  ldftn      instance void Game.CommunityContentManager/'<>c__DisplayClass9_1'::'<Publish>b__2'(class [System.Runtime]System.Exception)
      IL_0106:  newobj     instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::.ctor(object,
                                                                                                                              native int)
      IL_010b:  call       void Game.WebManager::Post(string,
                                                      class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>,
                                                      class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>,
                                                      class [System.IO]System.IO.Stream,
                                                      class Game.CancellableProgress,
                                                      class [System.Runtime]System.Action`1<uint8[]>,
                                                      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
      IL_0110:  ret
    } // end of method '<>c__DisplayClass9_0'::'<Publish>b__0'

  } // end of class '<>c__DisplayClass9_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass9_1'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public uint8[] data
    .field public class Game.CommunityContentManager/'<>c__DisplayClass9_0' 'CS$<>8__locals1'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass9_1'::.ctor

    .method assembly hidebysig instance void 
            '<Publish>b__1'(uint8[] result) cil managed
    {
      // 代码大小       161 (0xa1)
      .maxstack  6
      .locals init (int32 V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CommunityContentManager/'<>c__DisplayClass9_0' Game.CommunityContentManager/'<>c__DisplayClass9_1'::'CS$<>8__locals1'
      IL_0006:  ldfld      class [System.Runtime]System.Action Game.CommunityContentManager/'<>c__DisplayClass9_0'::success
      IL_000b:  callvirt   instance void [System.Runtime]System.Action::Invoke()
      IL_0010:  ldstr      "[CommunityContentManager] Publish Success"
      IL_0015:  ldc.i4.4
      IL_0016:  newarr     Game.AnalyticsParameter
      IL_001b:  dup
      IL_001c:  ldc.i4.0
      IL_001d:  ldstr      "Name"
      IL_0022:  ldarg.0
      IL_0023:  ldfld      class Game.CommunityContentManager/'<>c__DisplayClass9_0' Game.CommunityContentManager/'<>c__DisplayClass9_1'::'CS$<>8__locals1'
      IL_0028:  ldfld      string Game.CommunityContentManager/'<>c__DisplayClass9_0'::name
      IL_002d:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                        string)
      IL_0032:  stelem     Game.AnalyticsParameter
      IL_0037:  dup
      IL_0038:  ldc.i4.1
      IL_0039:  ldstr      "Type"
      IL_003e:  ldarg.0
      IL_003f:  ldfld      class Game.CommunityContentManager/'<>c__DisplayClass9_0' Game.CommunityContentManager/'<>c__DisplayClass9_1'::'CS$<>8__locals1'
      IL_0044:  ldflda     valuetype Game.ExternalContentType Game.CommunityContentManager/'<>c__DisplayClass9_0'::'type'
      IL_0049:  constrained. Game.ExternalContentType
      IL_004f:  callvirt   instance string [System.Runtime]System.Object::ToString()
      IL_0054:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                        string)
      IL_0059:  stelem     Game.AnalyticsParameter
      IL_005e:  dup
      IL_005f:  ldc.i4.2
      IL_0060:  ldstr      "Size"
      IL_0065:  ldarg.0
      IL_0066:  ldfld      uint8[] Game.CommunityContentManager/'<>c__DisplayClass9_1'::data
      IL_006b:  ldlen
      IL_006c:  conv.i4
      IL_006d:  stloc.0
      IL_006e:  ldloca.s   V_0
      IL_0070:  call       instance string [System.Runtime]System.Int32::ToString()
      IL_0075:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                        string)
      IL_007a:  stelem     Game.AnalyticsParameter
      IL_007f:  dup
      IL_0080:  ldc.i4.3
      IL_0081:  ldstr      "User"
      IL_0086:  ldarg.0
      IL_0087:  ldfld      class Game.CommunityContentManager/'<>c__DisplayClass9_0' Game.CommunityContentManager/'<>c__DisplayClass9_1'::'CS$<>8__locals1'
      IL_008c:  ldfld      string Game.CommunityContentManager/'<>c__DisplayClass9_0'::userId
      IL_0091:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                        string)
      IL_0096:  stelem     Game.AnalyticsParameter
      IL_009b:  call       void Game.AnalyticsManager::LogEvent(string,
                                                                valuetype Game.AnalyticsParameter[])
      IL_00a0:  ret
    } // end of method '<>c__DisplayClass9_1'::'<Publish>b__1'

    .method assembly hidebysig instance void 
            '<Publish>b__2'(class [System.Runtime]System.Exception 'error') cil managed
    {
      // 代码大小       190 (0xbe)
      .maxstack  6
      .locals init (int32 V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CommunityContentManager/'<>c__DisplayClass9_0' Game.CommunityContentManager/'<>c__DisplayClass9_1'::'CS$<>8__locals1'
      IL_0006:  ldfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.CommunityContentManager/'<>c__DisplayClass9_0'::failure
      IL_000b:  ldarg.1
      IL_000c:  callvirt   instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::Invoke(!0)
      IL_0011:  ldstr      "[CommunityContentManager] Publish Failure"
      IL_0016:  ldc.i4.5
      IL_0017:  newarr     Game.AnalyticsParameter
      IL_001c:  dup
      IL_001d:  ldc.i4.0
      IL_001e:  ldstr      "Name"
      IL_0023:  ldarg.0
      IL_0024:  ldfld      class Game.CommunityContentManager/'<>c__DisplayClass9_0' Game.CommunityContentManager/'<>c__DisplayClass9_1'::'CS$<>8__locals1'
      IL_0029:  ldfld      string Game.CommunityContentManager/'<>c__DisplayClass9_0'::name
      IL_002e:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                        string)
      IL_0033:  stelem     Game.AnalyticsParameter
      IL_0038:  dup
      IL_0039:  ldc.i4.1
      IL_003a:  ldstr      "Type"
      IL_003f:  ldarg.0
      IL_0040:  ldfld      class Game.CommunityContentManager/'<>c__DisplayClass9_0' Game.CommunityContentManager/'<>c__DisplayClass9_1'::'CS$<>8__locals1'
      IL_0045:  ldflda     valuetype Game.ExternalContentType Game.CommunityContentManager/'<>c__DisplayClass9_0'::'type'
      IL_004a:  constrained. Game.ExternalContentType
      IL_0050:  callvirt   instance string [System.Runtime]System.Object::ToString()
      IL_0055:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                        string)
      IL_005a:  stelem     Game.AnalyticsParameter
      IL_005f:  dup
      IL_0060:  ldc.i4.2
      IL_0061:  ldstr      "Size"
      IL_0066:  ldarg.0
      IL_0067:  ldfld      uint8[] Game.CommunityContentManager/'<>c__DisplayClass9_1'::data
      IL_006c:  ldlen
      IL_006d:  conv.i4
      IL_006e:  stloc.0
      IL_006f:  ldloca.s   V_0
      IL_0071:  call       instance string [System.Runtime]System.Int32::ToString()
      IL_0076:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                        string)
      IL_007b:  stelem     Game.AnalyticsParameter
      IL_0080:  dup
      IL_0081:  ldc.i4.3
      IL_0082:  ldstr      "User"
      IL_0087:  ldarg.0
      IL_0088:  ldfld      class Game.CommunityContentManager/'<>c__DisplayClass9_0' Game.CommunityContentManager/'<>c__DisplayClass9_1'::'CS$<>8__locals1'
      IL_008d:  ldfld      string Game.CommunityContentManager/'<>c__DisplayClass9_0'::userId
      IL_0092:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                        string)
      IL_0097:  stelem     Game.AnalyticsParameter
      IL_009c:  dup
      IL_009d:  ldc.i4.4
      IL_009e:  ldstr      "Error"
      IL_00a3:  ldarg.1
      IL_00a4:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
      IL_00a9:  callvirt   instance string [System.Runtime]System.Object::ToString()
      IL_00ae:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                        string)
      IL_00b3:  stelem     Game.AnalyticsParameter
      IL_00b8:  call       void Game.AnalyticsManager::LogEvent(string,
                                                                valuetype Game.AnalyticsParameter[])
      IL_00bd:  ret
    } // end of method '<>c__DisplayClass9_1'::'<Publish>b__2'

  } // end of class '<>c__DisplayClass9_1'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass10_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class [System.Runtime]System.Action success
    .field public string address
    .field public string userId
    .field public class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> failure
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass10_0'::.ctor

    .method assembly hidebysig instance void 
            '<Delete>b__0'(uint8[] result) cil managed
    {
      // 代码大小       74 (0x4a)
      .maxstack  6
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [System.Runtime]System.Action Game.CommunityContentManager/'<>c__DisplayClass10_0'::success
      IL_0006:  callvirt   instance void [System.Runtime]System.Action::Invoke()
      IL_000b:  ldstr      "[CommunityContentManager] Delete Success"
      IL_0010:  ldc.i4.2
      IL_0011:  newarr     Game.AnalyticsParameter
      IL_0016:  dup
      IL_0017:  ldc.i4.0
      IL_0018:  ldstr      "Name"
      IL_001d:  ldarg.0
      IL_001e:  ldfld      string Game.CommunityContentManager/'<>c__DisplayClass10_0'::address
      IL_0023:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                        string)
      IL_0028:  stelem     Game.AnalyticsParameter
      IL_002d:  dup
      IL_002e:  ldc.i4.1
      IL_002f:  ldstr      "User"
      IL_0034:  ldarg.0
      IL_0035:  ldfld      string Game.CommunityContentManager/'<>c__DisplayClass10_0'::userId
      IL_003a:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                        string)
      IL_003f:  stelem     Game.AnalyticsParameter
      IL_0044:  call       void Game.AnalyticsManager::LogEvent(string,
                                                                valuetype Game.AnalyticsParameter[])
      IL_0049:  ret
    } // end of method '<>c__DisplayClass10_0'::'<Delete>b__0'

    .method assembly hidebysig instance void 
            '<Delete>b__1'(class [System.Runtime]System.Exception 'error') cil managed
    {
      // 代码大小       103 (0x67)
      .maxstack  6
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.CommunityContentManager/'<>c__DisplayClass10_0'::failure
      IL_0006:  ldarg.1
      IL_0007:  callvirt   instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::Invoke(!0)
      IL_000c:  ldstr      "[CommunityContentManager] Delete Failure"
      IL_0011:  ldc.i4.3
      IL_0012:  newarr     Game.AnalyticsParameter
      IL_0017:  dup
      IL_0018:  ldc.i4.0
      IL_0019:  ldstr      "Name"
      IL_001e:  ldarg.0
      IL_001f:  ldfld      string Game.CommunityContentManager/'<>c__DisplayClass10_0'::address
      IL_0024:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                        string)
      IL_0029:  stelem     Game.AnalyticsParameter
      IL_002e:  dup
      IL_002f:  ldc.i4.1
      IL_0030:  ldstr      "User"
      IL_0035:  ldarg.0
      IL_0036:  ldfld      string Game.CommunityContentManager/'<>c__DisplayClass10_0'::userId
      IL_003b:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                        string)
      IL_0040:  stelem     Game.AnalyticsParameter
      IL_0045:  dup
      IL_0046:  ldc.i4.2
      IL_0047:  ldstr      "Error"
      IL_004c:  ldarg.1
      IL_004d:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
      IL_0052:  callvirt   instance string [System.Runtime]System.Object::ToString()
      IL_0057:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                        string)
      IL_005c:  stelem     Game.AnalyticsParameter
      IL_0061:  call       void Game.AnalyticsManager::LogEvent(string,
                                                                valuetype Game.AnalyticsParameter[])
      IL_0066:  ret
    } // end of method '<>c__DisplayClass10_0'::'<Delete>b__1'

  } // end of class '<>c__DisplayClass10_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass14_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public valuetype Game.ExternalContentType 'type'
    .field public class [System.Runtime]System.Action`1<uint8[]> success
    .field public class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> failure
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass14_0'::.ctor

    .method assembly hidebysig instance void 
            '<VerifyLinkContent>b__0'(uint8[] data) cil managed
    {
      // 代码大小       66 (0x42)
      .maxstack  5
      .locals init (class Game.CommunityContentManager/'<>c__DisplayClass14_1' V_0)
      IL_0000:  newobj     instance void Game.CommunityContentManager/'<>c__DisplayClass14_1'::.ctor()
      IL_0005:  stloc.0
      IL_0006:  ldloc.0
      IL_0007:  ldarg.0
      IL_0008:  stfld      class Game.CommunityContentManager/'<>c__DisplayClass14_0' Game.CommunityContentManager/'<>c__DisplayClass14_1'::'CS$<>8__locals1'
      IL_000d:  ldloc.0
      IL_000e:  ldarg.1
      IL_000f:  stfld      uint8[] Game.CommunityContentManager/'<>c__DisplayClass14_1'::data
      IL_0014:  ldloc.0
      IL_0015:  ldfld      uint8[] Game.CommunityContentManager/'<>c__DisplayClass14_1'::data
      IL_001a:  newobj     instance void [System.IO]System.IO.MemoryStream::.ctor(uint8[])
      IL_001f:  ldarg.0
      IL_0020:  ldfld      valuetype Game.ExternalContentType Game.CommunityContentManager/'<>c__DisplayClass14_0'::'type'
      IL_0025:  ldstr      "__Temp"
      IL_002a:  ldloc.0
      IL_002b:  ldftn      instance void Game.CommunityContentManager/'<>c__DisplayClass14_1'::'<VerifyLinkContent>b__1'(string)
      IL_0031:  newobj     instance void class [System.Runtime]System.Action`1<string>::.ctor(object,
                                                                                              native int)
      IL_0036:  ldarg.0
      IL_0037:  ldfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.CommunityContentManager/'<>c__DisplayClass14_0'::failure
      IL_003c:  call       void Game.ExternalContentManager::ImportExternalContent(class [System.IO]System.IO.Stream,
                                                                                   valuetype Game.ExternalContentType,
                                                                                   string,
                                                                                   class [System.Runtime]System.Action`1<string>,
                                                                                   class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
      IL_0041:  ret
    } // end of method '<>c__DisplayClass14_0'::'<VerifyLinkContent>b__0'

  } // end of class '<>c__DisplayClass14_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass14_1'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public uint8[] data
    .field public class Game.CommunityContentManager/'<>c__DisplayClass14_0' 'CS$<>8__locals1'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass14_1'::.ctor

    .method assembly hidebysig instance void 
            '<VerifyLinkContent>b__1'(string downloadedName) cil managed
    {
      // 代码大小       40 (0x28)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CommunityContentManager/'<>c__DisplayClass14_0' Game.CommunityContentManager/'<>c__DisplayClass14_1'::'CS$<>8__locals1'
      IL_0006:  ldfld      valuetype Game.ExternalContentType Game.CommunityContentManager/'<>c__DisplayClass14_0'::'type'
      IL_000b:  ldarg.1
      IL_000c:  call       void Game.ExternalContentManager::DeleteExternalContent(valuetype Game.ExternalContentType,
                                                                                   string)
      IL_0011:  ldarg.0
      IL_0012:  ldfld      class Game.CommunityContentManager/'<>c__DisplayClass14_0' Game.CommunityContentManager/'<>c__DisplayClass14_1'::'CS$<>8__locals1'
      IL_0017:  ldfld      class [System.Runtime]System.Action`1<uint8[]> Game.CommunityContentManager/'<>c__DisplayClass14_0'::success
      IL_001c:  ldarg.0
      IL_001d:  ldfld      uint8[] Game.CommunityContentManager/'<>c__DisplayClass14_1'::data
      IL_0022:  callvirt   instance void class [System.Runtime]System.Action`1<uint8[]>::Invoke(!0)
      IL_0027:  ret
    } // end of method '<>c__DisplayClass14_1'::'<VerifyLinkContent>b__1'

  } // end of class '<>c__DisplayClass14_1'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass15_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> failure
    .field public class [System.Runtime]System.Action success
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass15_0'::.ctor

    .method assembly hidebysig instance void 
            '<Feedback>b__0'() cil managed
    {
      // 代码大小       37 (0x25)
      .maxstack  8
      IL_0000:  ldc.i4     0x5dc
      IL_0005:  call       class [System.Threading.Tasks]System.Threading.Tasks.Task [System.Threading.Tasks]System.Threading.Tasks.Task::Delay(int32)
      IL_000a:  callvirt   instance void [System.Threading.Tasks]System.Threading.Tasks.Task::Wait()
      IL_000f:  ldarg.0
      IL_0010:  ldfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.CommunityContentManager/'<>c__DisplayClass15_0'::failure
      IL_0015:  ldstr      "Duplicate feedback."
      IL_001a:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
      IL_001f:  callvirt   instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::Invoke(!0)
      IL_0024:  ret
    } // end of method '<>c__DisplayClass15_0'::'<Feedback>b__0'

    .method assembly hidebysig instance void 
            '<Feedback>b__1'(uint8[] result) cil managed
    {
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [System.Runtime]System.Action Game.CommunityContentManager/'<>c__DisplayClass15_0'::success
      IL_0006:  callvirt   instance void [System.Runtime]System.Action::Invoke()
      IL_000b:  ret
    } // end of method '<>c__DisplayClass15_0'::'<Feedback>b__1'

    .method assembly hidebysig instance void 
            '<Feedback>b__2'(class [System.Runtime]System.Exception 'error') cil managed
    {
      // 代码大小       13 (0xd)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.CommunityContentManager/'<>c__DisplayClass15_0'::failure
      IL_0006:  ldarg.1
      IL_0007:  callvirt   instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::Invoke(!0)
      IL_000c:  ret
    } // end of method '<>c__DisplayClass15_0'::'<Feedback>b__2'

  } // end of class '<>c__DisplayClass15_0'

  .field private static literal string m_cacheFilename = "data:/CommunityContentCache.xml"
  .field private static literal string m_scResDirAddress = "https://scresdir.appspot.com/resource"
  .field private static class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> m_idToAddressMap
  .field private static class [System.Collections]System.Collections.Generic.Dictionary`2<string,bool> m_feedbackCache
  .method public hidebysig static void  Initialize() cil managed
  {
    // 代码大小       186 (0xba)
    .maxstack  2
    IL_0000:  call       void Game.CommunityContentManager::Load()
    IL_0005:  ldsfld     class [System.Runtime]System.Action`1<string> Game.CommunityContentManager/'<>c'::'<>9__4_0'
    IL_000a:  dup
    IL_000b:  brtrue.s   IL_0024

    IL_000d:  pop
    IL_000e:  ldsfld     class Game.CommunityContentManager/'<>c' Game.CommunityContentManager/'<>c'::'<>9'
    IL_0013:  ldftn      instance void Game.CommunityContentManager/'<>c'::'<Initialize>b__4_0'(string)
    IL_0019:  newobj     instance void class [System.Runtime]System.Action`1<string>::.ctor(object,
                                                                                            native int)
    IL_001e:  dup
    IL_001f:  stsfld     class [System.Runtime]System.Action`1<string> Game.CommunityContentManager/'<>c'::'<>9__4_0'
    IL_0024:  call       void Game.WorldsManager::add_WorldDeleted(class [System.Runtime]System.Action`1<string>)
    IL_0029:  ldsfld     class [System.Runtime]System.Action`1<string> Game.CommunityContentManager/'<>c'::'<>9__4_1'
    IL_002e:  dup
    IL_002f:  brtrue.s   IL_0048

    IL_0031:  pop
    IL_0032:  ldsfld     class Game.CommunityContentManager/'<>c' Game.CommunityContentManager/'<>c'::'<>9'
    IL_0037:  ldftn      instance void Game.CommunityContentManager/'<>c'::'<Initialize>b__4_1'(string)
    IL_003d:  newobj     instance void class [System.Runtime]System.Action`1<string>::.ctor(object,
                                                                                            native int)
    IL_0042:  dup
    IL_0043:  stsfld     class [System.Runtime]System.Action`1<string> Game.CommunityContentManager/'<>c'::'<>9__4_1'
    IL_0048:  call       void Game.BlocksTexturesManager::add_BlocksTextureDeleted(class [System.Runtime]System.Action`1<string>)
    IL_004d:  ldsfld     class [System.Runtime]System.Action`1<string> Game.CommunityContentManager/'<>c'::'<>9__4_2'
    IL_0052:  dup
    IL_0053:  brtrue.s   IL_006c

    IL_0055:  pop
    IL_0056:  ldsfld     class Game.CommunityContentManager/'<>c' Game.CommunityContentManager/'<>c'::'<>9'
    IL_005b:  ldftn      instance void Game.CommunityContentManager/'<>c'::'<Initialize>b__4_2'(string)
    IL_0061:  newobj     instance void class [System.Runtime]System.Action`1<string>::.ctor(object,
                                                                                            native int)
    IL_0066:  dup
    IL_0067:  stsfld     class [System.Runtime]System.Action`1<string> Game.CommunityContentManager/'<>c'::'<>9__4_2'
    IL_006c:  call       void Game.CharacterSkinsManager::add_CharacterSkinDeleted(class [System.Runtime]System.Action`1<string>)
    IL_0071:  ldsfld     class [System.Runtime]System.Action`1<string> Game.CommunityContentManager/'<>c'::'<>9__4_3'
    IL_0076:  dup
    IL_0077:  brtrue.s   IL_0090

    IL_0079:  pop
    IL_007a:  ldsfld     class Game.CommunityContentManager/'<>c' Game.CommunityContentManager/'<>c'::'<>9'
    IL_007f:  ldftn      instance void Game.CommunityContentManager/'<>c'::'<Initialize>b__4_3'(string)
    IL_0085:  newobj     instance void class [System.Runtime]System.Action`1<string>::.ctor(object,
                                                                                            native int)
    IL_008a:  dup
    IL_008b:  stsfld     class [System.Runtime]System.Action`1<string> Game.CommunityContentManager/'<>c'::'<>9__4_3'
    IL_0090:  call       void Game.FurniturePacksManager::add_FurniturePackDeleted(class [System.Runtime]System.Action`1<string>)
    IL_0095:  ldsfld     class [System.Runtime]System.Action Game.CommunityContentManager/'<>c'::'<>9__4_4'
    IL_009a:  dup
    IL_009b:  brtrue.s   IL_00b4

    IL_009d:  pop
    IL_009e:  ldsfld     class Game.CommunityContentManager/'<>c' Game.CommunityContentManager/'<>c'::'<>9'
    IL_00a3:  ldftn      instance void Game.CommunityContentManager/'<>c'::'<Initialize>b__4_4'()
    IL_00a9:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00ae:  dup
    IL_00af:  stsfld     class [System.Runtime]System.Action Game.CommunityContentManager/'<>c'::'<>9__4_4'
    IL_00b4:  call       void [Engine]Engine.Window::add_Deactivated(class [System.Runtime]System.Action)
    IL_00b9:  ret
  } // end of method CommunityContentManager::Initialize

  .method public hidebysig static string 
          GetDownloadedContentAddress(valuetype Game.ExternalContentType 'type',
                                      string name) cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  3
    .locals init (string V_0)
    IL_0000:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> Game.CommunityContentManager::m_idToAddressMap
    IL_0005:  ldarg.0
    IL_0006:  ldarg.1
    IL_0007:  call       string Game.CommunityContentManager::MakeContentIdString(valuetype Game.ExternalContentType,
                                                                                  string)
    IL_000c:  ldloca.s   V_0
    IL_000e:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::TryGetValue(!0,
                                                                                                                                     !1&)
    IL_0013:  pop
    IL_0014:  ldloc.0
    IL_0015:  ret
  } // end of method CommunityContentManager::GetDownloadedContentAddress

  .method public hidebysig static bool  IsContentRated(string address,
                                                       string userId) cil managed
  {
    // 代码大小       25 (0x19)
    .maxstack  3
    .locals init (string V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldstr      "Rating"
    IL_0006:  ldarg.1
    IL_0007:  call       string Game.CommunityContentManager::MakeFeedbackCacheKey(string,
                                                                                   string,
                                                                                   string)
    IL_000c:  stloc.0
    IL_000d:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<string,bool> Game.CommunityContentManager::m_feedbackCache
    IL_0012:  ldloc.0
    IL_0013:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<string,bool>::ContainsKey(!0)
    IL_0018:  ret
  } // end of method CommunityContentManager::IsContentRated

  .method public hidebysig static void  List(string cursor,
                                             string userFilter,
                                             string typeFilter,
                                             string moderationFilter,
                                             string sortOrder,
                                             class Game.CancellableProgress progress,
                                             class [System.Runtime]System.Action`2<class [System.Collections]System.Collections.Generic.List`1<class Game.CommunityContentEntry>,string> success,
                                             class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> failure) cil managed
  {
    // 代码大小       283 (0x11b)
    .maxstack  8
    .locals init (class Game.CommunityContentManager/'<>c__DisplayClass7_0' V_0,
             class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> V_1,
             valuetype Game.Platform V_2)
    IL_0000:  newobj     instance void Game.CommunityContentManager/'<>c__DisplayClass7_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.s    success
    IL_0009:  stfld      class [System.Runtime]System.Action`2<class [System.Collections]System.Collections.Generic.List`1<class Game.CommunityContentEntry>,string> Game.CommunityContentManager/'<>c__DisplayClass7_0'::success
    IL_000e:  ldloc.0
    IL_000f:  ldarg.s    failure
    IL_0011:  stfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.CommunityContentManager/'<>c__DisplayClass7_0'::failure
    IL_0016:  ldarg.s    progress
    IL_0018:  dup
    IL_0019:  brtrue.s   IL_0021

    IL_001b:  pop
    IL_001c:  newobj     instance void Game.CancellableProgress::.ctor()
    IL_0021:  starg.s    progress
    IL_0023:  call       bool Game.WebManager::IsInternetConnectionAvailable()
    IL_0028:  brtrue.s   IL_0040

    IL_002a:  ldloc.0
    IL_002b:  ldfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.CommunityContentManager/'<>c__DisplayClass7_0'::failure
    IL_0030:  ldstr      "Internet connection is unavailable."
    IL_0035:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_003a:  callvirt   instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::Invoke(!0)
    IL_003f:  ret

    IL_0040:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::.ctor()
    IL_0045:  stloc.1
    IL_0046:  ldloc.1
    IL_0047:  ldstr      "Action"
    IL_004c:  ldstr      "list"
    IL_0051:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_0056:  ldloc.1
    IL_0057:  ldstr      "Cursor"
    IL_005c:  ldarg.0
    IL_005d:  dup
    IL_005e:  brtrue.s   IL_0066

    IL_0060:  pop
    IL_0061:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0066:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_006b:  ldloc.1
    IL_006c:  ldstr      "UserId"
    IL_0071:  ldarg.1
    IL_0072:  dup
    IL_0073:  brtrue.s   IL_007b

    IL_0075:  pop
    IL_0076:  ldsfld     string [System.Runtime]System.String::Empty
    IL_007b:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_0080:  ldloc.1
    IL_0081:  ldstr      "Type"
    IL_0086:  ldarg.2
    IL_0087:  dup
    IL_0088:  brtrue.s   IL_0090

    IL_008a:  pop
    IL_008b:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0090:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_0095:  ldloc.1
    IL_0096:  ldstr      "Moderation"
    IL_009b:  ldarg.3
    IL_009c:  dup
    IL_009d:  brtrue.s   IL_00a5

    IL_009f:  pop
    IL_00a0:  ldsfld     string [System.Runtime]System.String::Empty
    IL_00a5:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_00aa:  ldloc.1
    IL_00ab:  ldstr      "SortOrder"
    IL_00b0:  ldarg.s    sortOrder
    IL_00b2:  dup
    IL_00b3:  brtrue.s   IL_00bb

    IL_00b5:  pop
    IL_00b6:  ldsfld     string [System.Runtime]System.String::Empty
    IL_00bb:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_00c0:  ldloc.1
    IL_00c1:  ldstr      "Platform"
    IL_00c6:  call       valuetype Game.Platform Game.VersionsManager::get_Platform()
    IL_00cb:  stloc.2
    IL_00cc:  ldloca.s   V_2
    IL_00ce:  constrained. Game.Platform
    IL_00d4:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_00d9:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_00de:  ldloc.1
    IL_00df:  ldstr      "Version"
    IL_00e4:  call       string Game.VersionsManager::get_Version()
    IL_00e9:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_00ee:  ldstr      "https://scresdir.appspot.com/resource"
    IL_00f3:  ldnull
    IL_00f4:  ldnull
    IL_00f5:  ldloc.1
    IL_00f6:  call       class [System.IO]System.IO.MemoryStream Game.WebManager::UrlParametersToStream(class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>)
    IL_00fb:  ldarg.s    progress
    IL_00fd:  ldloc.0
    IL_00fe:  ldftn      instance void Game.CommunityContentManager/'<>c__DisplayClass7_0'::'<List>b__0'(uint8[])
    IL_0104:  newobj     instance void class [System.Runtime]System.Action`1<uint8[]>::.ctor(object,
                                                                                             native int)
    IL_0109:  ldloc.0
    IL_010a:  ldftn      instance void Game.CommunityContentManager/'<>c__DisplayClass7_0'::'<List>b__1'(class [System.Runtime]System.Exception)
    IL_0110:  newobj     instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::.ctor(object,
                                                                                                                            native int)
    IL_0115:  call       void Game.WebManager::Post(string,
                                                    class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>,
                                                    class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>,
                                                    class [System.IO]System.IO.Stream,
                                                    class Game.CancellableProgress,
                                                    class [System.Runtime]System.Action`1<uint8[]>,
                                                    class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
    IL_011a:  ret
  } // end of method CommunityContentManager::List

  .method public hidebysig static void  Download(string address,
                                                 string name,
                                                 valuetype Game.ExternalContentType 'type',
                                                 string userId,
                                                 class Game.CancellableProgress progress,
                                                 class [System.Runtime]System.Action success,
                                                 class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> failure) cil managed
  {
    // 代码大小       152 (0x98)
    .maxstack  7
    .locals init (class Game.CommunityContentManager/'<>c__DisplayClass8_0' V_0)
    IL_0000:  newobj     instance void Game.CommunityContentManager/'<>c__DisplayClass8_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.2
    IL_0008:  stfld      valuetype Game.ExternalContentType Game.CommunityContentManager/'<>c__DisplayClass8_0'::'type'
    IL_000d:  ldloc.0
    IL_000e:  ldarg.1
    IL_000f:  stfld      string Game.CommunityContentManager/'<>c__DisplayClass8_0'::name
    IL_0014:  ldloc.0
    IL_0015:  ldarg.0
    IL_0016:  stfld      string Game.CommunityContentManager/'<>c__DisplayClass8_0'::address
    IL_001b:  ldloc.0
    IL_001c:  ldarg.3
    IL_001d:  stfld      string Game.CommunityContentManager/'<>c__DisplayClass8_0'::userId
    IL_0022:  ldloc.0
    IL_0023:  ldarg.s    progress
    IL_0025:  stfld      class Game.CancellableProgress Game.CommunityContentManager/'<>c__DisplayClass8_0'::progress
    IL_002a:  ldloc.0
    IL_002b:  ldarg.s    success
    IL_002d:  stfld      class [System.Runtime]System.Action Game.CommunityContentManager/'<>c__DisplayClass8_0'::success
    IL_0032:  ldloc.0
    IL_0033:  ldarg.s    failure
    IL_0035:  stfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.CommunityContentManager/'<>c__DisplayClass8_0'::failure
    IL_003a:  ldloc.0
    IL_003b:  ldloc.0
    IL_003c:  ldfld      class Game.CancellableProgress Game.CommunityContentManager/'<>c__DisplayClass8_0'::progress
    IL_0041:  dup
    IL_0042:  brtrue.s   IL_004a

    IL_0044:  pop
    IL_0045:  newobj     instance void Game.CancellableProgress::.ctor()
    IL_004a:  stfld      class Game.CancellableProgress Game.CommunityContentManager/'<>c__DisplayClass8_0'::progress
    IL_004f:  call       bool Game.WebManager::IsInternetConnectionAvailable()
    IL_0054:  brtrue.s   IL_006c

    IL_0056:  ldloc.0
    IL_0057:  ldfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.CommunityContentManager/'<>c__DisplayClass8_0'::failure
    IL_005c:  ldstr      "Internet connection is unavailable."
    IL_0061:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0066:  callvirt   instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::Invoke(!0)
    IL_006b:  ret

    IL_006c:  ldloc.0
    IL_006d:  ldfld      string Game.CommunityContentManager/'<>c__DisplayClass8_0'::address
    IL_0072:  ldnull
    IL_0073:  ldnull
    IL_0074:  ldloc.0
    IL_0075:  ldfld      class Game.CancellableProgress Game.CommunityContentManager/'<>c__DisplayClass8_0'::progress
    IL_007a:  ldloc.0
    IL_007b:  ldftn      instance void Game.CommunityContentManager/'<>c__DisplayClass8_0'::'<Download>b__0'(uint8[])
    IL_0081:  newobj     instance void class [System.Runtime]System.Action`1<uint8[]>::.ctor(object,
                                                                                             native int)
    IL_0086:  ldloc.0
    IL_0087:  ldftn      instance void Game.CommunityContentManager/'<>c__DisplayClass8_0'::'<Download>b__7'(class [System.Runtime]System.Exception)
    IL_008d:  newobj     instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::.ctor(object,
                                                                                                                            native int)
    IL_0092:  call       void Game.WebManager::Get(string,
                                                   class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>,
                                                   class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>,
                                                   class Game.CancellableProgress,
                                                   class [System.Runtime]System.Action`1<uint8[]>,
                                                   class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
    IL_0097:  ret
  } // end of method CommunityContentManager::Download

  .method public hidebysig static void  Publish(string address,
                                                string name,
                                                valuetype Game.ExternalContentType 'type',
                                                string userId,
                                                class Game.CancellableProgress progress,
                                                class [System.Runtime]System.Action success,
                                                class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> failure) cil managed
  {
    // 代码大小       185 (0xb9)
    .maxstack  6
    .locals init (class Game.CommunityContentManager/'<>c__DisplayClass9_0' V_0)
    IL_0000:  newobj     instance void Game.CommunityContentManager/'<>c__DisplayClass9_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.3
    IL_0008:  stfld      string Game.CommunityContentManager/'<>c__DisplayClass9_0'::userId
    IL_000d:  ldloc.0
    IL_000e:  ldarg.1
    IL_000f:  stfld      string Game.CommunityContentManager/'<>c__DisplayClass9_0'::name
    IL_0014:  ldloc.0
    IL_0015:  ldarg.0
    IL_0016:  stfld      string Game.CommunityContentManager/'<>c__DisplayClass9_0'::address
    IL_001b:  ldloc.0
    IL_001c:  ldarg.2
    IL_001d:  stfld      valuetype Game.ExternalContentType Game.CommunityContentManager/'<>c__DisplayClass9_0'::'type'
    IL_0022:  ldloc.0
    IL_0023:  ldarg.s    progress
    IL_0025:  stfld      class Game.CancellableProgress Game.CommunityContentManager/'<>c__DisplayClass9_0'::progress
    IL_002a:  ldloc.0
    IL_002b:  ldarg.s    success
    IL_002d:  stfld      class [System.Runtime]System.Action Game.CommunityContentManager/'<>c__DisplayClass9_0'::success
    IL_0032:  ldloc.0
    IL_0033:  ldarg.s    failure
    IL_0035:  stfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.CommunityContentManager/'<>c__DisplayClass9_0'::failure
    IL_003a:  ldloc.0
    IL_003b:  ldloc.0
    IL_003c:  ldfld      class Game.CancellableProgress Game.CommunityContentManager/'<>c__DisplayClass9_0'::progress
    IL_0041:  dup
    IL_0042:  brtrue.s   IL_004a

    IL_0044:  pop
    IL_0045:  newobj     instance void Game.CancellableProgress::.ctor()
    IL_004a:  stfld      class Game.CancellableProgress Game.CommunityContentManager/'<>c__DisplayClass9_0'::progress
    IL_004f:  call       bool Game.MarketplaceManager::get_IsTrialMode()
    IL_0054:  brfalse.s  IL_006c

    IL_0056:  ldloc.0
    IL_0057:  ldfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.CommunityContentManager/'<>c__DisplayClass9_0'::failure
    IL_005c:  ldstr      "Cannot publish links in trial mode."
    IL_0061:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0066:  callvirt   instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::Invoke(!0)
    IL_006b:  ret

    IL_006c:  call       bool Game.WebManager::IsInternetConnectionAvailable()
    IL_0071:  brtrue.s   IL_0089

    IL_0073:  ldloc.0
    IL_0074:  ldfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.CommunityContentManager/'<>c__DisplayClass9_0'::failure
    IL_0079:  ldstr      "Internet connection is unavailable."
    IL_007e:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0083:  callvirt   instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::Invoke(!0)
    IL_0088:  ret

    IL_0089:  ldloc.0
    IL_008a:  ldfld      string Game.CommunityContentManager/'<>c__DisplayClass9_0'::address
    IL_008f:  ldloc.0
    IL_0090:  ldfld      string Game.CommunityContentManager/'<>c__DisplayClass9_0'::name
    IL_0095:  ldloc.0
    IL_0096:  ldfld      valuetype Game.ExternalContentType Game.CommunityContentManager/'<>c__DisplayClass9_0'::'type'
    IL_009b:  ldloc.0
    IL_009c:  ldfld      class Game.CancellableProgress Game.CommunityContentManager/'<>c__DisplayClass9_0'::progress
    IL_00a1:  ldloc.0
    IL_00a2:  ldftn      instance void Game.CommunityContentManager/'<>c__DisplayClass9_0'::'<Publish>b__0'(uint8[])
    IL_00a8:  newobj     instance void class [System.Runtime]System.Action`1<uint8[]>::.ctor(object,
                                                                                             native int)
    IL_00ad:  ldloc.0
    IL_00ae:  ldfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.CommunityContentManager/'<>c__DisplayClass9_0'::failure
    IL_00b3:  call       void Game.CommunityContentManager::VerifyLinkContent(string,
                                                                              string,
                                                                              valuetype Game.ExternalContentType,
                                                                              class Game.CancellableProgress,
                                                                              class [System.Runtime]System.Action`1<uint8[]>,
                                                                              class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
    IL_00b8:  ret
  } // end of method CommunityContentManager::Publish

  .method public hidebysig static void  Delete(string address,
                                               string userId,
                                               class Game.CancellableProgress progress,
                                               class [System.Runtime]System.Action success,
                                               class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> failure) cil managed
  {
    // 代码大小       222 (0xde)
    .maxstack  8
    .locals init (class Game.CommunityContentManager/'<>c__DisplayClass10_0' V_0,
             class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> V_1,
             valuetype Game.Platform V_2)
    IL_0000:  newobj     instance void Game.CommunityContentManager/'<>c__DisplayClass10_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.3
    IL_0008:  stfld      class [System.Runtime]System.Action Game.CommunityContentManager/'<>c__DisplayClass10_0'::success
    IL_000d:  ldloc.0
    IL_000e:  ldarg.0
    IL_000f:  stfld      string Game.CommunityContentManager/'<>c__DisplayClass10_0'::address
    IL_0014:  ldloc.0
    IL_0015:  ldarg.1
    IL_0016:  stfld      string Game.CommunityContentManager/'<>c__DisplayClass10_0'::userId
    IL_001b:  ldloc.0
    IL_001c:  ldarg.s    failure
    IL_001e:  stfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.CommunityContentManager/'<>c__DisplayClass10_0'::failure
    IL_0023:  ldarg.2
    IL_0024:  dup
    IL_0025:  brtrue.s   IL_002d

    IL_0027:  pop
    IL_0028:  newobj     instance void Game.CancellableProgress::.ctor()
    IL_002d:  starg.s    progress
    IL_002f:  call       bool Game.WebManager::IsInternetConnectionAvailable()
    IL_0034:  brtrue.s   IL_004c

    IL_0036:  ldloc.0
    IL_0037:  ldfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.CommunityContentManager/'<>c__DisplayClass10_0'::failure
    IL_003c:  ldstr      "Internet connection is unavailable."
    IL_0041:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0046:  callvirt   instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::Invoke(!0)
    IL_004b:  ret

    IL_004c:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::.ctor()
    IL_0051:  stloc.1
    IL_0052:  ldloc.1
    IL_0053:  ldstr      "Action"
    IL_0058:  ldstr      "delete"
    IL_005d:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_0062:  ldloc.1
    IL_0063:  ldstr      "UserId"
    IL_0068:  ldloc.0
    IL_0069:  ldfld      string Game.CommunityContentManager/'<>c__DisplayClass10_0'::userId
    IL_006e:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_0073:  ldloc.1
    IL_0074:  ldstr      "Url"
    IL_0079:  ldloc.0
    IL_007a:  ldfld      string Game.CommunityContentManager/'<>c__DisplayClass10_0'::address
    IL_007f:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_0084:  ldloc.1
    IL_0085:  ldstr      "Platform"
    IL_008a:  call       valuetype Game.Platform Game.VersionsManager::get_Platform()
    IL_008f:  stloc.2
    IL_0090:  ldloca.s   V_2
    IL_0092:  constrained. Game.Platform
    IL_0098:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_009d:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_00a2:  ldloc.1
    IL_00a3:  ldstr      "Version"
    IL_00a8:  call       string Game.VersionsManager::get_Version()
    IL_00ad:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_00b2:  ldstr      "https://scresdir.appspot.com/resource"
    IL_00b7:  ldnull
    IL_00b8:  ldnull
    IL_00b9:  ldloc.1
    IL_00ba:  call       class [System.IO]System.IO.MemoryStream Game.WebManager::UrlParametersToStream(class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>)
    IL_00bf:  ldarg.2
    IL_00c0:  ldloc.0
    IL_00c1:  ldftn      instance void Game.CommunityContentManager/'<>c__DisplayClass10_0'::'<Delete>b__0'(uint8[])
    IL_00c7:  newobj     instance void class [System.Runtime]System.Action`1<uint8[]>::.ctor(object,
                                                                                             native int)
    IL_00cc:  ldloc.0
    IL_00cd:  ldftn      instance void Game.CommunityContentManager/'<>c__DisplayClass10_0'::'<Delete>b__1'(class [System.Runtime]System.Exception)
    IL_00d3:  newobj     instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::.ctor(object,
                                                                                                                            native int)
    IL_00d8:  call       void Game.WebManager::Post(string,
                                                    class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>,
                                                    class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>,
                                                    class [System.IO]System.IO.Stream,
                                                    class Game.CancellableProgress,
                                                    class [System.Runtime]System.Action`1<uint8[]>,
                                                    class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
    IL_00dd:  ret
  } // end of method CommunityContentManager::Delete

  .method public hidebysig static void  Rate(string address,
                                             string userId,
                                             int32 rating,
                                             class Game.CancellableProgress progress,
                                             class [System.Runtime]System.Action success,
                                             class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> failure) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  9
    IL_0000:  ldarg.2
    IL_0001:  ldc.i4.1
    IL_0002:  ldc.i4.5
    IL_0003:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_0008:  starg.s    rating
    IL_000a:  ldarg.0
    IL_000b:  ldstr      "Rating"
    IL_0010:  ldarga.s   rating
    IL_0012:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
    IL_0017:  call       instance string [System.Runtime]System.Int32::ToString(class [System.Runtime]System.IFormatProvider)
    IL_001c:  ldnull
    IL_001d:  ldc.i4.0
    IL_001e:  conv.i8
    IL_001f:  ldarg.1
    IL_0020:  ldarg.3
    IL_0021:  ldarg.s    success
    IL_0023:  ldarg.s    failure
    IL_0025:  call       void Game.CommunityContentManager::Feedback(string,
                                                                     string,
                                                                     string,
                                                                     string,
                                                                     int64,
                                                                     string,
                                                                     class Game.CancellableProgress,
                                                                     class [System.Runtime]System.Action,
                                                                     class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
    IL_002a:  ret
  } // end of method CommunityContentManager::Rate

  .method public hidebysig static void  Report(string address,
                                               string userId,
                                               string report,
                                               class Game.CancellableProgress progress,
                                               class [System.Runtime]System.Action success,
                                               class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> failure) cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  9
    IL_0000:  ldarg.0
    IL_0001:  ldstr      "Report"
    IL_0006:  ldarg.2
    IL_0007:  ldnull
    IL_0008:  ldc.i4.0
    IL_0009:  conv.i8
    IL_000a:  ldarg.1
    IL_000b:  ldarg.3
    IL_000c:  ldarg.s    success
    IL_000e:  ldarg.s    failure
    IL_0010:  call       void Game.CommunityContentManager::Feedback(string,
                                                                     string,
                                                                     string,
                                                                     string,
                                                                     int64,
                                                                     string,
                                                                     class Game.CancellableProgress,
                                                                     class [System.Runtime]System.Action,
                                                                     class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
    IL_0015:  ret
  } // end of method CommunityContentManager::Report

  .method public hidebysig static void  SendPlayTime(string address,
                                                     string userId,
                                                     float64 time,
                                                     class Game.CancellableProgress progress,
                                                     class [System.Runtime]System.Action success,
                                                     class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> failure) cil managed
  {
    // 代码大小       40 (0x28)
    .maxstack  9
    .locals init (float64 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldstr      "PlayTime"
    IL_0006:  ldarg.2
    IL_0007:  call       float64 [Engine]Engine.MathUtils::Round(float64)
    IL_000c:  stloc.0
    IL_000d:  ldloca.s   V_0
    IL_000f:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
    IL_0014:  call       instance string [System.Runtime]System.Double::ToString(class [System.Runtime]System.IFormatProvider)
    IL_0019:  ldnull
    IL_001a:  ldc.i4.0
    IL_001b:  conv.i8
    IL_001c:  ldarg.1
    IL_001d:  ldarg.3
    IL_001e:  ldarg.s    success
    IL_0020:  ldarg.s    failure
    IL_0022:  call       void Game.CommunityContentManager::Feedback(string,
                                                                     string,
                                                                     string,
                                                                     string,
                                                                     int64,
                                                                     string,
                                                                     class Game.CancellableProgress,
                                                                     class [System.Runtime]System.Action,
                                                                     class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
    IL_0027:  ret
  } // end of method CommunityContentManager::SendPlayTime

  .method private hidebysig static void  VerifyLinkContent(string address,
                                                           string name,
                                                           valuetype Game.ExternalContentType 'type',
                                                           class Game.CancellableProgress progress,
                                                           class [System.Runtime]System.Action`1<uint8[]> success,
                                                           class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> failure) cil managed
  {
    // 代码大小       69 (0x45)
    .maxstack  6
    .locals init (class Game.CommunityContentManager/'<>c__DisplayClass14_0' V_0)
    IL_0000:  newobj     instance void Game.CommunityContentManager/'<>c__DisplayClass14_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.2
    IL_0008:  stfld      valuetype Game.ExternalContentType Game.CommunityContentManager/'<>c__DisplayClass14_0'::'type'
    IL_000d:  ldloc.0
    IL_000e:  ldarg.s    success
    IL_0010:  stfld      class [System.Runtime]System.Action`1<uint8[]> Game.CommunityContentManager/'<>c__DisplayClass14_0'::success
    IL_0015:  ldloc.0
    IL_0016:  ldarg.s    failure
    IL_0018:  stfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.CommunityContentManager/'<>c__DisplayClass14_0'::failure
    IL_001d:  ldarg.3
    IL_001e:  dup
    IL_001f:  brtrue.s   IL_0027

    IL_0021:  pop
    IL_0022:  newobj     instance void Game.CancellableProgress::.ctor()
    IL_0027:  starg.s    progress
    IL_0029:  ldarg.0
    IL_002a:  ldnull
    IL_002b:  ldnull
    IL_002c:  ldarg.3
    IL_002d:  ldloc.0
    IL_002e:  ldftn      instance void Game.CommunityContentManager/'<>c__DisplayClass14_0'::'<VerifyLinkContent>b__0'(uint8[])
    IL_0034:  newobj     instance void class [System.Runtime]System.Action`1<uint8[]>::.ctor(object,
                                                                                             native int)
    IL_0039:  ldloc.0
    IL_003a:  ldfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.CommunityContentManager/'<>c__DisplayClass14_0'::failure
    IL_003f:  call       void Game.WebManager::Get(string,
                                                   class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>,
                                                   class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>,
                                                   class Game.CancellableProgress,
                                                   class [System.Runtime]System.Action`1<uint8[]>,
                                                   class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
    IL_0044:  ret
  } // end of method CommunityContentManager::VerifyLinkContent

  .method private hidebysig static void  Feedback(string address,
                                                  string feedback,
                                                  string feedbackParameter,
                                                  string hash,
                                                  int64 size,
                                                  string userId,
                                                  class Game.CancellableProgress progress,
                                                  class [System.Runtime]System.Action success,
                                                  class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> failure) cil managed
  {
    // 代码大小       330 (0x14a)
    .maxstack  8
    .locals init (class Game.CommunityContentManager/'<>c__DisplayClass15_0' V_0,
             string V_1,
             class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> V_2,
             valuetype Game.Platform V_3)
    IL_0000:  newobj     instance void Game.CommunityContentManager/'<>c__DisplayClass15_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.s    failure
    IL_0009:  stfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.CommunityContentManager/'<>c__DisplayClass15_0'::failure
    IL_000e:  ldloc.0
    IL_000f:  ldarg.s    success
    IL_0011:  stfld      class [System.Runtime]System.Action Game.CommunityContentManager/'<>c__DisplayClass15_0'::success
    IL_0016:  ldarg.s    progress
    IL_0018:  dup
    IL_0019:  brtrue.s   IL_0021

    IL_001b:  pop
    IL_001c:  newobj     instance void Game.CancellableProgress::.ctor()
    IL_0021:  starg.s    progress
    IL_0023:  call       bool Game.WebManager::IsInternetConnectionAvailable()
    IL_0028:  brtrue.s   IL_0040

    IL_002a:  ldloc.0
    IL_002b:  ldfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.CommunityContentManager/'<>c__DisplayClass15_0'::failure
    IL_0030:  ldstr      "Internet connection is unavailable."
    IL_0035:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_003a:  callvirt   instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::Invoke(!0)
    IL_003f:  ret

    IL_0040:  ldarg.0
    IL_0041:  ldarg.1
    IL_0042:  ldarg.s    userId
    IL_0044:  call       string Game.CommunityContentManager::MakeFeedbackCacheKey(string,
                                                                                   string,
                                                                                   string)
    IL_0049:  stloc.1
    IL_004a:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<string,bool> Game.CommunityContentManager::m_feedbackCache
    IL_004f:  ldloc.1
    IL_0050:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<string,bool>::ContainsKey(!0)
    IL_0055:  brfalse.s  IL_006a

    IL_0057:  ldloc.0
    IL_0058:  ldftn      instance void Game.CommunityContentManager/'<>c__DisplayClass15_0'::'<Feedback>b__0'()
    IL_005e:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0063:  call       class [System.Threading.Tasks]System.Threading.Tasks.Task [System.Threading.Tasks]System.Threading.Tasks.Task::Run(class [System.Runtime]System.Action)
    IL_0068:  pop
    IL_0069:  ret

    IL_006a:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<string,bool> Game.CommunityContentManager::m_feedbackCache
    IL_006f:  ldloc.1
    IL_0070:  ldc.i4.1
    IL_0071:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,bool>::set_Item(!0,
                                                                                                                                !1)
    IL_0076:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::.ctor()
    IL_007b:  stloc.2
    IL_007c:  ldloc.2
    IL_007d:  ldstr      "Action"
    IL_0082:  ldstr      "feedback"
    IL_0087:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_008c:  ldloc.2
    IL_008d:  ldstr      "Feedback"
    IL_0092:  ldarg.1
    IL_0093:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_0098:  ldarg.2
    IL_0099:  brfalse.s  IL_00a7

    IL_009b:  ldloc.2
    IL_009c:  ldstr      "FeedbackParameter"
    IL_00a1:  ldarg.2
    IL_00a2:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_00a7:  ldloc.2
    IL_00a8:  ldstr      "UserId"
    IL_00ad:  ldarg.s    userId
    IL_00af:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_00b4:  ldarg.0
    IL_00b5:  brfalse.s  IL_00c3

    IL_00b7:  ldloc.2
    IL_00b8:  ldstr      "Url"
    IL_00bd:  ldarg.0
    IL_00be:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_00c3:  ldarg.3
    IL_00c4:  brfalse.s  IL_00d2

    IL_00c6:  ldloc.2
    IL_00c7:  ldstr      "Hash"
    IL_00cc:  ldarg.3
    IL_00cd:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_00d2:  ldarg.s    size
    IL_00d4:  ldc.i4.0
    IL_00d5:  conv.i8
    IL_00d6:  ble.s      IL_00ef

    IL_00d8:  ldloc.2
    IL_00d9:  ldstr      "Size"
    IL_00de:  ldarga.s   size
    IL_00e0:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
    IL_00e5:  call       instance string [System.Runtime]System.Int64::ToString(class [System.Runtime]System.IFormatProvider)
    IL_00ea:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_00ef:  ldloc.2
    IL_00f0:  ldstr      "Platform"
    IL_00f5:  call       valuetype Game.Platform Game.VersionsManager::get_Platform()
    IL_00fa:  stloc.3
    IL_00fb:  ldloca.s   V_3
    IL_00fd:  constrained. Game.Platform
    IL_0103:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0108:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_010d:  ldloc.2
    IL_010e:  ldstr      "Version"
    IL_0113:  call       string Game.VersionsManager::get_Version()
    IL_0118:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::Add(!0,
                                                                                                                             !1)
    IL_011d:  ldstr      "https://scresdir.appspot.com/resource"
    IL_0122:  ldnull
    IL_0123:  ldnull
    IL_0124:  ldloc.2
    IL_0125:  call       class [System.IO]System.IO.MemoryStream Game.WebManager::UrlParametersToStream(class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>)
    IL_012a:  ldarg.s    progress
    IL_012c:  ldloc.0
    IL_012d:  ldftn      instance void Game.CommunityContentManager/'<>c__DisplayClass15_0'::'<Feedback>b__1'(uint8[])
    IL_0133:  newobj     instance void class [System.Runtime]System.Action`1<uint8[]>::.ctor(object,
                                                                                             native int)
    IL_0138:  ldloc.0
    IL_0139:  ldftn      instance void Game.CommunityContentManager/'<>c__DisplayClass15_0'::'<Feedback>b__2'(class [System.Runtime]System.Exception)
    IL_013f:  newobj     instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::.ctor(object,
                                                                                                                            native int)
    IL_0144:  call       void Game.WebManager::Post(string,
                                                    class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>,
                                                    class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>,
                                                    class [System.IO]System.IO.Stream,
                                                    class Game.CancellableProgress,
                                                    class [System.Runtime]System.Action`1<uint8[]>,
                                                    class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
    IL_0149:  ret
  } // end of method CommunityContentManager::Feedback

  .method private hidebysig static string 
          CalculateContentHashString(uint8[] data) cil managed
  {
    // 代码大小       37 (0x25)
    .maxstack  2
    .locals init (class [Windows]Windows.Storage.Streams.IBuffer V_0,
             uint8[] V_1)
    IL_0000:  call       string [Windows]Windows.Security.Cryptography.Core.HashAlgorithmNames::get_Sha1()
    IL_0005:  call       class [Windows]Windows.Security.Cryptography.Core.HashAlgorithmProvider [Windows]Windows.Security.Cryptography.Core.HashAlgorithmProvider::OpenAlgorithm(string)
    IL_000a:  ldarg.0
    IL_000b:  call       class [Windows]Windows.Storage.Streams.IBuffer [Windows]Windows.Security.Cryptography.CryptographicBuffer::CreateFromByteArray(uint8[])
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  callvirt   instance class [Windows]Windows.Storage.Streams.IBuffer [Windows]Windows.Security.Cryptography.Core.HashAlgorithmProvider::HashData(class [Windows]Windows.Storage.Streams.IBuffer)
    IL_0017:  ldloca.s   V_1
    IL_0019:  call       void [Windows]Windows.Security.Cryptography.CryptographicBuffer::CopyToByteArray(class [Windows]Windows.Storage.Streams.IBuffer,
                                                                                                          uint8[]&)
    IL_001e:  ldloc.1
    IL_001f:  call       string [System.Runtime.Extensions]System.Convert::ToBase64String(uint8[])
    IL_0024:  ret
  } // end of method CommunityContentManager::CalculateContentHashString

  .method private hidebysig static string 
          MakeFeedbackCacheKey(string address,
                               string feedback,
                               string userId) cil managed
  {
    // 代码大小       40 (0x28)
    .maxstack  8
    IL_0000:  ldc.i4.5
    IL_0001:  newarr     [System.Runtime]System.String
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldarg.0
    IL_0009:  stelem.ref
    IL_000a:  dup
    IL_000b:  ldc.i4.1
    IL_000c:  ldstr      "\n"
    IL_0011:  stelem.ref
    IL_0012:  dup
    IL_0013:  ldc.i4.2
    IL_0014:  ldarg.1
    IL_0015:  stelem.ref
    IL_0016:  dup
    IL_0017:  ldc.i4.3
    IL_0018:  ldstr      "\n"
    IL_001d:  stelem.ref
    IL_001e:  dup
    IL_001f:  ldc.i4.4
    IL_0020:  ldarg.2
    IL_0021:  stelem.ref
    IL_0022:  call       string [System.Runtime]System.String::Concat(string[])
    IL_0027:  ret
  } // end of method CommunityContentManager::MakeFeedbackCacheKey

  .method private hidebysig static string 
          MakeContentIdString(valuetype Game.ExternalContentType 'type',
                              string name) cil managed
  {
    // 代码大小       25 (0x19)
    .maxstack  8
    IL_0000:  ldarga.s   'type'
    IL_0002:  constrained. Game.ExternalContentType
    IL_0008:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_000d:  ldstr      ":"
    IL_0012:  ldarg.1
    IL_0013:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string,
                                                                      string)
    IL_0018:  ret
  } // end of method CommunityContentManager::MakeContentIdString

  .method private hidebysig static void  Load() cil managed
  {
    // 代码大小       239 (0xef)
    .maxstack  3
    .locals init (class [System.IO]System.IO.Stream V_0,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_1,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> V_2,
             string V_3,
             string V_4,
             string V_5,
             class [System.Runtime]System.Exception V_6)
    .try
    {
      IL_0000:  ldstr      "data:/CommunityContentCache.xml"
      IL_0005:  call       bool [Engine]Engine.Storage::FileExists(string)
      IL_000a:  brfalse    IL_00dc

      IL_000f:  ldstr      "data:/CommunityContentCache.xml"
      IL_0014:  ldc.i4.0
      IL_0015:  call       class [System.IO]System.IO.Stream [Engine]Engine.Storage::OpenFile(string,
                                                                                              valuetype [Engine]Engine.OpenFileMode)
      IL_001a:  stloc.0
      .try
      {
        IL_001b:  ldloc.0
        IL_001c:  ldnull
        IL_001d:  ldc.i4.1
        IL_001e:  call       class [System.Xml.XDocument]System.Xml.Linq.XElement [EntitySystem]XmlUtilities.XmlUtils::LoadXmlFromStream(class [System.IO]System.IO.Stream,
                                                                                                                                         class [System.Text.Encoding]System.Text.Encoding,
                                                                                                                                         bool)
        IL_0023:  stloc.1
        IL_0024:  ldloc.1
        IL_0025:  ldstr      "Feedback"
        IL_002a:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
        IL_002f:  callvirt   instance class [System.Xml.XDocument]System.Xml.Linq.XElement [System.Xml.XDocument]System.Xml.Linq.XContainer::Element(class [System.Xml.XDocument]System.Xml.Linq.XName)
        IL_0034:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements()
        IL_0039:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
        IL_003e:  stloc.2
        .try
        {
          IL_003f:  br.s       IL_005e

          IL_0041:  ldloc.2
          IL_0042:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
          IL_0047:  ldstr      "Key"
          IL_004c:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                                  string)
          IL_0051:  stloc.3
          IL_0052:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<string,bool> Game.CommunityContentManager::m_feedbackCache
          IL_0057:  ldloc.3
          IL_0058:  ldc.i4.1
          IL_0059:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,bool>::set_Item(!0,
                                                                                                                                      !1)
          IL_005e:  ldloc.2
          IL_005f:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
          IL_0064:  brtrue.s   IL_0041

          IL_0066:  leave.s    IL_0072

        }  // end .try
        finally
        {
          IL_0068:  ldloc.2
          IL_0069:  brfalse.s  IL_0071

          IL_006b:  ldloc.2
          IL_006c:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
          IL_0071:  endfinally
        }  // end handler
        IL_0072:  ldloc.1
        IL_0073:  ldstr      "Content"
        IL_0078:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
        IL_007d:  callvirt   instance class [System.Xml.XDocument]System.Xml.Linq.XElement [System.Xml.XDocument]System.Xml.Linq.XContainer::Element(class [System.Xml.XDocument]System.Xml.Linq.XName)
        IL_0082:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements()
        IL_0087:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
        IL_008c:  stloc.2
        .try
        {
          IL_008d:  br.s       IL_00bc

          IL_008f:  ldloc.2
          IL_0090:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
          IL_0095:  dup
          IL_0096:  ldstr      "Path"
          IL_009b:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                                  string)
          IL_00a0:  stloc.s    V_4
          IL_00a2:  ldstr      "Address"
          IL_00a7:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                                  string)
          IL_00ac:  stloc.s    V_5
          IL_00ae:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> Game.CommunityContentManager::m_idToAddressMap
          IL_00b3:  ldloc.s    V_4
          IL_00b5:  ldloc.s    V_5
          IL_00b7:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::set_Item(!0,
                                                                                                                                        !1)
          IL_00bc:  ldloc.2
          IL_00bd:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
          IL_00c2:  brtrue.s   IL_008f

          IL_00c4:  leave.s    IL_00d0

        }  // end .try
        finally
        {
          IL_00c6:  ldloc.2
          IL_00c7:  brfalse.s  IL_00cf

          IL_00c9:  ldloc.2
          IL_00ca:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
          IL_00cf:  endfinally
        }  // end handler
        IL_00d0:  leave.s    IL_00dc

      }  // end .try
      finally
      {
        IL_00d2:  ldloc.0
        IL_00d3:  brfalse.s  IL_00db

        IL_00d5:  ldloc.0
        IL_00d6:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_00db:  endfinally
      }  // end handler
      IL_00dc:  leave.s    IL_00ee

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_00de:  stloc.s    V_6
      IL_00e0:  ldstr      "Loading Community Content cache failed."
      IL_00e5:  ldloc.s    V_6
      IL_00e7:  call       void Game.ExceptionManager::ReportExceptionToUser(string,
                                                                             class [System.Runtime]System.Exception)
      IL_00ec:  leave.s    IL_00ee

    }  // end handler
    IL_00ee:  ret
  } // end of method CommunityContentManager::Load

  .method private hidebysig static void  Save() cil managed
  {
    // 代码大小       320 (0x140)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_1,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_2,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<string,bool> V_3,
             string V_4,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_5,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<string,string> V_6,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,string> V_7,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_8,
             class [System.IO]System.IO.Stream V_9,
             class [System.Runtime]System.Exception V_10)
    .try
    {
      IL_0000:  ldstr      "Cache"
      IL_0005:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
      IL_000a:  newobj     instance void [System.Xml.XDocument]System.Xml.Linq.XElement::.ctor(class [System.Xml.XDocument]System.Xml.Linq.XName)
      IL_000f:  stloc.0
      IL_0010:  ldstr      "Feedback"
      IL_0015:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
      IL_001a:  newobj     instance void [System.Xml.XDocument]System.Xml.Linq.XElement::.ctor(class [System.Xml.XDocument]System.Xml.Linq.XName)
      IL_001f:  stloc.1
      IL_0020:  ldloc.0
      IL_0021:  ldloc.1
      IL_0022:  callvirt   instance void [System.Xml.XDocument]System.Xml.Linq.XContainer::Add(object)
      IL_0027:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<string,bool> Game.CommunityContentManager::m_feedbackCache
      IL_002c:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<string,bool>::get_Keys()
      IL_0031:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<string,bool>::GetEnumerator()
      IL_0036:  stloc.3
      .try
      {
        IL_0037:  br.s       IL_0069

        IL_0039:  ldloca.s   V_3
        IL_003b:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<string,bool>::get_Current()
        IL_0040:  stloc.s    V_4
        IL_0042:  ldstr      "Item"
        IL_0047:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
        IL_004c:  newobj     instance void [System.Xml.XDocument]System.Xml.Linq.XElement::.ctor(class [System.Xml.XDocument]System.Xml.Linq.XName)
        IL_0051:  stloc.s    V_5
        IL_0053:  ldloc.s    V_5
        IL_0055:  ldstr      "Key"
        IL_005a:  ldloc.s    V_4
        IL_005c:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                         string,
                                                                                         object)
        IL_0061:  ldloc.1
        IL_0062:  ldloc.s    V_5
        IL_0064:  callvirt   instance void [System.Xml.XDocument]System.Xml.Linq.XContainer::Add(object)
        IL_0069:  ldloca.s   V_3
        IL_006b:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<string,bool>::MoveNext()
        IL_0070:  brtrue.s   IL_0039

        IL_0072:  leave.s    IL_0082

      }  // end .try
      finally
      {
        IL_0074:  ldloca.s   V_3
        IL_0076:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<string,bool>
        IL_007c:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_0081:  endfinally
      }  // end handler
      IL_0082:  ldstr      "Content"
      IL_0087:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
      IL_008c:  newobj     instance void [System.Xml.XDocument]System.Xml.Linq.XElement::.ctor(class [System.Xml.XDocument]System.Xml.Linq.XName)
      IL_0091:  stloc.2
      IL_0092:  ldloc.0
      IL_0093:  ldloc.2
      IL_0094:  callvirt   instance void [System.Xml.XDocument]System.Xml.Linq.XContainer::Add(object)
      IL_0099:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> Game.CommunityContentManager::m_idToAddressMap
      IL_009e:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::GetEnumerator()
      IL_00a3:  stloc.s    V_6
      .try
      {
        IL_00a5:  br.s       IL_00ef

        IL_00a7:  ldloca.s   V_6
        IL_00a9:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<string,string>::get_Current()
        IL_00ae:  stloc.s    V_7
        IL_00b0:  ldstr      "Item"
        IL_00b5:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
        IL_00ba:  newobj     instance void [System.Xml.XDocument]System.Xml.Linq.XElement::.ctor(class [System.Xml.XDocument]System.Xml.Linq.XName)
        IL_00bf:  stloc.s    V_8
        IL_00c1:  ldloc.s    V_8
        IL_00c3:  ldstr      "Path"
        IL_00c8:  ldloca.s   V_7
        IL_00ca:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,string>::get_Key()
        IL_00cf:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                         string,
                                                                                         object)
        IL_00d4:  ldloc.s    V_8
        IL_00d6:  ldstr      "Address"
        IL_00db:  ldloca.s   V_7
        IL_00dd:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,string>::get_Value()
        IL_00e2:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                         string,
                                                                                         object)
        IL_00e7:  ldloc.2
        IL_00e8:  ldloc.s    V_8
        IL_00ea:  callvirt   instance void [System.Xml.XDocument]System.Xml.Linq.XContainer::Add(object)
        IL_00ef:  ldloca.s   V_6
        IL_00f1:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<string,string>::MoveNext()
        IL_00f6:  brtrue.s   IL_00a7

        IL_00f8:  leave.s    IL_0108

      }  // end .try
      finally
      {
        IL_00fa:  ldloca.s   V_6
        IL_00fc:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<string,string>
        IL_0102:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_0107:  endfinally
      }  // end handler
      IL_0108:  ldstr      "data:/CommunityContentCache.xml"
      IL_010d:  ldc.i4.2
      IL_010e:  call       class [System.IO]System.IO.Stream [Engine]Engine.Storage::OpenFile(string,
                                                                                              valuetype [Engine]Engine.OpenFileMode)
      IL_0113:  stloc.s    V_9
      .try
      {
        IL_0115:  ldloc.0
        IL_0116:  ldloc.s    V_9
        IL_0118:  ldnull
        IL_0119:  ldc.i4.1
        IL_011a:  call       void [EntitySystem]XmlUtilities.XmlUtils::SaveXmlToStream(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                       class [System.IO]System.IO.Stream,
                                                                                       class [System.Text.Encoding]System.Text.Encoding,
                                                                                       bool)
        IL_011f:  leave.s    IL_012d

      }  // end .try
      finally
      {
        IL_0121:  ldloc.s    V_9
        IL_0123:  brfalse.s  IL_012c

        IL_0125:  ldloc.s    V_9
        IL_0127:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_012c:  endfinally
      }  // end handler
      IL_012d:  leave.s    IL_013f

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_012f:  stloc.s    V_10
      IL_0131:  ldstr      "Saving Community Content cache failed."
      IL_0136:  ldloc.s    V_10
      IL_0138:  call       void Game.ExceptionManager::ReportExceptionToUser(string,
                                                                             class [System.Runtime]System.Exception)
      IL_013d:  leave.s    IL_013f

    }  // end handler
    IL_013f:  ret
  } // end of method CommunityContentManager::Save

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       21 (0x15)
    .maxstack  8
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,string>::.ctor()
    IL_0005:  stsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<string,string> Game.CommunityContentManager::m_idToAddressMap
    IL_000a:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,bool>::.ctor()
    IL_000f:  stsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<string,bool> Game.CommunityContentManager::m_feedbackCache
    IL_0014:  ret
  } // end of method CommunityContentManager::.cctor

} // end of class Game.CommunityContentManager