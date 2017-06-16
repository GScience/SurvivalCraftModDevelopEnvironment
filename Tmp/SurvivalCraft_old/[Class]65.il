.class public auto ansi beforefieldinit Game.ComponentMount
       extends [EntitySystem]GameEntitySystem.Component
{
  .field private class Game.ComponentBody '<ComponentBody>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Vector3 '<MountOffset>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Vector3 '<DismountOffset>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance class Game.ComponentBody 
          get_ComponentBody() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentBody Game.ComponentMount::'<ComponentBody>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentMount::get_ComponentBody

  .method private hidebysig specialname instance void 
          set_ComponentBody(class Game.ComponentBody 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.ComponentBody Game.ComponentMount::'<ComponentBody>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentMount::set_ComponentBody

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector3 
          get_MountOffset() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMount::'<MountOffset>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentMount::get_MountOffset

  .method private hidebysig specialname instance void 
          set_MountOffset(valuetype [Engine]Engine.Vector3 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentMount::'<MountOffset>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentMount::set_MountOffset

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector3 
          get_DismountOffset() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMount::'<DismountOffset>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentMount::get_DismountOffset

  .method private hidebysig specialname instance void 
          set_DismountOffset(valuetype [Engine]Engine.Vector3 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentMount::'<DismountOffset>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentMount::set_DismountOffset

  .method public hidebysig specialname instance class Game.ComponentRider 
          get_Rider() cil managed
  {
    // 代码大小       76 (0x4c)
    .maxstack  1
    .locals init (valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.ComponentBody> V_0,
             valuetype [Engine]Engine.ReadOnlyList`1<class Game.ComponentBody> V_1,
             class Game.ComponentRider V_2,
             class Game.ComponentRider V_3)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.ComponentBody Game.ComponentMount::get_ComponentBody()
    IL_0006:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.ComponentBody> Game.ComponentBody::get_ChildBodies()
    IL_000b:  stloc.1
    IL_000c:  ldloca.s   V_1
    IL_000e:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class Game.ComponentBody>::GetEnumerator()
    IL_0013:  stloc.0
    .try
    {
      IL_0014:  br.s       IL_002f

      IL_0016:  ldloca.s   V_0
      IL_0018:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.ComponentBody>::get_Current()
      IL_001d:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
      IL_0022:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentRider>()
      IL_0027:  stloc.2
      IL_0028:  ldloc.2
      IL_0029:  brfalse.s  IL_002f

      IL_002b:  ldloc.2
      IL_002c:  stloc.3
      IL_002d:  leave.s    IL_004a

      IL_002f:  ldloca.s   V_0
      IL_0031:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.ComponentBody>::MoveNext()
      IL_0036:  brtrue.s   IL_0016

      IL_0038:  leave.s    IL_0048

    }  // end .try
    finally
    {
      IL_003a:  ldloca.s   V_0
      IL_003c:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.ComponentBody>
      IL_0042:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0047:  endfinally
    }  // end handler
    IL_0048:  ldnull
    IL_0049:  ret

    IL_004a:  ldloc.3
    IL_004b:  ret
  } // end of method ComponentMount::get_Rider

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       53 (0x35)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentBody>(bool)
    IL_000d:  call       instance void Game.ComponentMount::set_ComponentBody(class Game.ComponentBody)
    IL_0012:  ldarg.0
    IL_0013:  ldarg.1
    IL_0014:  ldstr      "MountOffset"
    IL_0019:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype [Engine]Engine.Vector3>(string)
    IL_001e:  call       instance void Game.ComponentMount::set_MountOffset(valuetype [Engine]Engine.Vector3)
    IL_0023:  ldarg.0
    IL_0024:  ldarg.1
    IL_0025:  ldstr      "DismountOffset"
    IL_002a:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype [Engine]Engine.Vector3>(string)
    IL_002f:  call       instance void Game.ComponentMount::set_DismountOffset(valuetype [Engine]Engine.Vector3)
    IL_0034:  ret
  } // end of method ComponentMount::Load

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [EntitySystem]GameEntitySystem.Component::.ctor()
    IL_0006:  ret
  } // end of method ComponentMount::.ctor

  .property instance class Game.ComponentBody
          ComponentBody()
  {
    .get instance class Game.ComponentBody Game.ComponentMount::get_ComponentBody()
    .set instance void Game.ComponentMount::set_ComponentBody(class Game.ComponentBody)
  } // end of property ComponentMount::ComponentBody
  .property instance valuetype [Engine]Engine.Vector3
          MountOffset()
  {
    .get instance valuetype [Engine]Engine.Vector3 Game.ComponentMount::get_MountOffset()
    .set instance void Game.ComponentMount::set_MountOffset(valuetype [Engine]Engine.Vector3)
  } // end of property ComponentMount::MountOffset
  .property instance valuetype [Engine]Engine.Vector3
          DismountOffset()
  {
    .get instance valuetype [Engine]Engine.Vector3 Game.ComponentMount::get_DismountOffset()
    .set instance void Game.ComponentMount::set_DismountOffset(valuetype [Engine]Engine.Vector3)
  } // end of property ComponentMount::DismountOffset
  .property instance class Game.ComponentRider
          Rider()
  {
    .get instance class Game.ComponentRider Game.ComponentMount::get_Rider()
  } // end of property ComponentMount::Rider
} // end of class Game.ComponentMount