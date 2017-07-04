.class public auto ansi beforefieldinit Game.ComponentBlockEntity
       extends [EntitySystem]GameEntitySystem.Component
{
  .field private valuetype [Engine]Engine.Point3 '<Coordinates>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance valuetype [Engine]Engine.Point3 
          get_Coordinates() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Point3 Game.ComponentBlockEntity::'<Coordinates>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentBlockEntity::get_Coordinates

  .method private hidebysig specialname instance void 
          set_Coordinates(valuetype [Engine]Engine.Point3 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Point3 Game.ComponentBlockEntity::'<Coordinates>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentBlockEntity::set_Coordinates

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "Coordinates"
    IL_0007:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype [Engine]Engine.Point3>(string)
    IL_000c:  call       instance void Game.ComponentBlockEntity::set_Coordinates(valuetype [Engine]Engine.Point3)
    IL_0011:  ret
  } // end of method ComponentBlockEntity::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.EntityToIdMap entityToIdMap) cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldstr      "Coordinates"
    IL_0006:  ldarg.0
    IL_0007:  call       instance valuetype [Engine]Engine.Point3 Game.ComponentBlockEntity::get_Coordinates()
    IL_000c:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<valuetype [Engine]Engine.Point3>(string,
                                                                                                                                   !!0)
    IL_0011:  ret
  } // end of method ComponentBlockEntity::Save

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [EntitySystem]GameEntitySystem.Component::.ctor()
    IL_0006:  ret
  } // end of method ComponentBlockEntity::.ctor

  .property instance valuetype [Engine]Engine.Point3
          Coordinates()
  {
    .get instance valuetype [Engine]Engine.Point3 Game.ComponentBlockEntity::get_Coordinates()
    .set instance void Game.ComponentBlockEntity::set_Coordinates(valuetype [Engine]Engine.Point3)
  } // end of property ComponentBlockEntity::Coordinates
} // end of class Game.ComponentBlockEntity