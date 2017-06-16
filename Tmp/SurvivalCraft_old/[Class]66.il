.class public auto ansi beforefieldinit Game.ComponentName
       extends [EntitySystem]GameEntitySystem.Component
{
  .field private string m_name
  .method public hidebysig specialname instance string 
          get_Name() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Game.ComponentName::m_name
    IL_0006:  ret
  } // end of method ComponentName::get_Name

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "Name"
    IL_0007:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string)
    IL_000c:  stfld      string Game.ComponentName::m_name
    IL_0011:  ret
  } // end of method ComponentName::Load

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [EntitySystem]GameEntitySystem.Component::.ctor()
    IL_0006:  ret
  } // end of method ComponentName::.ctor

  .property instance string Name()
  {
    .get instance string Game.ComponentName::get_Name()
  } // end of property ComponentName::Name
} // end of class Game.ComponentName