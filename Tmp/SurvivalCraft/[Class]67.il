.class public auto ansi beforefieldinit Game.ComponentLoot
       extends [EntitySystem]GameEntitySystem.Component
       implements Game.IUpdateable
{
  .class sequential ansi sealed nested public beforefieldinit Loot
         extends [System.Runtime]System.ValueType
  {
    .field public int32 Value
    .field public int32 MinCount
    .field public int32 MaxCount
    .field public float32 Probability
  } // end of class Loot

  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.ComponentLoot/'<>c' '<>9'
    .field public static class [System.Runtime]System.Comparison`1<valuetype Game.ComponentLoot/Loot> '<>9__8_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.ComponentLoot/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.ComponentLoot/'<>c' Game.ComponentLoot/'<>c'::'<>9'
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

    .method assembly hidebysig instance int32 
            '<ParseLootList>b__8_0'(valuetype Game.ComponentLoot/Loot l1,
                                    valuetype Game.ComponentLoot/Loot l2) cil managed
    {
      // 代码大小       14 (0xe)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldfld      int32 Game.ComponentLoot/Loot::Value
      IL_0006:  ldarg.2
      IL_0007:  ldfld      int32 Game.ComponentLoot/Loot::Value
      IL_000c:  sub
      IL_000d:  ret
    } // end of method '<>c'::'<ParseLootList>b__8_0'

  } // end of class '<>c'

  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class Game.SubsystemPickables m_subsystemPickables
  .field private class Game.ComponentCreature m_componentCreature
  .field private class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ComponentLoot/Loot> m_lootList
  .field private class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ComponentLoot/Loot> m_lootOnFireList
  .field private class Game.Random m_random
  .field private bool m_lootDropped
  .method public hidebysig static class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ComponentLoot/Loot> 
          ParseLootList(class [EntitySystem]TemplatesDatabase.ValuesDictionary lootVd) cil managed
  {
    // 代码大小       103 (0x67)
    .maxstack  3
    .locals init (class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ComponentLoot/Loot> V_0,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<object> V_1,
             string V_2)
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ComponentLoot/Loot>::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<object> [EntitySystem]TemplatesDatabase.ValuesDictionary::get_Values()
    IL_000c:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<object>::GetEnumerator()
    IL_0011:  stloc.1
    .try
    {
      IL_0012:  br.s       IL_002c

      IL_0014:  ldloc.1
      IL_0015:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<object>::get_Current()
      IL_001a:  castclass  [System.Runtime]System.String
      IL_001f:  stloc.2
      IL_0020:  ldloc.0
      IL_0021:  ldloc.2
      IL_0022:  call       valuetype Game.ComponentLoot/Loot Game.ComponentLoot::ParseLoot(string)
      IL_0027:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ComponentLoot/Loot>::Add(!0)
      IL_002c:  ldloc.1
      IL_002d:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0032:  brtrue.s   IL_0014

      IL_0034:  leave.s    IL_0040

    }  // end .try
    finally
    {
      IL_0036:  ldloc.1
      IL_0037:  brfalse.s  IL_003f

      IL_0039:  ldloc.1
      IL_003a:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_003f:  endfinally
    }  // end handler
    IL_0040:  ldloc.0
    IL_0041:  ldsfld     class [System.Runtime]System.Comparison`1<valuetype Game.ComponentLoot/Loot> Game.ComponentLoot/'<>c'::'<>9__8_0'
    IL_0046:  dup
    IL_0047:  brtrue.s   IL_0060

    IL_0049:  pop
    IL_004a:  ldsfld     class Game.ComponentLoot/'<>c' Game.ComponentLoot/'<>c'::'<>9'
    IL_004f:  ldftn      instance int32 Game.ComponentLoot/'<>c'::'<ParseLootList>b__8_0'(valuetype Game.ComponentLoot/Loot,
                                                                                          valuetype Game.ComponentLoot/Loot)
    IL_0055:  newobj     instance void class [System.Runtime]System.Comparison`1<valuetype Game.ComponentLoot/Loot>::.ctor(object,
                                                                                                                           native int)
    IL_005a:  dup
    IL_005b:  stsfld     class [System.Runtime]System.Comparison`1<valuetype Game.ComponentLoot/Loot> Game.ComponentLoot/'<>c'::'<>9__8_0'
    IL_0060:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ComponentLoot/Loot>::Sort(class [System.Runtime]System.Comparison`1<!0>)
    IL_0065:  ldloc.0
    IL_0066:  ret
  } // end of method ComponentLoot::ParseLootList

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentLoot::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       372 (0x174)
    .maxstack  6
    .locals init (valuetype [System.Runtime]System.Nullable`1<float64> V_0,
             class Game.ComponentOnFire V_1,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype Game.ComponentLoot/Loot> V_2,
             valuetype Game.ComponentLoot/Loot V_3,
             int32 V_4,
             int32 V_5,
             valuetype [Engine]Engine.Vector3 V_6,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_7,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> V_8)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ComponentLoot::m_lootDropped
    IL_0006:  brtrue     IL_0173

    IL_000b:  ldarg.0
    IL_000c:  ldfld      class Game.ComponentCreature Game.ComponentLoot::m_componentCreature
    IL_0011:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_0016:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentHealth::get_DeathTime()
    IL_001b:  stloc.0
    IL_001c:  ldloca.s   V_0
    IL_001e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_0023:  brfalse    IL_0173

    IL_0028:  ldarg.0
    IL_0029:  ldfld      class Game.SubsystemGameInfo Game.ComponentLoot::m_subsystemGameInfo
    IL_002e:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_0033:  ldarg.0
    IL_0034:  ldfld      class Game.ComponentCreature Game.ComponentLoot::m_componentCreature
    IL_0039:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_003e:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentHealth::get_DeathTime()
    IL_0043:  stloc.0
    IL_0044:  ldloca.s   V_0
    IL_0046:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float64>::get_Value()
    IL_004b:  ldarg.0
    IL_004c:  ldfld      class Game.ComponentCreature Game.ComponentLoot::m_componentCreature
    IL_0051:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_0056:  callvirt   instance float32 Game.ComponentHealth::get_CorpseDuration()
    IL_005b:  conv.r8
    IL_005c:  add
    IL_005d:  blt.un     IL_0173

    IL_0062:  ldarg.0
    IL_0063:  ldfld      class Game.ComponentCreature Game.ComponentLoot::m_componentCreature
    IL_0068:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_006d:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentOnFire>()
    IL_0072:  stloc.1
    IL_0073:  ldloc.1
    IL_0074:  brfalse.s  IL_007e

    IL_0076:  ldloc.1
    IL_0077:  callvirt   instance bool Game.ComponentOnFire::get_IsOnFire()
    IL_007c:  br.s       IL_007f

    IL_007e:  ldc.i4.0
    IL_007f:  ldarg.0
    IL_0080:  ldc.i4.1
    IL_0081:  stfld      bool Game.ComponentLoot::m_lootDropped
    IL_0086:  brtrue.s   IL_0090

    IL_0088:  ldarg.0
    IL_0089:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ComponentLoot/Loot> Game.ComponentLoot::m_lootList
    IL_008e:  br.s       IL_0096

    IL_0090:  ldarg.0
    IL_0091:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ComponentLoot/Loot> Game.ComponentLoot::m_lootOnFireList
    IL_0096:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ComponentLoot/Loot>::GetEnumerator()
    IL_009b:  stloc.2
    .try
    {
      IL_009c:  br         IL_0157

      IL_00a1:  ldloca.s   V_2
      IL_00a3:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype Game.ComponentLoot/Loot>::get_Current()
      IL_00a8:  stloc.3
      IL_00a9:  ldarg.0
      IL_00aa:  ldfld      class Game.Random Game.ComponentLoot::m_random
      IL_00af:  ldc.r4     0.0
      IL_00b4:  ldc.r4     1.
      IL_00b9:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_00be:  ldloc.3
      IL_00bf:  ldfld      float32 Game.ComponentLoot/Loot::Probability
      IL_00c4:  bge.un     IL_0157

      IL_00c9:  ldarg.0
      IL_00ca:  ldfld      class Game.Random Game.ComponentLoot::m_random
      IL_00cf:  ldloc.3
      IL_00d0:  ldfld      int32 Game.ComponentLoot/Loot::MinCount
      IL_00d5:  ldloc.3
      IL_00d6:  ldfld      int32 Game.ComponentLoot/Loot::MaxCount
      IL_00db:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                  int32)
      IL_00e0:  stloc.s    V_4
      IL_00e2:  ldc.i4.0
      IL_00e3:  stloc.s    V_5
      IL_00e5:  br.s       IL_0151

      IL_00e7:  ldarg.0
      IL_00e8:  ldfld      class Game.ComponentCreature Game.ComponentLoot::m_componentCreature
      IL_00ed:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
      IL_00f2:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
      IL_00f7:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
      IL_00fc:  ldarg.0
      IL_00fd:  ldfld      class Game.ComponentCreature Game.ComponentLoot::m_componentCreature
      IL_0102:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
      IL_0107:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
      IL_010c:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
      IL_0111:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0116:  ldc.r4     2.
      IL_011b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Division(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_0120:  stloc.s    V_6
      IL_0122:  ldarg.0
      IL_0123:  ldfld      class Game.SubsystemPickables Game.ComponentLoot::m_subsystemPickables
      IL_0128:  ldloc.3
      IL_0129:  ldfld      int32 Game.ComponentLoot/Loot::Value
      IL_012e:  ldc.i4.1
      IL_012f:  ldloc.s    V_6
      IL_0131:  ldloca.s   V_7
      IL_0133:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
      IL_0139:  ldloc.s    V_7
      IL_013b:  ldloca.s   V_8
      IL_013d:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
      IL_0143:  ldloc.s    V_8
      IL_0145:  callvirt   instance class Game.Pickable Game.SubsystemPickables::AddPickable(int32,
                                                                                             int32,
                                                                                             valuetype [Engine]Engine.Vector3,
                                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
      IL_014a:  pop
      IL_014b:  ldloc.s    V_5
      IL_014d:  ldc.i4.1
      IL_014e:  add
      IL_014f:  stloc.s    V_5
      IL_0151:  ldloc.s    V_5
      IL_0153:  ldloc.s    V_4
      IL_0155:  blt.s      IL_00e7

      IL_0157:  ldloca.s   V_2
      IL_0159:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype Game.ComponentLoot/Loot>::MoveNext()
      IL_015e:  brtrue     IL_00a1

      IL_0163:  leave.s    IL_0173

    }  // end .try
    finally
    {
      IL_0165:  ldloca.s   V_2
      IL_0167:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype Game.ComponentLoot/Loot>
      IL_016d:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0172:  endfinally
    }  // end handler
    IL_0173:  ret
  } // end of method ComponentLoot::Update

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       116 (0x74)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_000d:  stfld      class Game.SubsystemGameInfo Game.ComponentLoot::m_subsystemGameInfo
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemPickables>(bool)
    IL_001f:  stfld      class Game.SubsystemPickables Game.ComponentLoot::m_subsystemPickables
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>(bool)
    IL_0031:  stfld      class Game.ComponentCreature Game.ComponentLoot::m_componentCreature
    IL_0036:  ldarg.0
    IL_0037:  ldarg.1
    IL_0038:  ldstr      "LootDropped"
    IL_003d:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<bool>(string)
    IL_0042:  stfld      bool Game.ComponentLoot::m_lootDropped
    IL_0047:  ldarg.0
    IL_0048:  ldarg.1
    IL_0049:  ldstr      "Loot"
    IL_004e:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string)
    IL_0053:  call       class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ComponentLoot/Loot> Game.ComponentLoot::ParseLootList(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0058:  stfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ComponentLoot/Loot> Game.ComponentLoot::m_lootList
    IL_005d:  ldarg.0
    IL_005e:  ldarg.1
    IL_005f:  ldstr      "LootOnFire"
    IL_0064:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string)
    IL_0069:  call       class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ComponentLoot/Loot> Game.ComponentLoot::ParseLootList(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_006e:  stfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ComponentLoot/Loot> Game.ComponentLoot::m_lootOnFireList
    IL_0073:  ret
  } // end of method ComponentLoot::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.EntityToIdMap entityToIdMap) cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldstr      "LootDropped"
    IL_0006:  ldarg.0
    IL_0007:  ldfld      bool Game.ComponentLoot::m_lootDropped
    IL_000c:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<bool>(string,
                                                                                                        !!0)
    IL_0011:  ret
  } // end of method ComponentLoot::Save

  .method private hidebysig static valuetype Game.ComponentLoot/Loot 
          ParseLoot(string lootString) cil managed
  {
    // 代码大小       141 (0x8d)
    .maxstack  5
    .locals init (string[] V_0,
             class Game.Block V_1,
             valuetype Game.ComponentLoot/Loot V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  newarr     [System.Runtime]System.Char
    IL_0007:  dup
    IL_0008:  ldc.i4.0
    IL_0009:  ldc.i4.s   59
    IL_000b:  stelem.i2
    IL_000c:  callvirt   instance string[] [System.Runtime]System.String::Split(char[])
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldlen
    IL_0014:  conv.i4
    IL_0015:  ldc.i4.3
    IL_0016:  blt.s      IL_0082

    IL_0018:  ldloc.0
    IL_0019:  ldc.i4.0
    IL_001a:  ldelem.ref
    IL_001b:  ldc.i4.1
    IL_001c:  call       class Game.Block Game.BlocksManager::FindBlockByTypeName(string,
                                                                                  bool)
    IL_0021:  stloc.1
    IL_0022:  ldloca.s   V_2
    IL_0024:  initobj    Game.ComponentLoot/Loot
    IL_002a:  ldloca.s   V_2
    IL_002c:  ldloc.1
    IL_002d:  ldfld      int32 Game.Block::BlockIndex
    IL_0032:  stfld      int32 Game.ComponentLoot/Loot::Value
    IL_0037:  ldloca.s   V_2
    IL_0039:  ldloc.0
    IL_003a:  ldc.i4.1
    IL_003b:  ldelem.ref
    IL_003c:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
    IL_0041:  call       int32 [System.Runtime]System.Int32::Parse(string,
                                                                   class [System.Runtime]System.IFormatProvider)
    IL_0046:  stfld      int32 Game.ComponentLoot/Loot::MinCount
    IL_004b:  ldloca.s   V_2
    IL_004d:  ldloc.0
    IL_004e:  ldc.i4.2
    IL_004f:  ldelem.ref
    IL_0050:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
    IL_0055:  call       int32 [System.Runtime]System.Int32::Parse(string,
                                                                   class [System.Runtime]System.IFormatProvider)
    IL_005a:  stfld      int32 Game.ComponentLoot/Loot::MaxCount
    IL_005f:  ldloca.s   V_2
    IL_0061:  ldloc.0
    IL_0062:  ldlen
    IL_0063:  conv.i4
    IL_0064:  ldc.i4.4
    IL_0065:  bge.s      IL_006e

    IL_0067:  ldc.r4     1.
    IL_006c:  br.s       IL_007b

    IL_006e:  ldloc.0
    IL_006f:  ldc.i4.3
    IL_0070:  ldelem.ref
    IL_0071:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
    IL_0076:  call       float32 [System.Runtime]System.Single::Parse(string,
                                                                      class [System.Runtime]System.IFormatProvider)
    IL_007b:  stfld      float32 Game.ComponentLoot/Loot::Probability
    IL_0080:  ldloc.2
    IL_0081:  ret

    IL_0082:  ldstr      "Invalid loot string."
    IL_0087:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_008c:  throw
  } // end of method ComponentLoot::ParseLoot

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.ComponentLoot::m_random
    IL_000b:  ldarg.0
    IL_000c:  call       instance void [EntitySystem]GameEntitySystem.Component::.ctor()
    IL_0011:  ret
  } // end of method ComponentLoot::.ctor

  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentLoot::get_UpdateOrder()
  } // end of property ComponentLoot::UpdateOrder
} // end of class Game.ComponentLoot