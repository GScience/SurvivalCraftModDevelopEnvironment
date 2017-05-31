.class public auto ansi beforefieldinit Game.SubsystemEntityFactory
       extends [EntitySystem]GameEntitySystem.Subsystem
{
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<string,class [EntitySystem]TemplatesDatabase.ValuesDictionary> m_valueDictionaries
  .method public hidebysig instance class [EntitySystem]TemplatesDatabase.ValuesDictionary 
          GetValuesDictionary(string entityTemplateName,
                              bool throwIfNotFound) cil managed
  {
    // 代码大小       67 (0x43)
    .maxstack  4
    .locals init (class [EntitySystem]TemplatesDatabase.ValuesDictionary V_0,
             class [EntitySystem]TemplatesDatabase.DatabaseObject V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,class [EntitySystem]TemplatesDatabase.ValuesDictionary> Game.SubsystemEntityFactory::m_valueDictionaries
    IL_0006:  ldarg.1
    IL_0007:  ldloca.s   V_0
    IL_0009:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<string,class [EntitySystem]TemplatesDatabase.ValuesDictionary>::TryGetValue(!0,
                                                                                                                                                                                     !1&)
    IL_000e:  brtrue.s   IL_0041

    IL_0010:  ldarg.0
    IL_0011:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0016:  callvirt   instance class [EntitySystem]GameEntitySystem.GameDatabase [EntitySystem]GameEntitySystem.Project::get_GameDatabase()
    IL_001b:  callvirt   instance class [EntitySystem]TemplatesDatabase.Database [EntitySystem]GameEntitySystem.GameDatabase::get_Database()
    IL_0020:  ldarg.1
    IL_0021:  ldarg.0
    IL_0022:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0027:  callvirt   instance class [EntitySystem]GameEntitySystem.GameDatabase [EntitySystem]GameEntitySystem.Project::get_GameDatabase()
    IL_002c:  callvirt   instance class [EntitySystem]TemplatesDatabase.DatabaseObjectType [EntitySystem]GameEntitySystem.GameDatabase::get_EntityTemplateType()
    IL_0031:  ldarg.2
    IL_0032:  callvirt   instance class [EntitySystem]TemplatesDatabase.DatabaseObject [EntitySystem]TemplatesDatabase.Database::FindDatabaseObject(string,
                                                                                                                                                    class [EntitySystem]TemplatesDatabase.DatabaseObjectType,
                                                                                                                                                    bool)
    IL_0037:  stloc.1
    IL_0038:  ldarg.0
    IL_0039:  ldarg.1
    IL_003a:  ldloc.1
    IL_003b:  call       instance class [EntitySystem]TemplatesDatabase.ValuesDictionary Game.SubsystemEntityFactory::CacheEntityTemplate(string,
                                                                                                                                          class [EntitySystem]TemplatesDatabase.DatabaseObject)
    IL_0040:  stloc.0
    IL_0041:  ldloc.0
    IL_0042:  ret
  } // end of method SubsystemEntityFactory::GetValuesDictionary

  .method public hidebysig instance class [EntitySystem]GameEntitySystem.Entity 
          CreateEntity(string entityTemplateName,
                       bool throwIfNotFound) cil managed
  {
    // 代码大小       27 (0x1b)
    .maxstack  3
    .locals init (class [EntitySystem]TemplatesDatabase.ValuesDictionary V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance class [EntitySystem]TemplatesDatabase.ValuesDictionary Game.SubsystemEntityFactory::GetValuesDictionary(string,
                                                                                                                                          bool)
    IL_0008:  stloc.0
    IL_0009:  ldloc.0
    IL_000a:  brtrue.s   IL_000e

    IL_000c:  ldnull
    IL_000d:  ret

    IL_000e:  ldarg.0
    IL_000f:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0014:  ldloc.0
    IL_0015:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Project::CreateEntity(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_001a:  ret
  } // end of method SubsystemEntityFactory::CreateEntity

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       93 (0x5d)
    .maxstack  3
    .locals init (class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [EntitySystem]TemplatesDatabase.DatabaseObject> V_0,
             class [EntitySystem]TemplatesDatabase.DatabaseObject V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0006:  callvirt   instance class [EntitySystem]GameEntitySystem.GameDatabase [EntitySystem]GameEntitySystem.Project::get_GameDatabase()
    IL_000b:  callvirt   instance class [EntitySystem]TemplatesDatabase.Database [EntitySystem]GameEntitySystem.GameDatabase::get_Database()
    IL_0010:  callvirt   instance class [EntitySystem]TemplatesDatabase.DatabaseObject [EntitySystem]TemplatesDatabase.Database::get_Root()
    IL_0015:  ldarg.0
    IL_0016:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_001b:  callvirt   instance class [EntitySystem]GameEntitySystem.GameDatabase [EntitySystem]GameEntitySystem.Project::get_GameDatabase()
    IL_0020:  callvirt   instance class [EntitySystem]TemplatesDatabase.DatabaseObjectType [EntitySystem]GameEntitySystem.GameDatabase::get_EntityTemplateType()
    IL_0025:  ldc.i4.0
    IL_0026:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [EntitySystem]TemplatesDatabase.DatabaseObject> [EntitySystem]TemplatesDatabase.DatabaseObject::GetExplicitNestingChildren(class [EntitySystem]TemplatesDatabase.DatabaseObjectType,
                                                                                                                                                                                                                                  bool)
    IL_002b:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [EntitySystem]TemplatesDatabase.DatabaseObject>::GetEnumerator()
    IL_0030:  stloc.0
    .try
    {
      IL_0031:  br.s       IL_0048

      IL_0033:  ldloc.0
      IL_0034:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [EntitySystem]TemplatesDatabase.DatabaseObject>::get_Current()
      IL_0039:  stloc.1
      IL_003a:  ldarg.0
      IL_003b:  ldloc.1
      IL_003c:  callvirt   instance string [EntitySystem]TemplatesDatabase.DatabaseObject::get_Name()
      IL_0041:  ldloc.1
      IL_0042:  call       instance class [EntitySystem]TemplatesDatabase.ValuesDictionary Game.SubsystemEntityFactory::CacheEntityTemplate(string,
                                                                                                                                            class [EntitySystem]TemplatesDatabase.DatabaseObject)
      IL_0047:  pop
      IL_0048:  ldloc.0
      IL_0049:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_004e:  brtrue.s   IL_0033

      IL_0050:  leave.s    IL_005c

    }  // end .try
    finally
    {
      IL_0052:  ldloc.0
      IL_0053:  brfalse.s  IL_005b

      IL_0055:  ldloc.0
      IL_0056:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_005b:  endfinally
    }  // end handler
    IL_005c:  ret
  } // end of method SubsystemEntityFactory::Load

  .method private hidebysig instance class [EntitySystem]TemplatesDatabase.ValuesDictionary 
          CacheEntityTemplate(string entityTemplateName,
                              class [EntitySystem]TemplatesDatabase.DatabaseObject entityTemplate) cil managed
  {
    // 代码大小       46 (0x2e)
    .maxstack  3
    .locals init (class [EntitySystem]TemplatesDatabase.ValuesDictionary V_0)
    IL_0000:  ldarg.2
    IL_0001:  brfalse.s  IL_001f

    IL_0003:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
    IL_0008:  stloc.0
    IL_0009:  ldloc.0
    IL_000a:  ldarg.2
    IL_000b:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::PopulateFromDatabaseObject(class [EntitySystem]TemplatesDatabase.DatabaseObject)
    IL_0010:  ldarg.0
    IL_0011:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,class [EntitySystem]TemplatesDatabase.ValuesDictionary> Game.SubsystemEntityFactory::m_valueDictionaries
    IL_0016:  ldarg.1
    IL_0017:  ldloc.0
    IL_0018:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,class [EntitySystem]TemplatesDatabase.ValuesDictionary>::Add(!0,
                                                                                                                                                                             !1)
    IL_001d:  ldloc.0
    IL_001e:  ret

    IL_001f:  ldarg.0
    IL_0020:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,class [EntitySystem]TemplatesDatabase.ValuesDictionary> Game.SubsystemEntityFactory::m_valueDictionaries
    IL_0025:  ldarg.1
    IL_0026:  ldnull
    IL_0027:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,class [EntitySystem]TemplatesDatabase.ValuesDictionary>::Add(!0,
                                                                                                                                                                             !1)
    IL_002c:  ldnull
    IL_002d:  ret
  } // end of method SubsystemEntityFactory::CacheEntityTemplate

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,class [EntitySystem]TemplatesDatabase.ValuesDictionary>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,class [EntitySystem]TemplatesDatabase.ValuesDictionary> Game.SubsystemEntityFactory::m_valueDictionaries
    IL_000b:  ldarg.0
    IL_000c:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_0011:  ret
  } // end of method SubsystemEntityFactory::.ctor

} // end of class Game.SubsystemEntityFactory