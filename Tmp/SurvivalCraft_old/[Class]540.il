.class public auto ansi beforefieldinit Game.BestiaryScreen
       extends Game.Screen
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.BestiaryScreen/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<class Game.BestiaryCreatureInfo,int32> '<>9__2_2'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.BestiaryScreen/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.BestiaryScreen/'<>c' Game.BestiaryScreen/'<>c'::'<>9'
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
            '<.ctor>b__2_2'(class Game.BestiaryCreatureInfo ci) cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldfld      int32 Game.BestiaryCreatureInfo::Order
      IL_0006:  ret
    } // end of method '<>c'::'<.ctor>b__2_2'

  } // end of class '<>c'

  .field private class Game.ListPanelWidget m_creaturesList
  .field private class Game.Screen m_previousScreen
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       925 (0x39d)
    .maxstack  6
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0,
             class [System.Collections]System.Collections.Generic.List`1<class Game.BestiaryCreatureInfo> V_1,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [EntitySystem]TemplatesDatabase.ValuesDictionary> V_2,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_3,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_4,
             string V_5,
             int32 V_6,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_7,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_8,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_9,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_10,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_11,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_12,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_13,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_14,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_15,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_16,
             class Game.BestiaryCreatureInfo V_17,
             int32 V_18,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.BestiaryCreatureInfo> V_19,
             class Game.BestiaryCreatureInfo V_20)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Screen::.ctor()
    IL_0006:  ldstr      "Screens/BestiaryScreen"
    IL_000b:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0010:  stloc.0
    IL_0011:  ldarg.0
    IL_0012:  ldarg.0
    IL_0013:  ldloc.0
    IL_0014:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0019:  ldarg.0
    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0020:  ldstr      "CreaturesList"
    IL_0025:  ldc.i4.1
    IL_0026:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ListPanelWidget>(string,
                                                                                         bool)
    IL_002b:  stfld      class Game.ListPanelWidget Game.BestiaryScreen::m_creaturesList
    IL_0030:  ldarg.0
    IL_0031:  ldfld      class Game.ListPanelWidget Game.BestiaryScreen::m_creaturesList
    IL_0036:  ldarg.0
    IL_0037:  ldftn      instance class Game.Widget Game.BestiaryScreen::'<.ctor>b__2_0'(object)
    IL_003d:  newobj     instance void class [System.Runtime]System.Func`2<object,class Game.Widget>::.ctor(object,
                                                                                                            native int)
    IL_0042:  callvirt   instance void Game.ListPanelWidget::set_ItemWidgetFactory(class [System.Runtime]System.Func`2<object,class Game.Widget>)
    IL_0047:  ldarg.0
    IL_0048:  ldfld      class Game.ListPanelWidget Game.BestiaryScreen::m_creaturesList
    IL_004d:  ldarg.0
    IL_004e:  ldftn      instance void Game.BestiaryScreen::'<.ctor>b__2_1'(class Game.ListPanelWidget,
                                                                            object)
    IL_0054:  newobj     instance void class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object>::.ctor(object,
                                                                                                                       native int)
    IL_0059:  callvirt   instance void Game.ListPanelWidget::add_ItemClicked(class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object>)
    IL_005e:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.BestiaryCreatureInfo>::.ctor()
    IL_0063:  stloc.1
    IL_0064:  call       class [System.Runtime]System.Collections.Generic.ICollection`1<class [EntitySystem]TemplatesDatabase.ValuesDictionary> Game.DatabaseManager::get_EntitiesValuesDictionaries()
    IL_0069:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [EntitySystem]TemplatesDatabase.ValuesDictionary>::GetEnumerator()
    IL_006e:  stloc.2
    .try
    {
      IL_006f:  br         IL_032a

      IL_0074:  ldloc.2
      IL_0075:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [EntitySystem]TemplatesDatabase.ValuesDictionary>::get_Current()
      IL_007a:  stloc.3
      IL_007b:  ldloc.3
      IL_007c:  ldtoken    Game.ComponentCreature
      IL_0081:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
      IL_0086:  call       class [EntitySystem]TemplatesDatabase.ValuesDictionary Game.DatabaseManager::FindValuesDictionaryForComponent(class [EntitySystem]TemplatesDatabase.ValuesDictionary,
                                                                                                                                         class [System.Runtime]System.Type)
      IL_008b:  stloc.s    V_4
      IL_008d:  ldloc.s    V_4
      IL_008f:  brfalse    IL_032a

      IL_0094:  ldloc.s    V_4
      IL_0096:  ldstr      "DisplayName"
      IL_009b:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string)
      IL_00a0:  stloc.s    V_5
      IL_00a2:  ldloc.s    V_5
      IL_00a4:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
      IL_00a9:  brtrue     IL_032a

      IL_00ae:  ldc.i4.m1
      IL_00af:  stloc.s    V_6
      IL_00b1:  ldloc.3
      IL_00b2:  ldstr      "CreatureEggData"
      IL_00b7:  ldnull
      IL_00b8:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string,
                                                                                                                                                           !!0)
      IL_00bd:  stloc.s    V_7
      IL_00bf:  ldloc.3
      IL_00c0:  ldstr      "Player"
      IL_00c5:  ldnull
      IL_00c6:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string,
                                                                                                                                                           !!0)
      IL_00cb:  stloc.s    V_8
      IL_00cd:  ldloc.s    V_7
      IL_00cf:  brtrue.s   IL_00d8

      IL_00d1:  ldloc.s    V_8
      IL_00d3:  brfalse    IL_032a

      IL_00d8:  ldloc.s    V_7
      IL_00da:  brfalse.s  IL_00f6

      IL_00dc:  ldloc.s    V_7
      IL_00de:  ldstr      "EggTypeIndex"
      IL_00e3:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<int32>(string)
      IL_00e8:  stloc.s    V_18
      IL_00ea:  ldloc.s    V_18
      IL_00ec:  ldc.i4.0
      IL_00ed:  blt        IL_032a

      IL_00f2:  ldloc.s    V_18
      IL_00f4:  stloc.s    V_6
      IL_00f6:  ldloc.3
      IL_00f7:  ldtoken    Game.ComponentCreatureModel
      IL_00fc:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
      IL_0101:  call       class [EntitySystem]TemplatesDatabase.ValuesDictionary Game.DatabaseManager::FindValuesDictionaryForComponent(class [EntitySystem]TemplatesDatabase.ValuesDictionary,
                                                                                                                                         class [System.Runtime]System.Type)
      IL_0106:  stloc.s    V_9
      IL_0108:  ldloc.3
      IL_0109:  ldtoken    Game.ComponentBody
      IL_010e:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
      IL_0113:  call       class [EntitySystem]TemplatesDatabase.ValuesDictionary Game.DatabaseManager::FindValuesDictionaryForComponent(class [EntitySystem]TemplatesDatabase.ValuesDictionary,
                                                                                                                                         class [System.Runtime]System.Type)
      IL_0118:  stloc.s    V_10
      IL_011a:  ldloc.3
      IL_011b:  ldtoken    Game.ComponentHealth
      IL_0120:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
      IL_0125:  call       class [EntitySystem]TemplatesDatabase.ValuesDictionary Game.DatabaseManager::FindValuesDictionaryForComponent(class [EntitySystem]TemplatesDatabase.ValuesDictionary,
                                                                                                                                         class [System.Runtime]System.Type)
      IL_012a:  stloc.s    V_11
      IL_012c:  ldloc.3
      IL_012d:  ldtoken    Game.ComponentMiner
      IL_0132:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
      IL_0137:  call       class [EntitySystem]TemplatesDatabase.ValuesDictionary Game.DatabaseManager::FindValuesDictionaryForComponent(class [EntitySystem]TemplatesDatabase.ValuesDictionary,
                                                                                                                                         class [System.Runtime]System.Type)
      IL_013c:  stloc.s    V_12
      IL_013e:  ldloc.3
      IL_013f:  ldtoken    Game.ComponentLocomotion
      IL_0144:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
      IL_0149:  call       class [EntitySystem]TemplatesDatabase.ValuesDictionary Game.DatabaseManager::FindValuesDictionaryForComponent(class [EntitySystem]TemplatesDatabase.ValuesDictionary,
                                                                                                                                         class [System.Runtime]System.Type)
      IL_014e:  stloc.s    V_13
      IL_0150:  ldloc.3
      IL_0151:  ldtoken    Game.ComponentHerdBehavior
      IL_0156:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
      IL_015b:  call       class [EntitySystem]TemplatesDatabase.ValuesDictionary Game.DatabaseManager::FindValuesDictionaryForComponent(class [EntitySystem]TemplatesDatabase.ValuesDictionary,
                                                                                                                                         class [System.Runtime]System.Type)
      IL_0160:  stloc.s    V_14
      IL_0162:  ldloc.3
      IL_0163:  ldtoken    Game.ComponentMount
      IL_0168:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
      IL_016d:  call       class [EntitySystem]TemplatesDatabase.ValuesDictionary Game.DatabaseManager::FindValuesDictionaryForComponent(class [EntitySystem]TemplatesDatabase.ValuesDictionary,
                                                                                                                                         class [System.Runtime]System.Type)
      IL_0172:  stloc.s    V_15
      IL_0174:  ldloc.3
      IL_0175:  ldtoken    Game.ComponentLoot
      IL_017a:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
      IL_017f:  call       class [EntitySystem]TemplatesDatabase.ValuesDictionary Game.DatabaseManager::FindValuesDictionaryForComponent(class [EntitySystem]TemplatesDatabase.ValuesDictionary,
                                                                                                                                         class [System.Runtime]System.Type)
      IL_0184:  stloc.s    V_16
      IL_0186:  newobj     instance void Game.BestiaryCreatureInfo::.ctor()
      IL_018b:  dup
      IL_018c:  ldloc.s    V_6
      IL_018e:  stfld      int32 Game.BestiaryCreatureInfo::Order
      IL_0193:  dup
      IL_0194:  ldloc.s    V_5
      IL_0196:  stfld      string Game.BestiaryCreatureInfo::DisplayName
      IL_019b:  dup
      IL_019c:  ldloc.s    V_4
      IL_019e:  ldstr      "Description"
      IL_01a3:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string)
      IL_01a8:  stfld      string Game.BestiaryCreatureInfo::Description
      IL_01ad:  dup
      IL_01ae:  ldloc.s    V_9
      IL_01b0:  ldstr      "ModelName"
      IL_01b5:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string)
      IL_01ba:  stfld      string Game.BestiaryCreatureInfo::ModelName
      IL_01bf:  dup
      IL_01c0:  ldloc.s    V_9
      IL_01c2:  ldstr      "TextureOverride"
      IL_01c7:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string)
      IL_01cc:  stfld      string Game.BestiaryCreatureInfo::TextureOverride
      IL_01d1:  dup
      IL_01d2:  ldloc.s    V_10
      IL_01d4:  ldstr      "Mass"
      IL_01d9:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
      IL_01de:  stfld      float32 Game.BestiaryCreatureInfo::Mass
      IL_01e3:  dup
      IL_01e4:  ldloc.s    V_11
      IL_01e6:  ldstr      "AttackResilience"
      IL_01eb:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
      IL_01f0:  stfld      float32 Game.BestiaryCreatureInfo::AttackResilience
      IL_01f5:  dup
      IL_01f6:  ldloc.s    V_12
      IL_01f8:  brtrue.s   IL_0201

      IL_01fa:  ldc.r4     0.0
      IL_01ff:  br.s       IL_020d

      IL_0201:  ldloc.s    V_12
      IL_0203:  ldstr      "AttackPower"
      IL_0208:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
      IL_020d:  stfld      float32 Game.BestiaryCreatureInfo::AttackPower
      IL_0212:  dup
      IL_0213:  ldloc.s    V_13
      IL_0215:  ldstr      "WalkSpeed"
      IL_021a:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
      IL_021f:  ldloc.s    V_13
      IL_0221:  ldstr      "FlySpeed"
      IL_0226:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
      IL_022b:  ldloc.s    V_13
      IL_022d:  ldstr      "SwimSpeed"
      IL_0232:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
      IL_0237:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32,
                                                                 float32)
      IL_023c:  stfld      float32 Game.BestiaryCreatureInfo::MovementSpeed
      IL_0241:  dup
      IL_0242:  ldloc.s    V_13
      IL_0244:  ldstr      "JumpSpeed"
      IL_0249:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
      IL_024e:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
      IL_0253:  ldc.r4     20.
      IL_0258:  div
      IL_0259:  stfld      float32 Game.BestiaryCreatureInfo::JumpHeight
      IL_025e:  dup
      IL_025f:  ldloc.s    V_14
      IL_0261:  ldnull
      IL_0262:  cgt.un
      IL_0264:  stfld      bool Game.BestiaryCreatureInfo::IsHerding
      IL_0269:  dup
      IL_026a:  ldloc.s    V_15
      IL_026c:  ldnull
      IL_026d:  cgt.un
      IL_026f:  stfld      bool Game.BestiaryCreatureInfo::CanBeRidden
      IL_0274:  dup
      IL_0275:  ldloc.s    V_7
      IL_0277:  brtrue.s   IL_027c

      IL_0279:  ldc.i4.0
      IL_027a:  br.s       IL_0288

      IL_027c:  ldloc.s    V_7
      IL_027e:  ldstr      "ShowEgg"
      IL_0283:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<bool>(string)
      IL_0288:  stfld      bool Game.BestiaryCreatureInfo::HasSpawnerEgg
      IL_028d:  dup
      IL_028e:  ldloc.s    V_16
      IL_0290:  brtrue.s   IL_0299

      IL_0292:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ComponentLoot/Loot>::.ctor()
      IL_0297:  br.s       IL_02aa

      IL_0299:  ldloc.s    V_16
      IL_029b:  ldstr      "Loot"
      IL_02a0:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string)
      IL_02a5:  call       class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ComponentLoot/Loot> Game.ComponentLoot::ParseLootList(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
      IL_02aa:  stfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ComponentLoot/Loot> Game.BestiaryCreatureInfo::Loot
      IL_02af:  stloc.s    V_17
      IL_02b1:  ldloc.s    V_8
      IL_02b3:  brfalse.s  IL_0322

      IL_02b5:  ldloc.3
      IL_02b6:  callvirt   instance class [EntitySystem]TemplatesDatabase.DatabaseObject [EntitySystem]TemplatesDatabase.ValuesDictionary::get_DatabaseObject()
      IL_02bb:  callvirt   instance string [EntitySystem]TemplatesDatabase.DatabaseObject::get_Name()
      IL_02c0:  callvirt   instance string [System.Runtime]System.String::ToLower()
      IL_02c5:  ldstr      "female"
      IL_02ca:  callvirt   instance bool [System.Runtime]System.String::Contains(string)
      IL_02cf:  brfalse.s  IL_0322

      IL_02d1:  ldloc.s    V_17
      IL_02d3:  dup
      IL_02d4:  ldfld      float32 Game.BestiaryCreatureInfo::AttackPower
      IL_02d9:  ldc.r4     0.80000001
      IL_02de:  mul
      IL_02df:  stfld      float32 Game.BestiaryCreatureInfo::AttackPower
      IL_02e4:  ldloc.s    V_17
      IL_02e6:  dup
      IL_02e7:  ldfld      float32 Game.BestiaryCreatureInfo::AttackResilience
      IL_02ec:  ldc.r4     0.80000001
      IL_02f1:  mul
      IL_02f2:  stfld      float32 Game.BestiaryCreatureInfo::AttackResilience
      IL_02f7:  ldloc.s    V_17
      IL_02f9:  dup
      IL_02fa:  ldfld      float32 Game.BestiaryCreatureInfo::MovementSpeed
      IL_02ff:  ldc.r4     1.05
      IL_0304:  mul
      IL_0305:  stfld      float32 Game.BestiaryCreatureInfo::MovementSpeed
      IL_030a:  ldloc.s    V_17
      IL_030c:  dup
      IL_030d:  ldfld      float32 Game.BestiaryCreatureInfo::JumpHeight
      IL_0312:  ldc.r4     1.05
      IL_0317:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
      IL_031c:  mul
      IL_031d:  stfld      float32 Game.BestiaryCreatureInfo::JumpHeight
      IL_0322:  ldloc.1
      IL_0323:  ldloc.s    V_17
      IL_0325:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.BestiaryCreatureInfo>::Add(!0)
      IL_032a:  ldloc.2
      IL_032b:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0330:  brtrue     IL_0074

      IL_0335:  leave.s    IL_0341

    }  // end .try
    finally
    {
      IL_0337:  ldloc.2
      IL_0338:  brfalse.s  IL_0340

      IL_033a:  ldloc.2
      IL_033b:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0340:  endfinally
    }  // end handler
    IL_0341:  ldloc.1
    IL_0342:  ldsfld     class [System.Runtime]System.Func`2<class Game.BestiaryCreatureInfo,int32> Game.BestiaryScreen/'<>c'::'<>9__2_2'
    IL_0347:  dup
    IL_0348:  brtrue.s   IL_0361

    IL_034a:  pop
    IL_034b:  ldsfld     class Game.BestiaryScreen/'<>c' Game.BestiaryScreen/'<>c'::'<>9'
    IL_0350:  ldftn      instance int32 Game.BestiaryScreen/'<>c'::'<.ctor>b__2_2'(class Game.BestiaryCreatureInfo)
    IL_0356:  newobj     instance void class [System.Runtime]System.Func`2<class Game.BestiaryCreatureInfo,int32>::.ctor(object,
                                                                                                                         native int)
    IL_035b:  dup
    IL_035c:  stsfld     class [System.Runtime]System.Func`2<class Game.BestiaryCreatureInfo,int32> Game.BestiaryScreen/'<>c'::'<>9__2_2'
    IL_0361:  call       class [System.Linq]System.Linq.IOrderedEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::OrderBy<class Game.BestiaryCreatureInfo,int32>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                      class [System.Runtime]System.Func`2<!!0,!!1>)
    IL_0366:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.BestiaryCreatureInfo>::GetEnumerator()
    IL_036b:  stloc.s    V_19
    .try
    {
      IL_036d:  br.s       IL_0385

      IL_036f:  ldloc.s    V_19
      IL_0371:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.BestiaryCreatureInfo>::get_Current()
      IL_0376:  stloc.s    V_20
      IL_0378:  ldarg.0
      IL_0379:  ldfld      class Game.ListPanelWidget Game.BestiaryScreen::m_creaturesList
      IL_037e:  ldloc.s    V_20
      IL_0380:  callvirt   instance void Game.ListPanelWidget::AddItem(object)
      IL_0385:  ldloc.s    V_19
      IL_0387:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_038c:  brtrue.s   IL_036f

      IL_038e:  leave.s    IL_039c

    }  // end .try
    finally
    {
      IL_0390:  ldloc.s    V_19
      IL_0392:  brfalse.s  IL_039b

      IL_0394:  ldloc.s    V_19
      IL_0396:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_039b:  endfinally
    }  // end handler
    IL_039c:  ret
  } // end of method BestiaryScreen::.ctor

  .method public hidebysig virtual instance void 
          Enter(object[] parameters) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  8
    IL_0000:  call       class Game.Screen Game.ScreensManager::get_PreviousScreen()
    IL_0005:  ldstr      "BestiaryDescription"
    IL_000a:  call       !!0 Game.ScreensManager::FindScreen<class Game.Screen>(string)
    IL_000f:  beq.s      IL_001c

    IL_0011:  ldarg.0
    IL_0012:  call       class Game.Screen Game.ScreensManager::get_PreviousScreen()
    IL_0017:  stfld      class Game.Screen Game.BestiaryScreen::m_previousScreen
    IL_001c:  ldarg.0
    IL_001d:  ldfld      class Game.ListPanelWidget Game.BestiaryScreen::m_creaturesList
    IL_0022:  ldnull
    IL_0023:  callvirt   instance void Game.ListPanelWidget::set_SelectedItem(object)
    IL_0028:  ret
  } // end of method BestiaryScreen::Enter

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       68 (0x44)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0006:  callvirt   instance bool Game.WidgetInput::get_Back()
    IL_000b:  brtrue.s   IL_0032

    IL_000d:  ldarg.0
    IL_000e:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0013:  callvirt   instance bool Game.WidgetInput::get_Cancel()
    IL_0018:  brtrue.s   IL_0032

    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0020:  ldstr      "TopBar.Back"
    IL_0025:  ldc.i4.1
    IL_0026:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_002b:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0030:  brfalse.s  IL_0043

    IL_0032:  ldarg.0
    IL_0033:  ldfld      class Game.Screen Game.BestiaryScreen::m_previousScreen
    IL_0038:  ldc.i4.0
    IL_0039:  newarr     [System.Runtime]System.Object
    IL_003e:  call       void Game.ScreensManager::SwitchScreen(class Game.Screen,
                                                                object[])
    IL_0043:  ret
  } // end of method BestiaryScreen::Update

  .method public hidebysig static void  SetupBestiaryModelWidget(class Game.BestiaryCreatureInfo info,
                                                                 class Game.ModelWidget modelWidget,
                                                                 valuetype [Engine]Engine.Vector3 offset,
                                                                 bool autoRotate,
                                                                 bool autoAspect) cil managed
  {
    // 代码大小       388 (0x184)
    .maxstack  5
    .locals init (valuetype [Engine]Engine.Matrix[] V_0,
             valuetype [Engine]Engine.BoundingBox V_1,
             float32 V_2,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelBone> V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             float32 V_5,
             valuetype [Engine]Engine.Vector2 V_6)
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      string Game.BestiaryCreatureInfo::ModelName
    IL_0007:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_000c:  callvirt   instance void Game.ModelWidget::set_Model(class [Engine]Engine.Graphics.Model)
    IL_0011:  ldarg.1
    IL_0012:  ldarg.0
    IL_0013:  ldfld      string Game.BestiaryCreatureInfo::TextureOverride
    IL_0018:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_001d:  callvirt   instance void Game.ModelWidget::set_TextureOverride(class [Engine]Engine.Graphics.Texture2D)
    IL_0022:  ldarg.1
    IL_0023:  callvirt   instance class [Engine]Engine.Graphics.Model Game.ModelWidget::get_Model()
    IL_0028:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelBone> [Engine]Engine.Graphics.Model::get_Bones()
    IL_002d:  stloc.3
    IL_002e:  ldloca.s   V_3
    IL_0030:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelBone>::get_Count()
    IL_0035:  newarr     [Engine]Engine.Matrix
    IL_003a:  stloc.0
    IL_003b:  ldarg.1
    IL_003c:  callvirt   instance class [Engine]Engine.Graphics.Model Game.ModelWidget::get_Model()
    IL_0041:  ldloc.0
    IL_0042:  callvirt   instance void [Engine]Engine.Graphics.Model::CopyAbsoluteBoneTransformsTo(valuetype [Engine]Engine.Matrix[])
    IL_0047:  ldarg.1
    IL_0048:  callvirt   instance class [Engine]Engine.Graphics.Model Game.ModelWidget::get_Model()
    IL_004d:  ldloc.0
    IL_004e:  callvirt   instance valuetype [Engine]Engine.BoundingBox [Engine]Engine.Graphics.Model::CalculateAbsoluteBoundingBox(valuetype [Engine]Engine.Matrix[])
    IL_0053:  stloc.1
    IL_0054:  ldloca.s   V_1
    IL_0056:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Size()
    IL_005b:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0060:  ldc.r4     1.4
    IL_0065:  ldloca.s   V_1
    IL_0067:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Size()
    IL_006c:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0071:  mul
    IL_0072:  ldloca.s   V_1
    IL_0074:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Size()
    IL_0079:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_007e:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32,
                                                               float32)
    IL_0083:  stloc.2
    IL_0084:  ldarg.1
    IL_0085:  ldloca.s   V_1
    IL_0087:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Center()
    IL_008c:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0091:  ldc.r4     1.5
    IL_0096:  ldloca.s   V_1
    IL_0098:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Center()
    IL_009d:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00a2:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00a7:  ldc.r4     2.5999999
    IL_00ac:  ldloc.2
    IL_00ad:  ldc.r4     0.75
    IL_00b2:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_00b7:  mul
    IL_00b8:  ldarg.2
    IL_00b9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00be:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00c3:  callvirt   instance void Game.ModelWidget::set_ViewPosition(valuetype [Engine]Engine.Vector3)
    IL_00c8:  ldarg.1
    IL_00c9:  ldloca.s   V_1
    IL_00cb:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Center()
    IL_00d0:  callvirt   instance void Game.ModelWidget::set_ViewTarget(valuetype [Engine]Engine.Vector3)
    IL_00d5:  ldarg.1
    IL_00d6:  ldc.r4     0.30000001
    IL_00db:  callvirt   instance void Game.ModelWidget::set_ViewFov(float32)
    IL_00e0:  ldarg.1
    IL_00e1:  ldarg.3
    IL_00e2:  brtrue.s   IL_00eb

    IL_00e4:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_00e9:  br.s       IL_011f

    IL_00eb:  ldc.r4     0.0
    IL_00f0:  ldc.r4     1.7
    IL_00f5:  ldloca.s   V_1
    IL_00f7:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Size()
    IL_00fc:  stloc.s    V_4
    IL_00fe:  ldloca.s   V_4
    IL_0100:  call       instance float32 [Engine]Engine.Vector3::Length()
    IL_0105:  div
    IL_0106:  ldc.r4     0.25
    IL_010b:  ldc.r4     1.4
    IL_0110:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0115:  ldc.r4     0.0
    IL_011a:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_011f:  callvirt   instance void Game.ModelWidget::set_AutoRotationVector(valuetype [Engine]Engine.Vector3)
    IL_0124:  ldarg.s    autoAspect
    IL_0126:  brfalse.s  IL_0183

    IL_0128:  ldloca.s   V_1
    IL_012a:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Size()
    IL_012f:  stloc.s    V_4
    IL_0131:  ldloca.s   V_4
    IL_0133:  call       instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector3::get_XZ()
    IL_0138:  stloc.s    V_6
    IL_013a:  ldloca.s   V_6
    IL_013c:  call       instance float32 [Engine]Engine.Vector2::Length()
    IL_0141:  ldloca.s   V_1
    IL_0143:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Size()
    IL_0148:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_014d:  div
    IL_014e:  ldc.r4     1.
    IL_0153:  ldc.r4     1.5
    IL_0158:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_015d:  stloc.s    V_5
    IL_015f:  ldarg.1
    IL_0160:  ldarg.1
    IL_0161:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.ModelWidget::get_Size()
    IL_0166:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_016b:  ldloc.s    V_5
    IL_016d:  mul
    IL_016e:  ldarg.1
    IL_016f:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.ModelWidget::get_Size()
    IL_0174:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0179:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_017e:  callvirt   instance void Game.ModelWidget::set_Size(valuetype [Engine]Engine.Vector2)
    IL_0183:  ret
  } // end of method BestiaryScreen::SetupBestiaryModelWidget

  .method private hidebysig instance class Game.Widget 
          '<.ctor>b__2_0'(object item) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       181 (0xb5)
    .maxstack  6
    .locals init (class Game.BestiaryCreatureInfo V_0,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_1,
             class Game.ModelWidget V_2,
             valuetype [Engine]Engine.ReadOnlyList`1<object> V_3)
    IL_0000:  ldarg.1
    IL_0001:  castclass  Game.BestiaryCreatureInfo
    IL_0006:  stloc.0
    IL_0007:  ldstr      "Widgets/BestiaryItem"
    IL_000c:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0011:  stloc.1
    IL_0012:  ldarg.0
    IL_0013:  ldloc.1
    IL_0014:  ldnull
    IL_0015:  call       class Game.Widget Game.WidgetsManager::LoadWidget(object,
                                                                           class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                           class Game.ContainerWidget)
    IL_001a:  castclass  Game.ContainerWidget
    IL_001f:  dup
    IL_0020:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0025:  ldstr      "BestiaryItem.Model"
    IL_002a:  ldc.i4.1
    IL_002b:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ModelWidget>(string,
                                                                                     bool)
    IL_0030:  stloc.2
    IL_0031:  ldloc.0
    IL_0032:  ldloc.2
    IL_0033:  ldarg.0
    IL_0034:  ldfld      class Game.ListPanelWidget Game.BestiaryScreen::m_creaturesList
    IL_0039:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<object> Game.ListPanelWidget::get_Items()
    IL_003e:  stloc.3
    IL_003f:  ldloca.s   V_3
    IL_0041:  ldarg.1
    IL_0042:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<object>::IndexOf(!0)
    IL_0047:  ldc.i4.2
    IL_0048:  rem
    IL_0049:  brfalse.s  IL_0061

    IL_004b:  ldc.r4     1.
    IL_0050:  ldc.r4     0.0
    IL_0055:  ldc.r4     -1.
    IL_005a:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_005f:  br.s       IL_0075

    IL_0061:  ldc.r4     -1.
    IL_0066:  ldc.r4     0.0
    IL_006b:  ldc.r4     -1.
    IL_0070:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0075:  ldc.i4.0
    IL_0076:  ldc.i4.0
    IL_0077:  call       void Game.BestiaryScreen::SetupBestiaryModelWidget(class Game.BestiaryCreatureInfo,
                                                                            class Game.ModelWidget,
                                                                            valuetype [Engine]Engine.Vector3,
                                                                            bool,
                                                                            bool)
    IL_007c:  dup
    IL_007d:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0082:  ldstr      "BestiaryItem.Text"
    IL_0087:  ldc.i4.1
    IL_0088:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_008d:  ldloc.0
    IL_008e:  ldfld      string Game.BestiaryCreatureInfo::DisplayName
    IL_0093:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0098:  dup
    IL_0099:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_009e:  ldstr      "BestiaryItem.Details"
    IL_00a3:  ldc.i4.1
    IL_00a4:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_00a9:  ldloc.0
    IL_00aa:  ldfld      string Game.BestiaryCreatureInfo::Description
    IL_00af:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00b4:  ret
  } // end of method BestiaryScreen::'<.ctor>b__2_0'

  .method private hidebysig instance void 
          '<.ctor>b__2_1'(class Game.ListPanelWidget sender,
                          object item) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       50 (0x32)
    .maxstack  8
    IL_0000:  ldstr      "BestiaryDescription"
    IL_0005:  ldc.i4.2
    IL_0006:  newarr     [System.Runtime]System.Object
    IL_000b:  dup
    IL_000c:  ldc.i4.0
    IL_000d:  ldarg.2
    IL_000e:  stelem.ref
    IL_000f:  dup
    IL_0010:  ldc.i4.1
    IL_0011:  ldarg.0
    IL_0012:  ldfld      class Game.ListPanelWidget Game.BestiaryScreen::m_creaturesList
    IL_0017:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<object> Game.ListPanelWidget::get_Items()
    IL_001c:  box        valuetype [Engine]Engine.ReadOnlyList`1<object>
    IL_0021:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Cast<class Game.BestiaryCreatureInfo>(class [System.Runtime]System.Collections.IEnumerable)
    IL_0026:  call       class [System.Collections]System.Collections.Generic.List`1<!!0> [System.Linq]System.Linq.Enumerable::ToList<class Game.BestiaryCreatureInfo>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_002b:  stelem.ref
    IL_002c:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_0031:  ret
  } // end of method BestiaryScreen::'<.ctor>b__2_1'

} // end of class Game.BestiaryScreen