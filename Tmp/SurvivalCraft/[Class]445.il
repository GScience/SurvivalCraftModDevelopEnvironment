.class public abstract auto ansi sealed beforefieldinit Game.DatabaseManager
       extends [System.Runtime]System.Object
{
  .field private static class [EntitySystem]GameEntitySystem.GameDatabase m_gameDatabase
  .field private static class [System.Collections]System.Collections.Generic.Dictionary`2<string,class [EntitySystem]TemplatesDatabase.ValuesDictionary> m_valueDictionaries
  .method public hidebysig specialname static 
          class [EntitySystem]GameEntitySystem.GameDatabase 
          get_GameDatabase() cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldsfld     class [EntitySystem]GameEntitySystem.GameDatabase Game.DatabaseManager::m_gameDatabase
    IL_0005:  brfalse.s  IL_000d

    IL_0007:  ldsfld     class [EntitySystem]GameEntitySystem.GameDatabase Game.DatabaseManager::m_gameDatabase
    IL_000c:  ret

    IL_000d:  ldstr      "Database not loaded."
    IL_0012:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0017:  throw
  } // end of method DatabaseManager::get_GameDatabase

  .method public hidebysig specialname static 
          class [System.Runtime]System.Collections.Generic.ICollection`1<class [EntitySystem]TemplatesDatabase.ValuesDictionary> 
          get_EntitiesValuesDictionaries() cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<string,class [EntitySystem]TemplatesDatabase.ValuesDictionary> Game.DatabaseManager::m_valueDictionaries
    IL_0005:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<string,class [EntitySystem]TemplatesDatabase.ValuesDictionary>::get_Values()
    IL_000a:  ret
  } // end of method DatabaseManager::get_EntitiesValuesDictionaries

  .method public hidebysig static void  Initialize() cil managed
  {
    // 代码大小       153 (0x99)
    .maxstack  3
    .locals init (class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [EntitySystem]TemplatesDatabase.DatabaseObject> V_0,
             class [EntitySystem]TemplatesDatabase.DatabaseObject V_1,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_2)
    IL_0000:  ldsfld     class [EntitySystem]GameEntitySystem.GameDatabase Game.DatabaseManager::m_gameDatabase
    IL_0005:  brtrue     IL_008d

    IL_000a:  ldstr      "Database"
    IL_000f:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0014:  ldstr      "Database"
    IL_0019:  call       void Game.ContentManager::Dispose(string)
    IL_001e:  call       class [EntitySystem]TemplatesDatabase.Database [EntitySystem]TemplatesDatabase.XmlDatabaseSerializer::LoadDatabase(class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0023:  newobj     instance void [EntitySystem]GameEntitySystem.GameDatabase::.ctor(class [EntitySystem]TemplatesDatabase.Database)
    IL_0028:  stsfld     class [EntitySystem]GameEntitySystem.GameDatabase Game.DatabaseManager::m_gameDatabase
    IL_002d:  call       class [EntitySystem]GameEntitySystem.GameDatabase Game.DatabaseManager::get_GameDatabase()
    IL_0032:  callvirt   instance class [EntitySystem]TemplatesDatabase.Database [EntitySystem]GameEntitySystem.GameDatabase::get_Database()
    IL_0037:  callvirt   instance class [EntitySystem]TemplatesDatabase.DatabaseObject [EntitySystem]TemplatesDatabase.Database::get_Root()
    IL_003c:  call       class [EntitySystem]GameEntitySystem.GameDatabase Game.DatabaseManager::get_GameDatabase()
    IL_0041:  callvirt   instance class [EntitySystem]TemplatesDatabase.DatabaseObjectType [EntitySystem]GameEntitySystem.GameDatabase::get_EntityTemplateType()
    IL_0046:  ldc.i4.0
    IL_0047:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [EntitySystem]TemplatesDatabase.DatabaseObject> [EntitySystem]TemplatesDatabase.DatabaseObject::GetExplicitNestingChildren(class [EntitySystem]TemplatesDatabase.DatabaseObjectType,
                                                                                                                                                                                                                                  bool)
    IL_004c:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [EntitySystem]TemplatesDatabase.DatabaseObject>::GetEnumerator()
    IL_0051:  stloc.0
    .try
    {
      IL_0052:  br.s       IL_0079

      IL_0054:  ldloc.0
      IL_0055:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [EntitySystem]TemplatesDatabase.DatabaseObject>::get_Current()
      IL_005a:  stloc.1
      IL_005b:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
      IL_0060:  stloc.2
      IL_0061:  ldloc.2
      IL_0062:  ldloc.1
      IL_0063:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::PopulateFromDatabaseObject(class [EntitySystem]TemplatesDatabase.DatabaseObject)
      IL_0068:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<string,class [EntitySystem]TemplatesDatabase.ValuesDictionary> Game.DatabaseManager::m_valueDictionaries
      IL_006d:  ldloc.1
      IL_006e:  callvirt   instance string [EntitySystem]TemplatesDatabase.DatabaseObject::get_Name()
      IL_0073:  ldloc.2
      IL_0074:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,class [EntitySystem]TemplatesDatabase.ValuesDictionary>::Add(!0,
                                                                                                                                                                               !1)
      IL_0079:  ldloc.0
      IL_007a:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_007f:  brtrue.s   IL_0054

      IL_0081:  leave.s    IL_0098

    }  // end .try
    finally
    {
      IL_0083:  ldloc.0
      IL_0084:  brfalse.s  IL_008c

      IL_0086:  ldloc.0
      IL_0087:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_008c:  endfinally
    }  // end handler
    IL_008d:  ldstr      "Database already loaded."
    IL_0092:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0097:  throw

    IL_0098:  ret
  } // end of method DatabaseManager::Initialize

  .method public hidebysig static class [EntitySystem]TemplatesDatabase.ValuesDictionary 
          FindEntityValuesDictionary(string entityTemplateName,
                                     bool throwIfNotFound) cil managed
  {
    // 代码大小       48 (0x30)
    .maxstack  5
    .locals init (class [EntitySystem]TemplatesDatabase.ValuesDictionary V_0)
    IL_0000:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<string,class [EntitySystem]TemplatesDatabase.ValuesDictionary> Game.DatabaseManager::m_valueDictionaries
    IL_0005:  ldarg.0
    IL_0006:  ldloca.s   V_0
    IL_0008:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<string,class [EntitySystem]TemplatesDatabase.ValuesDictionary>::TryGetValue(!0,
                                                                                                                                                                                     !1&)
    IL_000d:  ldc.i4.0
    IL_000e:  ceq
    IL_0010:  ldarg.1
    IL_0011:  and
    IL_0012:  brfalse.s  IL_002e

    IL_0014:  ldstr      "EntityTemplate \"{0}\" not found."
    IL_0019:  ldc.i4.1
    IL_001a:  newarr     [System.Runtime]System.Object
    IL_001f:  dup
    IL_0020:  ldc.i4.0
    IL_0021:  ldarg.0
    IL_0022:  stelem.ref
    IL_0023:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0028:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_002d:  throw

    IL_002e:  ldloc.0
    IL_002f:  ret
  } // end of method DatabaseManager::FindEntityValuesDictionary

  .method public hidebysig static class [EntitySystem]TemplatesDatabase.ValuesDictionary 
          FindValuesDictionaryForComponent(class [EntitySystem]TemplatesDatabase.ValuesDictionary entityVd,
                                           class [System.Runtime]System.Type componentType) cil managed
  {
    // 代码大小       115 (0x73)
    .maxstack  3
    .locals init (class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [EntitySystem]TemplatesDatabase.ValuesDictionary> V_0,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_1,
             class [System.Runtime]System.Type V_2,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_3)
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<object> [EntitySystem]TemplatesDatabase.ValuesDictionary::get_Values()
    IL_0006:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::OfType<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(class [System.Runtime]System.Collections.IEnumerable)
    IL_000b:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [EntitySystem]TemplatesDatabase.ValuesDictionary>::GetEnumerator()
    IL_0010:  stloc.0
    .try
    {
      IL_0011:  br.s       IL_005b

      IL_0013:  ldloc.0
      IL_0014:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [EntitySystem]TemplatesDatabase.ValuesDictionary>::get_Current()
      IL_0019:  stloc.1
      IL_001a:  ldloc.1
      IL_001b:  callvirt   instance class [EntitySystem]TemplatesDatabase.DatabaseObject [EntitySystem]TemplatesDatabase.ValuesDictionary::get_DatabaseObject()
      IL_0020:  callvirt   instance class [EntitySystem]TemplatesDatabase.DatabaseObjectType [EntitySystem]TemplatesDatabase.DatabaseObject::get_Type()
      IL_0025:  call       class [EntitySystem]GameEntitySystem.GameDatabase Game.DatabaseManager::get_GameDatabase()
      IL_002a:  callvirt   instance class [EntitySystem]TemplatesDatabase.DatabaseObjectType [EntitySystem]GameEntitySystem.GameDatabase::get_MemberComponentTemplateType()
      IL_002f:  bne.un.s   IL_005b

      IL_0031:  ldloc.1
      IL_0032:  ldstr      "Class"
      IL_0037:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string)
      IL_003c:  ldc.i4.1
      IL_003d:  ldc.i4.1
      IL_003e:  call       class [System.Runtime]System.Type [Engine]Engine.Serialization.TypeCache::FindType(string,
                                                                                                              bool,
                                                                                                              bool)
      IL_0043:  stloc.2
      IL_0044:  ldarg.1
      IL_0045:  call       class [System.Reflection]System.Reflection.TypeInfo [System.Reflection]System.Reflection.IntrospectionExtensions::GetTypeInfo(class [System.Runtime]System.Type)
      IL_004a:  ldloc.2
      IL_004b:  call       class [System.Reflection]System.Reflection.TypeInfo [System.Reflection]System.Reflection.IntrospectionExtensions::GetTypeInfo(class [System.Runtime]System.Type)
      IL_0050:  callvirt   instance bool [System.Reflection]System.Reflection.TypeInfo::IsAssignableFrom(class [System.Reflection]System.Reflection.TypeInfo)
      IL_0055:  brfalse.s  IL_005b

      IL_0057:  ldloc.1
      IL_0058:  stloc.3
      IL_0059:  leave.s    IL_0071

      IL_005b:  ldloc.0
      IL_005c:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0061:  brtrue.s   IL_0013

      IL_0063:  leave.s    IL_006f

    }  // end .try
    finally
    {
      IL_0065:  ldloc.0
      IL_0066:  brfalse.s  IL_006e

      IL_0068:  ldloc.0
      IL_0069:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_006e:  endfinally
    }  // end handler
    IL_006f:  ldnull
    IL_0070:  ret

    IL_0071:  ldloc.3
    IL_0072:  ret
  } // end of method DatabaseManager::FindValuesDictionaryForComponent

  .method public hidebysig static class [EntitySystem]GameEntitySystem.Entity 
          CreateEntity(class [EntitySystem]GameEntitySystem.Project project,
                       string entityTemplateName,
                       bool throwIfNotFound) cil managed
  {
    // 代码大小       21 (0x15)
    .maxstack  2
    .locals init (class [EntitySystem]TemplatesDatabase.ValuesDictionary V_0)
    IL_0000:  ldarg.1
    IL_0001:  ldarg.2
    IL_0002:  call       class [EntitySystem]TemplatesDatabase.ValuesDictionary Game.DatabaseManager::FindEntityValuesDictionary(string,
                                                                                                                                 bool)
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  brtrue.s   IL_000d

    IL_000b:  ldnull
    IL_000c:  ret

    IL_000d:  ldarg.0
    IL_000e:  ldloc.0
    IL_000f:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Project::CreateEntity(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0014:  ret
  } // end of method DatabaseManager::CreateEntity

  .method public hidebysig static class [EntitySystem]GameEntitySystem.Entity 
          CreateEntity(class [EntitySystem]GameEntitySystem.Project project,
                       string entityTemplateName,
                       class [EntitySystem]TemplatesDatabase.ValuesDictionary overrides,
                       bool throwIfNotFound) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  2
    .locals init (class [EntitySystem]TemplatesDatabase.ValuesDictionary V_0)
    IL_0000:  ldarg.1
    IL_0001:  ldarg.3
    IL_0002:  call       class [EntitySystem]TemplatesDatabase.ValuesDictionary Game.DatabaseManager::FindEntityValuesDictionary(string,
                                                                                                                                 bool)
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  brfalse.s  IL_001a

    IL_000b:  ldloc.0
    IL_000c:  ldarg.2
    IL_000d:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::ApplyOverrides(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0012:  ldarg.0
    IL_0013:  ldloc.0
    IL_0014:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Project::CreateEntity(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0019:  ret

    IL_001a:  ldnull
    IL_001b:  ret
  } // end of method DatabaseManager::CreateEntity

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,class [EntitySystem]TemplatesDatabase.ValuesDictionary>::.ctor()
    IL_0005:  stsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<string,class [EntitySystem]TemplatesDatabase.ValuesDictionary> Game.DatabaseManager::m_valueDictionaries
    IL_000a:  ret
  } // end of method DatabaseManager::.cctor

  .property class [EntitySystem]GameEntitySystem.GameDatabase
          GameDatabase()
  {
    .get class [EntitySystem]GameEntitySystem.GameDatabase Game.DatabaseManager::get_GameDatabase()
  } // end of property DatabaseManager::GameDatabase
  .property class [System.Runtime]System.Collections.Generic.ICollection`1<class [EntitySystem]TemplatesDatabase.ValuesDictionary>
          EntitiesValuesDictionaries()
  {
    .get class [System.Runtime]System.Collections.Generic.ICollection`1<class [EntitySystem]TemplatesDatabase.ValuesDictionary> Game.DatabaseManager::get_EntitiesValuesDictionaries()
  } // end of property DatabaseManager::EntitiesValuesDictionaries
} // end of class Game.DatabaseManager