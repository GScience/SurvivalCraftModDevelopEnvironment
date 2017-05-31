.class public abstract auto ansi sealed beforefieldinit Game.DatabaseManager
       extends [System.Runtime]System.Object
{
  .field private static class [EntitySystem]GameEntitySystem.GameDatabase m_gameDatabase
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

  .method public hidebysig static void  LoadDatabase() cil managed
  {
    // 代码大小       54 (0x36)
    .maxstack  8
    IL_0000:  ldsfld     class [EntitySystem]GameEntitySystem.GameDatabase Game.DatabaseManager::m_gameDatabase
    IL_0005:  brtrue.s   IL_002b

    IL_0007:  ldstr      "Database"
    IL_000c:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0011:  ldstr      "Database"
    IL_0016:  call       void Game.ContentManager::Dispose(string)
    IL_001b:  call       class [EntitySystem]TemplatesDatabase.Database [EntitySystem]TemplatesDatabase.XmlDatabaseSerializer::LoadDatabase(class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0020:  newobj     instance void [EntitySystem]GameEntitySystem.GameDatabase::.ctor(class [EntitySystem]TemplatesDatabase.Database)
    IL_0025:  stsfld     class [EntitySystem]GameEntitySystem.GameDatabase Game.DatabaseManager::m_gameDatabase
    IL_002a:  ret

    IL_002b:  ldstr      "Database already loaded."
    IL_0030:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0035:  throw
  } // end of method DatabaseManager::LoadDatabase

  .property class [EntitySystem]GameEntitySystem.GameDatabase
          GameDatabase()
  {
    .get class [EntitySystem]GameEntitySystem.GameDatabase Game.DatabaseManager::get_GameDatabase()
  } // end of property DatabaseManager::GameDatabase
} // end of class Game.DatabaseManager