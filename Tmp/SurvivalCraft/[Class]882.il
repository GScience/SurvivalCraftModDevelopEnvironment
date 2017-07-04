.class public auto ansi beforefieldinit Game.FurnitureInventoryPanel
       extends Game.CanvasWidget
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.FurnitureInventoryPanel/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<object,string> '<>9__23_2'
    .field public static class [System.Runtime]System.Action`1<object> '<>9__23_3'
    .field public static class [System.Runtime]System.Func`2<object,string> '<>9__23_10'
    .field public static class [System.Runtime]System.Action`1<object> '<>9__23_11'
    .field public static class [System.Runtime]System.Func`2<class Game.Widget,class Game.InventorySlotWidget> '<>9__27_0'
    .field public static class [System.Runtime]System.Func`2<class Game.InventorySlotWidget,bool> '<>9__27_1'
    .field public static class [System.Runtime]System.Func`2<object,string> '<>9__32_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.FurnitureInventoryPanel/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.FurnitureInventoryPanel/'<>c' Game.FurnitureInventoryPanel/'<>c'::'<>9'
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

    .method assembly hidebysig instance string 
            '<Update>b__23_2'(object t) cil managed
    {
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  castclass  class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>
      IL_0006:  callvirt   instance !0 class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>::get_Item1()
      IL_000b:  ret
    } // end of method '<>c'::'<Update>b__23_2'

    .method assembly hidebysig instance void 
            '<Update>b__23_3'(object t) cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  castclass  class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>
      IL_0006:  callvirt   instance !1 class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>::get_Item2()
      IL_000b:  callvirt   instance void [System.Runtime]System.Action::Invoke()
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__23_3'

    .method assembly hidebysig instance string 
            '<Update>b__23_10'(object t) cil managed
    {
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  castclass  class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>
      IL_0006:  callvirt   instance !0 class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>::get_Item1()
      IL_000b:  ret
    } // end of method '<>c'::'<Update>b__23_10'

    .method assembly hidebysig instance void 
            '<Update>b__23_11'(object t) cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  castclass  class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>
      IL_0006:  callvirt   instance !1 class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>::get_Item2()
      IL_000b:  callvirt   instance void [System.Runtime]System.Action::Invoke()
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__23_11'

    .method assembly hidebysig instance class Game.InventorySlotWidget 
            '<AssignInventorySlots>b__27_0'(class Game.Widget w) cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  isinst     Game.InventorySlotWidget
      IL_0006:  ret
    } // end of method '<>c'::'<AssignInventorySlots>b__27_0'

    .method assembly hidebysig instance bool 
            '<AssignInventorySlots>b__27_1'(class Game.InventorySlotWidget w) cil managed
    {
      // 代码大小       5 (0x5)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldnull
      IL_0002:  cgt.un
      IL_0004:  ret
    } // end of method '<>c'::'<AssignInventorySlots>b__27_1'

    .method assembly hidebysig instance string 
            '<ImportFurnitureSet>b__32_0'(object s) cil managed
    {
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  castclass  [System.Runtime]System.String
      IL_0006:  call       string Game.FurniturePacksManager::GetDisplayName(string)
      IL_000b:  ret
    } // end of method '<>c'::'<ImportFurnitureSet>b__32_0'

  } // end of class '<>c'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass30_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class Game.FurnitureSet furnitureSet
    .field public class Game.FurnitureInventoryPanel '<>4__this'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass30_0'::.ctor

    .method assembly hidebysig instance void 
            '<RenameFurnitureSet>b__0'(string s) cil managed
    {
      // 代码大小       27 (0x1b)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  brfalse.s  IL_001a

      IL_0003:  ldarg.0
      IL_0004:  ldfld      class Game.FurnitureSet Game.FurnitureInventoryPanel/'<>c__DisplayClass30_0'::furnitureSet
      IL_0009:  ldarg.1
      IL_000a:  stfld      string Game.FurnitureSet::Name
      IL_000f:  ldarg.0
      IL_0010:  ldfld      class Game.FurnitureInventoryPanel Game.FurnitureInventoryPanel/'<>c__DisplayClass30_0'::'<>4__this'
      IL_0015:  call       instance void Game.FurnitureInventoryPanel::Invalidate()
      IL_001a:  ret
    } // end of method '<>c__DisplayClass30_0'::'<RenameFurnitureSet>b__0'

  } // end of class '<>c__DisplayClass30_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass32_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class Game.SubsystemTerrain subsystemTerrain
    .field public class Game.FurnitureInventoryPanel '<>4__this'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass32_0'::.ctor

    .method assembly hidebysig instance void 
            '<ImportFurnitureSet>b__1'(object s) cil managed
    {
      // 代码大小       432 (0x1b0)
      .maxstack  6
      .locals init (int32 V_0,
               string V_1,
               class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign> V_2,
               string V_3,
               valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>> V_4,
               class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign> V_5,
               class Game.FurnitureDesign V_6,
               class Game.FurnitureSet V_7,
               valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.FurnitureDesign> V_8,
               class Game.FurnitureDesign V_9,
               class [System.Runtime]System.Exception V_10)
      .try
      {
        IL_0000:  ldc.i4.0
        IL_0001:  stloc.0
        IL_0002:  ldarg.1
        IL_0003:  castclass  [System.Runtime]System.String
        IL_0008:  stloc.1
        IL_0009:  ldarg.0
        IL_000a:  ldfld      class Game.SubsystemTerrain Game.FurnitureInventoryPanel/'<>c__DisplayClass32_0'::subsystemTerrain
        IL_000f:  ldloc.1
        IL_0010:  call       class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign> Game.FurniturePacksManager::LoadFurniturePack(class Game.SubsystemTerrain,
                                                                                                                                                                   string)
        IL_0015:  call       class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>> Game.FurnitureDesign::ListChains(class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.FurnitureDesign>)
        IL_001a:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::.ctor()
        IL_001f:  stloc.2
        IL_0020:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>>::GetEnumerator()
        IL_0025:  stloc.s    V_4
        .try
        {
          IL_0027:  br.s       IL_0066

          IL_0029:  ldloca.s   V_4
          IL_002b:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>>::get_Current()
          IL_0030:  stloc.s    V_5
          IL_0032:  ldarg.0
          IL_0033:  ldfld      class Game.FurnitureInventoryPanel Game.FurnitureInventoryPanel/'<>c__DisplayClass32_0'::'<>4__this'
          IL_0038:  call       instance class Game.SubsystemFurnitureBlockBehavior Game.FurnitureInventoryPanel::get_SubsystemFurnitureBlockBehavior()
          IL_003d:  ldloc.s    V_5
          IL_003f:  ldc.i4.0
          IL_0040:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::get_Item(int32)
          IL_0045:  callvirt   instance class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior::TryAddDesignChain(class Game.FurnitureDesign)
          IL_004a:  stloc.s    V_6
          IL_004c:  ldloc.s    V_6
          IL_004e:  ldloc.s    V_5
          IL_0050:  ldc.i4.0
          IL_0051:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::get_Item(int32)
          IL_0056:  bne.un.s   IL_0062

          IL_0058:  ldloc.2
          IL_0059:  ldloc.s    V_6
          IL_005b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::Add(!0)
          IL_0060:  br.s       IL_0066

          IL_0062:  ldloc.0
          IL_0063:  ldc.i4.1
          IL_0064:  add
          IL_0065:  stloc.0
          IL_0066:  ldloca.s   V_4
          IL_0068:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>>::MoveNext()
          IL_006d:  brtrue.s   IL_0029

          IL_006f:  leave.s    IL_007f

        }  // end .try
        finally
        {
          IL_0071:  ldloca.s   V_4
          IL_0073:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>>
          IL_0079:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
          IL_007e:  endfinally
        }  // end handler
        IL_007f:  ldloc.2
        IL_0080:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::get_Count()
        IL_0085:  ldc.i4.0
        IL_0086:  ble.s      IL_00f3

        IL_0088:  ldarg.0
        IL_0089:  ldfld      class Game.FurnitureInventoryPanel Game.FurnitureInventoryPanel/'<>c__DisplayClass32_0'::'<>4__this'
        IL_008e:  call       instance class Game.SubsystemFurnitureBlockBehavior Game.FurnitureInventoryPanel::get_SubsystemFurnitureBlockBehavior()
        IL_0093:  ldloc.1
        IL_0094:  call       string Game.FurniturePacksManager::GetDisplayName(string)
        IL_0099:  ldloc.1
        IL_009a:  callvirt   instance class Game.FurnitureSet Game.SubsystemFurnitureBlockBehavior::NewFurnitureSet(string,
                                                                                                                    string)
        IL_009f:  stloc.s    V_7
        IL_00a1:  ldloc.2
        IL_00a2:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::GetEnumerator()
        IL_00a7:  stloc.s    V_8
        .try
        {
          IL_00a9:  br.s       IL_00c8

          IL_00ab:  ldloca.s   V_8
          IL_00ad:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.FurnitureDesign>::get_Current()
          IL_00b2:  stloc.s    V_9
          IL_00b4:  ldarg.0
          IL_00b5:  ldfld      class Game.FurnitureInventoryPanel Game.FurnitureInventoryPanel/'<>c__DisplayClass32_0'::'<>4__this'
          IL_00ba:  call       instance class Game.SubsystemFurnitureBlockBehavior Game.FurnitureInventoryPanel::get_SubsystemFurnitureBlockBehavior()
          IL_00bf:  ldloc.s    V_9
          IL_00c1:  ldloc.s    V_7
          IL_00c3:  callvirt   instance void Game.SubsystemFurnitureBlockBehavior::AddToFurnitureSet(class Game.FurnitureDesign,
                                                                                                     class Game.FurnitureSet)
          IL_00c8:  ldloca.s   V_8
          IL_00ca:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.FurnitureDesign>::MoveNext()
          IL_00cf:  brtrue.s   IL_00ab

          IL_00d1:  leave.s    IL_00e1

        }  // end .try
        finally
        {
          IL_00d3:  ldloca.s   V_8
          IL_00d5:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.FurnitureDesign>
          IL_00db:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
          IL_00e0:  endfinally
        }  // end handler
        IL_00e1:  ldarg.0
        IL_00e2:  ldfld      class Game.FurnitureInventoryPanel Game.FurnitureInventoryPanel/'<>c__DisplayClass32_0'::'<>4__this'
        IL_00e7:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
        IL_00ec:  ldloc.s    V_7
        IL_00ee:  callvirt   instance void Game.ComponentFurnitureInventory::set_FurnitureSet(class Game.FurnitureSet)
        IL_00f3:  ldarg.0
        IL_00f4:  ldfld      class Game.FurnitureInventoryPanel Game.FurnitureInventoryPanel/'<>c__DisplayClass32_0'::'<>4__this'
        IL_00f9:  call       instance void Game.FurnitureInventoryPanel::Invalidate()
        IL_00fe:  ldloc.0
        IL_00ff:  ldc.i4.0
        IL_0100:  ble.s      IL_012c

        IL_0102:  ldstr      "{0} design(s) added. {1} design(s) were already pr"
        + "esent in the world and were skipped."
        IL_0107:  ldc.i4.2
        IL_0108:  newarr     [System.Runtime]System.Object
        IL_010d:  dup
        IL_010e:  ldc.i4.0
        IL_010f:  ldloc.2
        IL_0110:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::get_Count()
        IL_0115:  box        [System.Runtime]System.Int32
        IL_011a:  stelem.ref
        IL_011b:  dup
        IL_011c:  ldc.i4.1
        IL_011d:  ldloc.0
        IL_011e:  box        [System.Runtime]System.Int32
        IL_0123:  stelem.ref
        IL_0124:  call       string [System.Runtime]System.String::Format(string,
                                                                          object[])
        IL_0129:  stloc.3
        IL_012a:  br.s       IL_014b

        IL_012c:  ldstr      "{0} design(s) added."
        IL_0131:  ldc.i4.1
        IL_0132:  newarr     [System.Runtime]System.Object
        IL_0137:  dup
        IL_0138:  ldc.i4.0
        IL_0139:  ldloc.2
        IL_013a:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::get_Count()
        IL_013f:  box        [System.Runtime]System.Int32
        IL_0144:  stelem.ref
        IL_0145:  call       string [System.Runtime]System.String::Format(string,
                                                                          object[])
        IL_014a:  stloc.3
        IL_014b:  ldarg.0
        IL_014c:  ldfld      class Game.FurnitureInventoryPanel Game.FurnitureInventoryPanel/'<>c__DisplayClass32_0'::'<>4__this'
        IL_0151:  ldfld      class Game.ComponentPlayer Game.FurnitureInventoryPanel::m_componentPlayer
        IL_0156:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
        IL_015b:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
        IL_0160:  ldstr      "Import Successful"
        IL_0165:  ldloc.3
        IL_0166:  ldstr      "OK"
        IL_016b:  ldnull
        IL_016c:  ldnull
        IL_016d:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                     string,
                                                                     string,
                                                                     string,
                                                                     class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
        IL_0172:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                                  class Game.Dialog)
        IL_0177:  leave.s    IL_01af

      }  // end .try
      catch [System.Runtime]System.Exception 
      {
        IL_0179:  stloc.s    V_10
        IL_017b:  ldarg.0
        IL_017c:  ldfld      class Game.FurnitureInventoryPanel Game.FurnitureInventoryPanel/'<>c__DisplayClass32_0'::'<>4__this'
        IL_0181:  ldfld      class Game.ComponentPlayer Game.FurnitureInventoryPanel::m_componentPlayer
        IL_0186:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
        IL_018b:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
        IL_0190:  ldstr      "Import Failed"
        IL_0195:  ldloc.s    V_10
        IL_0197:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
        IL_019c:  ldstr      "OK"
        IL_01a1:  ldnull
        IL_01a2:  ldnull
        IL_01a3:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                     string,
                                                                     string,
                                                                     string,
                                                                     class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
        IL_01a8:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                                  class Game.Dialog)
        IL_01ad:  leave.s    IL_01af

      }  // end handler
      IL_01af:  ret
    } // end of method '<>c__DisplayClass32_0'::'<ImportFurnitureSet>b__1'

  } // end of class '<>c__DisplayClass32_0'

  .field private class Game.CreativeInventoryWidget m_creativeInventoryWidget
  .field private class Game.ComponentPlayer m_componentPlayer
  .field private class Game.ListPanelWidget m_furnitureSetList
  .field private class Game.GridPanelWidget m_inventoryGrid
  .field private class Game.ButtonWidget m_addButton
  .field private class Game.ButtonWidget m_moreButton
  .field private int32 m_pagesCount
  .field private int32 m_assignedPage
  .field private bool m_ignoreSelectionChanged
  .field private bool m_populateNeeded
  .field private class Game.SubsystemTerrain '<SubsystemTerrain>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.SubsystemFurnitureBlockBehavior '<SubsystemFurnitureBlockBehavior>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.ComponentFurnitureInventory '<ComponentFurnitureInventory>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.CreativeInventoryWidget creativeInventoryWidget) cil managed
  {
    // 代码大小       362 (0x16a)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0,
             int32 V_1,
             int32 V_2,
             class Game.InventorySlotWidget V_3)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.CanvasWidget::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      class Game.CreativeInventoryWidget Game.FurnitureInventoryPanel::m_creativeInventoryWidget
    IL_000d:  ldarg.0
    IL_000e:  ldarg.1
    IL_000f:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity Game.CreativeInventoryWidget::get_Entity()
    IL_0014:  ldc.i4.1
    IL_0015:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentFurnitureInventory>(bool)
    IL_001a:  call       instance void Game.FurnitureInventoryPanel::set_ComponentFurnitureInventory(class Game.ComponentFurnitureInventory)
    IL_001f:  ldarg.0
    IL_0020:  ldarg.1
    IL_0021:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity Game.CreativeInventoryWidget::get_Entity()
    IL_0026:  ldc.i4.1
    IL_0027:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPlayer>(bool)
    IL_002c:  stfld      class Game.ComponentPlayer Game.FurnitureInventoryPanel::m_componentPlayer
    IL_0031:  ldarg.0
    IL_0032:  ldarg.0
    IL_0033:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_0038:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemFurnitureBlockBehavior>(bool)
    IL_0043:  call       instance void Game.FurnitureInventoryPanel::set_SubsystemFurnitureBlockBehavior(class Game.SubsystemFurnitureBlockBehavior)
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_004f:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0054:  ldc.i4.1
    IL_0055:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_005a:  call       instance void Game.FurnitureInventoryPanel::set_SubsystemTerrain(class Game.SubsystemTerrain)
    IL_005f:  ldstr      "Widgets/FurnitureInventoryPanel"
    IL_0064:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0069:  stloc.0
    IL_006a:  ldarg.0
    IL_006b:  ldarg.0
    IL_006c:  ldloc.0
    IL_006d:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0072:  ldarg.0
    IL_0073:  ldarg.0
    IL_0074:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0079:  ldstr      "FurnitureSetList"
    IL_007e:  ldc.i4.1
    IL_007f:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ListPanelWidget>(string,
                                                                                         bool)
    IL_0084:  stfld      class Game.ListPanelWidget Game.FurnitureInventoryPanel::m_furnitureSetList
    IL_0089:  ldarg.0
    IL_008a:  ldarg.0
    IL_008b:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0090:  ldstr      "InventoryGrid"
    IL_0095:  ldc.i4.1
    IL_0096:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.GridPanelWidget>(string,
                                                                                         bool)
    IL_009b:  stfld      class Game.GridPanelWidget Game.FurnitureInventoryPanel::m_inventoryGrid
    IL_00a0:  ldarg.0
    IL_00a1:  ldarg.0
    IL_00a2:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00a7:  ldstr      "AddButton"
    IL_00ac:  ldc.i4.1
    IL_00ad:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_00b2:  stfld      class Game.ButtonWidget Game.FurnitureInventoryPanel::m_addButton
    IL_00b7:  ldarg.0
    IL_00b8:  ldarg.0
    IL_00b9:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00be:  ldstr      "MoreButton"
    IL_00c3:  ldc.i4.1
    IL_00c4:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_00c9:  stfld      class Game.ButtonWidget Game.FurnitureInventoryPanel::m_moreButton
    IL_00ce:  ldc.i4.0
    IL_00cf:  stloc.1
    IL_00d0:  br.s       IL_0116

    IL_00d2:  ldc.i4.0
    IL_00d3:  stloc.2
    IL_00d4:  br.s       IL_0104

    IL_00d6:  newobj     instance void Game.InventorySlotWidget::.ctor()
    IL_00db:  stloc.3
    IL_00dc:  ldarg.0
    IL_00dd:  ldfld      class Game.GridPanelWidget Game.FurnitureInventoryPanel::m_inventoryGrid
    IL_00e2:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00e7:  ldloc.3
    IL_00e8:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_00ed:  ldarg.0
    IL_00ee:  ldfld      class Game.GridPanelWidget Game.FurnitureInventoryPanel::m_inventoryGrid
    IL_00f3:  ldloc.3
    IL_00f4:  ldloc.2
    IL_00f5:  ldloc.1
    IL_00f6:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_00fb:  callvirt   instance void Game.GridPanelWidget::SetWidgetCell(class Game.Widget,
                                                                           valuetype [Engine]Engine.Point2)
    IL_0100:  ldloc.2
    IL_0101:  ldc.i4.1
    IL_0102:  add
    IL_0103:  stloc.2
    IL_0104:  ldloc.2
    IL_0105:  ldarg.0
    IL_0106:  ldfld      class Game.GridPanelWidget Game.FurnitureInventoryPanel::m_inventoryGrid
    IL_010b:  callvirt   instance int32 Game.GridPanelWidget::get_ColumnsCount()
    IL_0110:  blt.s      IL_00d6

    IL_0112:  ldloc.1
    IL_0113:  ldc.i4.1
    IL_0114:  add
    IL_0115:  stloc.1
    IL_0116:  ldloc.1
    IL_0117:  ldarg.0
    IL_0118:  ldfld      class Game.GridPanelWidget Game.FurnitureInventoryPanel::m_inventoryGrid
    IL_011d:  callvirt   instance int32 Game.GridPanelWidget::get_RowsCount()
    IL_0122:  blt.s      IL_00d2

    IL_0124:  ldarg.0
    IL_0125:  ldfld      class Game.ListPanelWidget Game.FurnitureInventoryPanel::m_furnitureSetList
    IL_012a:  dup
    IL_012b:  callvirt   instance class [System.Runtime]System.Func`2<object,class Game.Widget> Game.ListPanelWidget::get_ItemWidgetFactory()
    IL_0130:  ldarg.0
    IL_0131:  ldftn      instance class Game.Widget Game.FurnitureInventoryPanel::'<.ctor>b__10_0'(object)
    IL_0137:  newobj     instance void class [System.Runtime]System.Func`2<object,class Game.Widget>::.ctor(object,
                                                                                                            native int)
    IL_013c:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Combine(class [System.Runtime]System.Delegate,
                                                                                                        class [System.Runtime]System.Delegate)
    IL_0141:  castclass  class [System.Runtime]System.Func`2<object,class Game.Widget>
    IL_0146:  callvirt   instance void Game.ListPanelWidget::set_ItemWidgetFactory(class [System.Runtime]System.Func`2<object,class Game.Widget>)
    IL_014b:  ldarg.0
    IL_014c:  ldfld      class Game.ListPanelWidget Game.FurnitureInventoryPanel::m_furnitureSetList
    IL_0151:  ldarg.0
    IL_0152:  ldftn      instance void Game.FurnitureInventoryPanel::'<.ctor>b__10_1'(class Game.ListPanelWidget)
    IL_0158:  newobj     instance void class [System.Runtime]System.Action`1<class Game.ListPanelWidget>::.ctor(object,
                                                                                                                native int)
    IL_015d:  callvirt   instance void Game.ListPanelWidget::add_SelectionChanged(class [System.Runtime]System.Action`1<class Game.ListPanelWidget>)
    IL_0162:  ldarg.0
    IL_0163:  ldc.i4.1
    IL_0164:  stfld      bool Game.FurnitureInventoryPanel::m_populateNeeded
    IL_0169:  ret
  } // end of method FurnitureInventoryPanel::.ctor

  .method public hidebysig specialname instance class Game.SubsystemTerrain 
          get_SubsystemTerrain() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.FurnitureInventoryPanel::'<SubsystemTerrain>k__BackingField'
    IL_0006:  ret
  } // end of method FurnitureInventoryPanel::get_SubsystemTerrain

  .method private hidebysig specialname instance void 
          set_SubsystemTerrain(class Game.SubsystemTerrain 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.SubsystemTerrain Game.FurnitureInventoryPanel::'<SubsystemTerrain>k__BackingField'
    IL_0007:  ret
  } // end of method FurnitureInventoryPanel::set_SubsystemTerrain

  .method public hidebysig specialname instance class Game.SubsystemFurnitureBlockBehavior 
          get_SubsystemFurnitureBlockBehavior() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemFurnitureBlockBehavior Game.FurnitureInventoryPanel::'<SubsystemFurnitureBlockBehavior>k__BackingField'
    IL_0006:  ret
  } // end of method FurnitureInventoryPanel::get_SubsystemFurnitureBlockBehavior

  .method private hidebysig specialname instance void 
          set_SubsystemFurnitureBlockBehavior(class Game.SubsystemFurnitureBlockBehavior 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.SubsystemFurnitureBlockBehavior Game.FurnitureInventoryPanel::'<SubsystemFurnitureBlockBehavior>k__BackingField'
    IL_0007:  ret
  } // end of method FurnitureInventoryPanel::set_SubsystemFurnitureBlockBehavior

  .method public hidebysig specialname instance class Game.ComponentFurnitureInventory 
          get_ComponentFurnitureInventory() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::'<ComponentFurnitureInventory>k__BackingField'
    IL_0006:  ret
  } // end of method FurnitureInventoryPanel::get_ComponentFurnitureInventory

  .method private hidebysig specialname instance void 
          set_ComponentFurnitureInventory(class Game.ComponentFurnitureInventory 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::'<ComponentFurnitureInventory>k__BackingField'
    IL_0007:  ret
  } // end of method FurnitureInventoryPanel::set_ComponentFurnitureInventory

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       902 (0x386)
    .maxstack  7
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             int32 V_2,
             class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>> V_3,
             class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>> V_4)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.FurnitureInventoryPanel::m_populateNeeded
    IL_0006:  brfalse.s  IL_0015

    IL_0008:  ldarg.0
    IL_0009:  call       instance void Game.FurnitureInventoryPanel::Populate()
    IL_000e:  ldarg.0
    IL_000f:  ldc.i4.0
    IL_0010:  stfld      bool Game.FurnitureInventoryPanel::m_populateNeeded
    IL_0015:  ldarg.0
    IL_0016:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_001b:  callvirt   instance int32 Game.ComponentFurnitureInventory::get_PageIndex()
    IL_0020:  ldarg.0
    IL_0021:  ldfld      int32 Game.FurnitureInventoryPanel::m_assignedPage
    IL_0026:  beq.s      IL_002e

    IL_0028:  ldarg.0
    IL_0029:  call       instance void Game.FurnitureInventoryPanel::AssignInventorySlots()
    IL_002e:  ldarg.0
    IL_002f:  ldfld      class Game.CreativeInventoryWidget Game.FurnitureInventoryPanel::m_creativeInventoryWidget
    IL_0034:  callvirt   instance class Game.ButtonWidget Game.CreativeInventoryWidget::get_PageUpButton()
    IL_0039:  ldarg.0
    IL_003a:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_003f:  callvirt   instance int32 Game.ComponentFurnitureInventory::get_PageIndex()
    IL_0044:  ldc.i4.0
    IL_0045:  cgt
    IL_0047:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_004c:  ldarg.0
    IL_004d:  ldfld      class Game.CreativeInventoryWidget Game.FurnitureInventoryPanel::m_creativeInventoryWidget
    IL_0052:  callvirt   instance class Game.ButtonWidget Game.CreativeInventoryWidget::get_PageDownButton()
    IL_0057:  ldarg.0
    IL_0058:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_005d:  callvirt   instance int32 Game.ComponentFurnitureInventory::get_PageIndex()
    IL_0062:  ldarg.0
    IL_0063:  ldfld      int32 Game.FurnitureInventoryPanel::m_pagesCount
    IL_0068:  ldc.i4.1
    IL_0069:  sub
    IL_006a:  clt
    IL_006c:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_0071:  ldarg.0
    IL_0072:  ldfld      class Game.CreativeInventoryWidget Game.FurnitureInventoryPanel::m_creativeInventoryWidget
    IL_0077:  callvirt   instance class Game.LabelWidget Game.CreativeInventoryWidget::get_PageLabel()
    IL_007c:  ldstr      "{0}/{1}"
    IL_0081:  ldc.i4.2
    IL_0082:  newarr     [System.Runtime]System.Object
    IL_0087:  dup
    IL_0088:  ldc.i4.0
    IL_0089:  ldarg.0
    IL_008a:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_008f:  callvirt   instance int32 Game.ComponentFurnitureInventory::get_PageIndex()
    IL_0094:  ldc.i4.1
    IL_0095:  add
    IL_0096:  box        [System.Runtime]System.Int32
    IL_009b:  stelem.ref
    IL_009c:  dup
    IL_009d:  ldc.i4.1
    IL_009e:  ldarg.0
    IL_009f:  ldfld      int32 Game.FurnitureInventoryPanel::m_pagesCount
    IL_00a4:  box        [System.Runtime]System.Int32
    IL_00a9:  stelem.ref
    IL_00aa:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_00af:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00b4:  ldarg.0
    IL_00b5:  ldfld      class Game.ButtonWidget Game.FurnitureInventoryPanel::m_moreButton
    IL_00ba:  ldarg.0
    IL_00bb:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_00c0:  callvirt   instance class Game.FurnitureSet Game.ComponentFurnitureInventory::get_FurnitureSet()
    IL_00c5:  ldnull
    IL_00c6:  cgt.un
    IL_00c8:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_00cd:  ldarg.0
    IL_00ce:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_00d3:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.WidgetInput::get_Scroll()
    IL_00d8:  stloc.0
    IL_00d9:  ldloca.s   V_0
    IL_00db:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_00e0:  brfalse.s  IL_013a

    IL_00e2:  ldarg.0
    IL_00e3:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_00e8:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.WidgetInput::get_Scroll()
    IL_00ed:  stloc.0
    IL_00ee:  ldloca.s   V_0
    IL_00f0:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_00f5:  stloc.1
    IL_00f6:  ldloca.s   V_1
    IL_00f8:  call       instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector3::get_XY()
    IL_00fd:  call       class Game.Widget Game.WidgetsManager::HitTest(valuetype [Engine]Engine.Vector2)
    IL_0102:  ldarg.0
    IL_0103:  ldfld      class Game.GridPanelWidget Game.FurnitureInventoryPanel::m_inventoryGrid
    IL_0108:  callvirt   instance bool Game.Widget::IsChildWidgetOf(class Game.ContainerWidget)
    IL_010d:  brfalse.s  IL_013a

    IL_010f:  ldarg.0
    IL_0110:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_0115:  dup
    IL_0116:  callvirt   instance int32 Game.ComponentFurnitureInventory::get_PageIndex()
    IL_011b:  ldarg.0
    IL_011c:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0121:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.WidgetInput::get_Scroll()
    IL_0126:  stloc.0
    IL_0127:  ldloca.s   V_0
    IL_0129:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_012e:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0133:  conv.i4
    IL_0134:  sub
    IL_0135:  callvirt   instance void Game.ComponentFurnitureInventory::set_PageIndex(int32)
    IL_013a:  ldarg.0
    IL_013b:  ldfld      class Game.CreativeInventoryWidget Game.FurnitureInventoryPanel::m_creativeInventoryWidget
    IL_0140:  callvirt   instance class Game.ButtonWidget Game.CreativeInventoryWidget::get_PageUpButton()
    IL_0145:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_014a:  brfalse.s  IL_0161

    IL_014c:  ldarg.0
    IL_014d:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_0152:  dup
    IL_0153:  callvirt   instance int32 Game.ComponentFurnitureInventory::get_PageIndex()
    IL_0158:  ldc.i4.1
    IL_0159:  sub
    IL_015a:  stloc.2
    IL_015b:  ldloc.2
    IL_015c:  callvirt   instance void Game.ComponentFurnitureInventory::set_PageIndex(int32)
    IL_0161:  ldarg.0
    IL_0162:  ldfld      class Game.CreativeInventoryWidget Game.FurnitureInventoryPanel::m_creativeInventoryWidget
    IL_0167:  callvirt   instance class Game.ButtonWidget Game.CreativeInventoryWidget::get_PageDownButton()
    IL_016c:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0171:  brfalse.s  IL_0188

    IL_0173:  ldarg.0
    IL_0174:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_0179:  dup
    IL_017a:  callvirt   instance int32 Game.ComponentFurnitureInventory::get_PageIndex()
    IL_017f:  ldc.i4.1
    IL_0180:  add
    IL_0181:  stloc.2
    IL_0182:  ldloc.2
    IL_0183:  callvirt   instance void Game.ComponentFurnitureInventory::set_PageIndex(int32)
    IL_0188:  ldarg.0
    IL_0189:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_018e:  ldarg.0
    IL_018f:  ldfld      int32 Game.FurnitureInventoryPanel::m_pagesCount
    IL_0194:  ldc.i4.0
    IL_0195:  bgt.s      IL_019a

    IL_0197:  ldc.i4.0
    IL_0198:  br.s       IL_01b3

    IL_019a:  ldarg.0
    IL_019b:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_01a0:  callvirt   instance int32 Game.ComponentFurnitureInventory::get_PageIndex()
    IL_01a5:  ldc.i4.0
    IL_01a6:  ldarg.0
    IL_01a7:  ldfld      int32 Game.FurnitureInventoryPanel::m_pagesCount
    IL_01ac:  ldc.i4.1
    IL_01ad:  sub
    IL_01ae:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_01b3:  callvirt   instance void Game.ComponentFurnitureInventory::set_PageIndex(int32)
    IL_01b8:  ldarg.0
    IL_01b9:  ldfld      class Game.ButtonWidget Game.FurnitureInventoryPanel::m_addButton
    IL_01be:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_01c3:  brfalse    IL_0269

    IL_01c8:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>>::.ctor()
    IL_01cd:  stloc.3
    IL_01ce:  ldloc.3
    IL_01cf:  ldstr      "New"
    IL_01d4:  ldarg.0
    IL_01d5:  ldftn      instance void Game.FurnitureInventoryPanel::'<Update>b__23_0'()
    IL_01db:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_01e0:  newobj     instance void class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>::.ctor(!0,
                                                                                                                               !1)
    IL_01e5:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>>::Add(!0)
    IL_01ea:  ldloc.3
    IL_01eb:  ldstr      "Import From Content"
    IL_01f0:  ldarg.0
    IL_01f1:  ldftn      instance void Game.FurnitureInventoryPanel::'<Update>b__23_1'()
    IL_01f7:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_01fc:  newobj     instance void class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>::.ctor(!0,
                                                                                                                               !1)
    IL_0201:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>>::Add(!0)
    IL_0206:  ldarg.0
    IL_0207:  ldfld      class Game.ComponentPlayer Game.FurnitureInventoryPanel::m_componentPlayer
    IL_020c:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_0211:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
    IL_0216:  ldstr      "Add Furniture Set"
    IL_021b:  ldloc.3
    IL_021c:  ldc.r4     64.
    IL_0221:  ldsfld     class [System.Runtime]System.Func`2<object,string> Game.FurnitureInventoryPanel/'<>c'::'<>9__23_2'
    IL_0226:  dup
    IL_0227:  brtrue.s   IL_0240

    IL_0229:  pop
    IL_022a:  ldsfld     class Game.FurnitureInventoryPanel/'<>c' Game.FurnitureInventoryPanel/'<>c'::'<>9'
    IL_022f:  ldftn      instance string Game.FurnitureInventoryPanel/'<>c'::'<Update>b__23_2'(object)
    IL_0235:  newobj     instance void class [System.Runtime]System.Func`2<object,string>::.ctor(object,
                                                                                                 native int)
    IL_023a:  dup
    IL_023b:  stsfld     class [System.Runtime]System.Func`2<object,string> Game.FurnitureInventoryPanel/'<>c'::'<>9__23_2'
    IL_0240:  ldsfld     class [System.Runtime]System.Action`1<object> Game.FurnitureInventoryPanel/'<>c'::'<>9__23_3'
    IL_0245:  dup
    IL_0246:  brtrue.s   IL_025f

    IL_0248:  pop
    IL_0249:  ldsfld     class Game.FurnitureInventoryPanel/'<>c' Game.FurnitureInventoryPanel/'<>c'::'<>9'
    IL_024e:  ldftn      instance void Game.FurnitureInventoryPanel/'<>c'::'<Update>b__23_3'(object)
    IL_0254:  newobj     instance void class [System.Runtime]System.Action`1<object>::.ctor(object,
                                                                                            native int)
    IL_0259:  dup
    IL_025a:  stsfld     class [System.Runtime]System.Action`1<object> Game.FurnitureInventoryPanel/'<>c'::'<>9__23_3'
    IL_025f:  newobj     instance void Game.ListSelectionDialog::.ctor(string,
                                                                       class [System.Runtime]System.Collections.IEnumerable,
                                                                       float32,
                                                                       class [System.Runtime]System.Func`2<object,string>,
                                                                       class [System.Runtime]System.Action`1<object>)
    IL_0264:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_0269:  ldarg.0
    IL_026a:  ldfld      class Game.ButtonWidget Game.FurnitureInventoryPanel::m_moreButton
    IL_026f:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0274:  brfalse    IL_0385

    IL_0279:  ldarg.0
    IL_027a:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_027f:  callvirt   instance class Game.FurnitureSet Game.ComponentFurnitureInventory::get_FurnitureSet()
    IL_0284:  brfalse    IL_0385

    IL_0289:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>>::.ctor()
    IL_028e:  stloc.s    V_4
    IL_0290:  ldloc.s    V_4
    IL_0292:  ldstr      "Rename"
    IL_0297:  ldarg.0
    IL_0298:  ldftn      instance void Game.FurnitureInventoryPanel::'<Update>b__23_4'()
    IL_029e:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_02a3:  newobj     instance void class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>::.ctor(!0,
                                                                                                                               !1)
    IL_02a8:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>>::Add(!0)
    IL_02ad:  ldloc.s    V_4
    IL_02af:  ldstr      "Delete"
    IL_02b4:  ldarg.0
    IL_02b5:  ldftn      instance void Game.FurnitureInventoryPanel::'<Update>b__23_5'()
    IL_02bb:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_02c0:  newobj     instance void class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>::.ctor(!0,
                                                                                                                               !1)
    IL_02c5:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>>::Add(!0)
    IL_02ca:  ldloc.s    V_4
    IL_02cc:  ldstr      "Move Up"
    IL_02d1:  ldarg.0
    IL_02d2:  ldftn      instance void Game.FurnitureInventoryPanel::'<Update>b__23_7'()
    IL_02d8:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_02dd:  newobj     instance void class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>::.ctor(!0,
                                                                                                                               !1)
    IL_02e2:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>>::Add(!0)
    IL_02e7:  ldloc.s    V_4
    IL_02e9:  ldstr      "Move Down"
    IL_02ee:  ldarg.0
    IL_02ef:  ldftn      instance void Game.FurnitureInventoryPanel::'<Update>b__23_8'()
    IL_02f5:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_02fa:  newobj     instance void class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>::.ctor(!0,
                                                                                                                               !1)
    IL_02ff:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>>::Add(!0)
    IL_0304:  ldloc.s    V_4
    IL_0306:  ldstr      "Export To Content"
    IL_030b:  ldarg.0
    IL_030c:  ldftn      instance void Game.FurnitureInventoryPanel::'<Update>b__23_9'()
    IL_0312:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0317:  newobj     instance void class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>::.ctor(!0,
                                                                                                                               !1)
    IL_031c:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>>::Add(!0)
    IL_0321:  ldarg.0
    IL_0322:  ldfld      class Game.ComponentPlayer Game.FurnitureInventoryPanel::m_componentPlayer
    IL_0327:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_032c:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
    IL_0331:  ldstr      "Furniture Set Action"
    IL_0336:  ldloc.s    V_4
    IL_0338:  ldc.r4     64.
    IL_033d:  ldsfld     class [System.Runtime]System.Func`2<object,string> Game.FurnitureInventoryPanel/'<>c'::'<>9__23_10'
    IL_0342:  dup
    IL_0343:  brtrue.s   IL_035c

    IL_0345:  pop
    IL_0346:  ldsfld     class Game.FurnitureInventoryPanel/'<>c' Game.FurnitureInventoryPanel/'<>c'::'<>9'
    IL_034b:  ldftn      instance string Game.FurnitureInventoryPanel/'<>c'::'<Update>b__23_10'(object)
    IL_0351:  newobj     instance void class [System.Runtime]System.Func`2<object,string>::.ctor(object,
                                                                                                 native int)
    IL_0356:  dup
    IL_0357:  stsfld     class [System.Runtime]System.Func`2<object,string> Game.FurnitureInventoryPanel/'<>c'::'<>9__23_10'
    IL_035c:  ldsfld     class [System.Runtime]System.Action`1<object> Game.FurnitureInventoryPanel/'<>c'::'<>9__23_11'
    IL_0361:  dup
    IL_0362:  brtrue.s   IL_037b

    IL_0364:  pop
    IL_0365:  ldsfld     class Game.FurnitureInventoryPanel/'<>c' Game.FurnitureInventoryPanel/'<>c'::'<>9'
    IL_036a:  ldftn      instance void Game.FurnitureInventoryPanel/'<>c'::'<Update>b__23_11'(object)
    IL_0370:  newobj     instance void class [System.Runtime]System.Action`1<object>::.ctor(object,
                                                                                            native int)
    IL_0375:  dup
    IL_0376:  stsfld     class [System.Runtime]System.Action`1<object> Game.FurnitureInventoryPanel/'<>c'::'<>9__23_11'
    IL_037b:  newobj     instance void Game.ListSelectionDialog::.ctor(string,
                                                                       class [System.Runtime]System.Collections.IEnumerable,
                                                                       float32,
                                                                       class [System.Runtime]System.Func`2<object,string>,
                                                                       class [System.Runtime]System.Action`1<object>)
    IL_0380:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_0385:  ret
  } // end of method FurnitureInventoryPanel::Update

  .method public hidebysig virtual instance void 
          UpdateCeases() cil managed
  {
    // 代码大小       25 (0x19)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.ContainerWidget::UpdateCeases()
    IL_0006:  ldarg.0
    IL_0007:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_000c:  callvirt   instance void Game.ComponentFurnitureInventory::ClearSlots()
    IL_0011:  ldarg.0
    IL_0012:  ldc.i4.1
    IL_0013:  stfld      bool Game.FurnitureInventoryPanel::m_populateNeeded
    IL_0018:  ret
  } // end of method FurnitureInventoryPanel::UpdateCeases

  .method public hidebysig instance void 
          Invalidate() cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  stfld      bool Game.FurnitureInventoryPanel::m_populateNeeded
    IL_0007:  ret
  } // end of method FurnitureInventoryPanel::Invalidate

  .method private hidebysig instance void 
          Populate() cil managed
  {
    // 代码大小       145 (0x91)
    .maxstack  2
    .locals init (valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.FurnitureSet> V_0,
             valuetype [Engine]Engine.ReadOnlyList`1<class Game.FurnitureSet> V_1,
             class Game.FurnitureSet V_2)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_0006:  callvirt   instance void Game.ComponentFurnitureInventory::FillSlots()
    .try
    {
      IL_000b:  ldarg.0
      IL_000c:  ldc.i4.1
      IL_000d:  stfld      bool Game.FurnitureInventoryPanel::m_ignoreSelectionChanged
      IL_0012:  ldarg.0
      IL_0013:  ldfld      class Game.ListPanelWidget Game.FurnitureInventoryPanel::m_furnitureSetList
      IL_0018:  callvirt   instance void Game.ListPanelWidget::ClearItems()
      IL_001d:  ldarg.0
      IL_001e:  ldfld      class Game.ListPanelWidget Game.FurnitureInventoryPanel::m_furnitureSetList
      IL_0023:  ldnull
      IL_0024:  callvirt   instance void Game.ListPanelWidget::AddItem(object)
      IL_0029:  ldarg.0
      IL_002a:  call       instance class Game.SubsystemFurnitureBlockBehavior Game.FurnitureInventoryPanel::get_SubsystemFurnitureBlockBehavior()
      IL_002f:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.FurnitureSet> Game.SubsystemFurnitureBlockBehavior::get_FurnitureSets()
      IL_0034:  stloc.1
      IL_0035:  ldloca.s   V_1
      IL_0037:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class Game.FurnitureSet>::GetEnumerator()
      IL_003c:  stloc.0
      .try
      {
        IL_003d:  br.s       IL_0053

        IL_003f:  ldloca.s   V_0
        IL_0041:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.FurnitureSet>::get_Current()
        IL_0046:  stloc.2
        IL_0047:  ldarg.0
        IL_0048:  ldfld      class Game.ListPanelWidget Game.FurnitureInventoryPanel::m_furnitureSetList
        IL_004d:  ldloc.2
        IL_004e:  callvirt   instance void Game.ListPanelWidget::AddItem(object)
        IL_0053:  ldloca.s   V_0
        IL_0055:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.FurnitureSet>::MoveNext()
        IL_005a:  brtrue.s   IL_003f

        IL_005c:  leave.s    IL_0074

      }  // end .try
      finally
      {
        IL_005e:  ldloca.s   V_0
        IL_0060:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.FurnitureSet>
        IL_0066:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_006b:  endfinally
      }  // end handler
    }  // end .try
    finally
    {
      IL_006c:  ldarg.0
      IL_006d:  ldc.i4.0
      IL_006e:  stfld      bool Game.FurnitureInventoryPanel::m_ignoreSelectionChanged
      IL_0073:  endfinally
    }  // end handler
    IL_0074:  ldarg.0
    IL_0075:  ldfld      class Game.ListPanelWidget Game.FurnitureInventoryPanel::m_furnitureSetList
    IL_007a:  ldarg.0
    IL_007b:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_0080:  callvirt   instance class Game.FurnitureSet Game.ComponentFurnitureInventory::get_FurnitureSet()
    IL_0085:  callvirt   instance void Game.ListPanelWidget::set_SelectedItem(object)
    IL_008a:  ldarg.0
    IL_008b:  call       instance void Game.FurnitureInventoryPanel::AssignInventorySlots()
    IL_0090:  ret
  } // end of method FurnitureInventoryPanel::Populate

  .method private hidebysig instance void 
          AssignInventorySlots() cil managed
  {
    // 代码大小       378 (0x17a)
    .maxstack  4
    .locals init (class [System.Collections]System.Collections.Generic.List`1<int32> V_0,
             class [System.Collections]System.Collections.Generic.List`1<class Game.InventorySlotWidget> V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             class Game.FurnitureDesign V_7,
             int32 V_8)
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<int32>::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldc.i4.0
    IL_0007:  stloc.3
    IL_0008:  br.s       IL_007d

    IL_000a:  ldarg.0
    IL_000b:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_0010:  ldloc.3
    IL_0011:  callvirt   instance int32 Game.ComponentFurnitureInventory::GetSlotValue(int32)
    IL_0016:  stloc.s    V_4
    IL_0018:  ldarg.0
    IL_0019:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_001e:  ldloc.3
    IL_001f:  callvirt   instance int32 Game.ComponentFurnitureInventory::GetSlotCount(int32)
    IL_0024:  stloc.s    V_5
    IL_0026:  ldloc.s    V_4
    IL_0028:  brfalse.s  IL_0079

    IL_002a:  ldloc.s    V_5
    IL_002c:  ldc.i4.0
    IL_002d:  ble.s      IL_0079

    IL_002f:  ldloc.s    V_4
    IL_0031:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0036:  ldc.i4     0xe3
    IL_003b:  bne.un.s   IL_0079

    IL_003d:  ldloc.s    V_4
    IL_003f:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0044:  call       int32 Game.FurnitureBlock::GetDesignIndex(int32)
    IL_0049:  stloc.s    V_6
    IL_004b:  ldarg.0
    IL_004c:  call       instance class Game.SubsystemFurnitureBlockBehavior Game.FurnitureInventoryPanel::get_SubsystemFurnitureBlockBehavior()
    IL_0051:  ldloc.s    V_6
    IL_0053:  callvirt   instance class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior::GetDesign(int32)
    IL_0058:  stloc.s    V_7
    IL_005a:  ldloc.s    V_7
    IL_005c:  brfalse.s  IL_0079

    IL_005e:  ldloc.s    V_7
    IL_0060:  callvirt   instance class Game.FurnitureSet Game.FurnitureDesign::get_FurnitureSet()
    IL_0065:  ldarg.0
    IL_0066:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_006b:  callvirt   instance class Game.FurnitureSet Game.ComponentFurnitureInventory::get_FurnitureSet()
    IL_0070:  bne.un.s   IL_0079

    IL_0072:  ldloc.0
    IL_0073:  ldloc.3
    IL_0074:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_0079:  ldloc.3
    IL_007a:  ldc.i4.1
    IL_007b:  add
    IL_007c:  stloc.3
    IL_007d:  ldloc.3
    IL_007e:  ldarg.0
    IL_007f:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_0084:  callvirt   instance int32 Game.ComponentFurnitureInventory::get_SlotsCount()
    IL_0089:  blt        IL_000a

    IL_008e:  ldarg.0
    IL_008f:  ldfld      class Game.GridPanelWidget Game.FurnitureInventoryPanel::m_inventoryGrid
    IL_0094:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0099:  ldsfld     class [System.Runtime]System.Func`2<class Game.Widget,class Game.InventorySlotWidget> Game.FurnitureInventoryPanel/'<>c'::'<>9__27_0'
    IL_009e:  dup
    IL_009f:  brtrue.s   IL_00b8

    IL_00a1:  pop
    IL_00a2:  ldsfld     class Game.FurnitureInventoryPanel/'<>c' Game.FurnitureInventoryPanel/'<>c'::'<>9'
    IL_00a7:  ldftn      instance class Game.InventorySlotWidget Game.FurnitureInventoryPanel/'<>c'::'<AssignInventorySlots>b__27_0'(class Game.Widget)
    IL_00ad:  newobj     instance void class [System.Runtime]System.Func`2<class Game.Widget,class Game.InventorySlotWidget>::.ctor(object,
                                                                                                                                    native int)
    IL_00b2:  dup
    IL_00b3:  stsfld     class [System.Runtime]System.Func`2<class Game.Widget,class Game.InventorySlotWidget> Game.FurnitureInventoryPanel/'<>c'::'<>9__27_0'
    IL_00b8:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!1> [System.Linq]System.Linq.Enumerable::Select<class Game.Widget,class Game.InventorySlotWidget>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                           class [System.Runtime]System.Func`2<!!0,!!1>)
    IL_00bd:  ldsfld     class [System.Runtime]System.Func`2<class Game.InventorySlotWidget,bool> Game.FurnitureInventoryPanel/'<>c'::'<>9__27_1'
    IL_00c2:  dup
    IL_00c3:  brtrue.s   IL_00dc

    IL_00c5:  pop
    IL_00c6:  ldsfld     class Game.FurnitureInventoryPanel/'<>c' Game.FurnitureInventoryPanel/'<>c'::'<>9'
    IL_00cb:  ldftn      instance bool Game.FurnitureInventoryPanel/'<>c'::'<AssignInventorySlots>b__27_1'(class Game.InventorySlotWidget)
    IL_00d1:  newobj     instance void class [System.Runtime]System.Func`2<class Game.InventorySlotWidget,bool>::.ctor(object,
                                                                                                                       native int)
    IL_00d6:  dup
    IL_00d7:  stsfld     class [System.Runtime]System.Func`2<class Game.InventorySlotWidget,bool> Game.FurnitureInventoryPanel/'<>c'::'<>9__27_1'
    IL_00dc:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class Game.InventorySlotWidget>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                        class [System.Runtime]System.Func`2<!!0,bool>)
    IL_00e1:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Cast<class Game.InventorySlotWidget>(class [System.Runtime]System.Collections.IEnumerable)
    IL_00e6:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.InventorySlotWidget>::.ctor(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!0>)
    IL_00eb:  stloc.1
    IL_00ec:  ldarg.0
    IL_00ed:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_00f2:  callvirt   instance int32 Game.ComponentFurnitureInventory::get_PageIndex()
    IL_00f7:  ldloc.1
    IL_00f8:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.InventorySlotWidget>::get_Count()
    IL_00fd:  mul
    IL_00fe:  stloc.2
    IL_00ff:  ldc.i4.0
    IL_0100:  stloc.s    V_8
    IL_0102:  br.s       IL_0142

    IL_0104:  ldloc.2
    IL_0105:  ldloc.0
    IL_0106:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Count()
    IL_010b:  bge.s      IL_0129

    IL_010d:  ldloc.1
    IL_010e:  ldloc.s    V_8
    IL_0110:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.InventorySlotWidget>::get_Item(int32)
    IL_0115:  ldarg.0
    IL_0116:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_011b:  ldloc.0
    IL_011c:  ldloc.2
    IL_011d:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Item(int32)
    IL_0122:  callvirt   instance void Game.InventorySlotWidget::AssignInventorySlot(class Game.IInventory,
                                                                                     int32)
    IL_0127:  br.s       IL_0138

    IL_0129:  ldloc.1
    IL_012a:  ldloc.s    V_8
    IL_012c:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.InventorySlotWidget>::get_Item(int32)
    IL_0131:  ldnull
    IL_0132:  ldc.i4.0
    IL_0133:  callvirt   instance void Game.InventorySlotWidget::AssignInventorySlot(class Game.IInventory,
                                                                                     int32)
    IL_0138:  ldloc.2
    IL_0139:  ldc.i4.1
    IL_013a:  add
    IL_013b:  stloc.2
    IL_013c:  ldloc.s    V_8
    IL_013e:  ldc.i4.1
    IL_013f:  add
    IL_0140:  stloc.s    V_8
    IL_0142:  ldloc.s    V_8
    IL_0144:  ldloc.1
    IL_0145:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.InventorySlotWidget>::get_Count()
    IL_014a:  blt.s      IL_0104

    IL_014c:  ldarg.0
    IL_014d:  ldloc.0
    IL_014e:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Count()
    IL_0153:  ldloc.1
    IL_0154:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.InventorySlotWidget>::get_Count()
    IL_0159:  add
    IL_015a:  ldc.i4.1
    IL_015b:  sub
    IL_015c:  ldloc.1
    IL_015d:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.InventorySlotWidget>::get_Count()
    IL_0162:  div
    IL_0163:  stfld      int32 Game.FurnitureInventoryPanel::m_pagesCount
    IL_0168:  ldarg.0
    IL_0169:  ldarg.0
    IL_016a:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_016f:  callvirt   instance int32 Game.ComponentFurnitureInventory::get_PageIndex()
    IL_0174:  stfld      int32 Game.FurnitureInventoryPanel::m_assignedPage
    IL_0179:  ret
  } // end of method FurnitureInventoryPanel::AssignInventorySlots

  .method private hidebysig instance void 
          NewFurnitureSet() cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0006:  ldstr      "Furniture Set Name"
    IL_000b:  ldstr      "New Set"
    IL_0010:  ldc.i4.s   20
    IL_0012:  ldarg.0
    IL_0013:  ldftn      instance void Game.FurnitureInventoryPanel::'<NewFurnitureSet>b__28_0'(string)
    IL_0019:  newobj     instance void class [System.Runtime]System.Action`1<string>::.ctor(object,
                                                                                            native int)
    IL_001e:  callvirt   instance void Game.WidgetInput::EnterText(string,
                                                                   string,
                                                                   int32,
                                                                   class [System.Runtime]System.Action`1<string>)
    IL_0023:  ret
  } // end of method FurnitureInventoryPanel::NewFurnitureSet

  .method private hidebysig instance void 
          DeleteFurnitureSet() cil managed
  {
    // 代码大小       100 (0x64)
    .maxstack  4
    .locals init (class Game.FurnitureSet V_0,
             int32 V_1,
             valuetype [Engine]Engine.ReadOnlyList`1<class Game.FurnitureSet> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ListPanelWidget Game.FurnitureInventoryPanel::m_furnitureSetList
    IL_0006:  callvirt   instance object Game.ListPanelWidget::get_SelectedItem()
    IL_000b:  isinst     Game.FurnitureSet
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  brfalse.s  IL_0063

    IL_0014:  ldarg.0
    IL_0015:  call       instance class Game.SubsystemFurnitureBlockBehavior Game.FurnitureInventoryPanel::get_SubsystemFurnitureBlockBehavior()
    IL_001a:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.FurnitureSet> Game.SubsystemFurnitureBlockBehavior::get_FurnitureSets()
    IL_001f:  stloc.2
    IL_0020:  ldloca.s   V_2
    IL_0022:  ldloc.0
    IL_0023:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<class Game.FurnitureSet>::IndexOf(!0)
    IL_0028:  stloc.1
    IL_0029:  ldarg.0
    IL_002a:  call       instance class Game.SubsystemFurnitureBlockBehavior Game.FurnitureInventoryPanel::get_SubsystemFurnitureBlockBehavior()
    IL_002f:  ldloc.0
    IL_0030:  callvirt   instance void Game.SubsystemFurnitureBlockBehavior::DeleteFurnitureSet(class Game.FurnitureSet)
    IL_0035:  ldarg.0
    IL_0036:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_003b:  ldloc.1
    IL_003c:  ldc.i4.0
    IL_003d:  bgt.s      IL_0042

    IL_003f:  ldnull
    IL_0040:  br.s       IL_0058

    IL_0042:  ldarg.0
    IL_0043:  call       instance class Game.SubsystemFurnitureBlockBehavior Game.FurnitureInventoryPanel::get_SubsystemFurnitureBlockBehavior()
    IL_0048:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.FurnitureSet> Game.SubsystemFurnitureBlockBehavior::get_FurnitureSets()
    IL_004d:  stloc.2
    IL_004e:  ldloca.s   V_2
    IL_0050:  ldloc.1
    IL_0051:  ldc.i4.1
    IL_0052:  sub
    IL_0053:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class Game.FurnitureSet>::get_Item(int32)
    IL_0058:  callvirt   instance void Game.ComponentFurnitureInventory::set_FurnitureSet(class Game.FurnitureSet)
    IL_005d:  ldarg.0
    IL_005e:  call       instance void Game.FurnitureInventoryPanel::Invalidate()
    IL_0063:  ret
  } // end of method FurnitureInventoryPanel::DeleteFurnitureSet

  .method private hidebysig instance void 
          RenameFurnitureSet() cil managed
  {
    // 代码大小       85 (0x55)
    .maxstack  6
    .locals init (class Game.FurnitureInventoryPanel/'<>c__DisplayClass30_0' V_0)
    IL_0000:  newobj     instance void Game.FurnitureInventoryPanel/'<>c__DisplayClass30_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      class Game.FurnitureInventoryPanel Game.FurnitureInventoryPanel/'<>c__DisplayClass30_0'::'<>4__this'
    IL_000d:  ldloc.0
    IL_000e:  ldarg.0
    IL_000f:  ldfld      class Game.ListPanelWidget Game.FurnitureInventoryPanel::m_furnitureSetList
    IL_0014:  callvirt   instance object Game.ListPanelWidget::get_SelectedItem()
    IL_0019:  isinst     Game.FurnitureSet
    IL_001e:  stfld      class Game.FurnitureSet Game.FurnitureInventoryPanel/'<>c__DisplayClass30_0'::furnitureSet
    IL_0023:  ldloc.0
    IL_0024:  ldfld      class Game.FurnitureSet Game.FurnitureInventoryPanel/'<>c__DisplayClass30_0'::furnitureSet
    IL_0029:  brfalse.s  IL_0054

    IL_002b:  ldarg.0
    IL_002c:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0031:  ldstr      "Furniture Set Name"
    IL_0036:  ldloc.0
    IL_0037:  ldfld      class Game.FurnitureSet Game.FurnitureInventoryPanel/'<>c__DisplayClass30_0'::furnitureSet
    IL_003c:  ldfld      string Game.FurnitureSet::Name
    IL_0041:  ldc.i4.s   20
    IL_0043:  ldloc.0
    IL_0044:  ldftn      instance void Game.FurnitureInventoryPanel/'<>c__DisplayClass30_0'::'<RenameFurnitureSet>b__0'(string)
    IL_004a:  newobj     instance void class [System.Runtime]System.Action`1<string>::.ctor(object,
                                                                                            native int)
    IL_004f:  callvirt   instance void Game.WidgetInput::EnterText(string,
                                                                   string,
                                                                   int32,
                                                                   class [System.Runtime]System.Action`1<string>)
    IL_0054:  ret
  } // end of method FurnitureInventoryPanel::RenameFurnitureSet

  .method private hidebysig instance void 
          MoveFurnitureSet(int32 move) cil managed
  {
    // 代码大小       40 (0x28)
    .maxstack  3
    .locals init (class Game.FurnitureSet V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ListPanelWidget Game.FurnitureInventoryPanel::m_furnitureSetList
    IL_0006:  callvirt   instance object Game.ListPanelWidget::get_SelectedItem()
    IL_000b:  isinst     Game.FurnitureSet
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  brfalse.s  IL_0027

    IL_0014:  ldarg.0
    IL_0015:  call       instance class Game.SubsystemFurnitureBlockBehavior Game.FurnitureInventoryPanel::get_SubsystemFurnitureBlockBehavior()
    IL_001a:  ldloc.0
    IL_001b:  ldarg.1
    IL_001c:  callvirt   instance void Game.SubsystemFurnitureBlockBehavior::MoveFurnitureSet(class Game.FurnitureSet,
                                                                                              int32)
    IL_0021:  ldarg.0
    IL_0022:  call       instance void Game.FurnitureInventoryPanel::Invalidate()
    IL_0027:  ret
  } // end of method FurnitureInventoryPanel::MoveFurnitureSet

  .method private hidebysig instance void 
          ImportFurnitureSet(class Game.SubsystemTerrain subsystemTerrain) cil managed
  {
    // 代码大小       176 (0xb0)
    .maxstack  7
    .locals init (class Game.FurnitureInventoryPanel/'<>c__DisplayClass32_0' V_0)
    IL_0000:  newobj     instance void Game.FurnitureInventoryPanel/'<>c__DisplayClass32_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      class Game.FurnitureInventoryPanel Game.FurnitureInventoryPanel/'<>c__DisplayClass32_0'::'<>4__this'
    IL_000d:  ldloc.0
    IL_000e:  ldarg.1
    IL_000f:  stfld      class Game.SubsystemTerrain Game.FurnitureInventoryPanel/'<>c__DisplayClass32_0'::subsystemTerrain
    IL_0014:  call       void Game.FurniturePacksManager::UpdateFurniturePacksList()
    IL_0019:  call       valuetype [Engine]Engine.ReadOnlyList`1<string> Game.FurniturePacksManager::get_FurniturePackNames()
    IL_001e:  box        valuetype [Engine]Engine.ReadOnlyList`1<string>
    IL_0023:  call       int32 [System.Linq]System.Linq.Enumerable::Count<string>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0028:  brtrue.s   IL_0056

    IL_002a:  ldarg.0
    IL_002b:  ldfld      class Game.ComponentPlayer Game.FurnitureInventoryPanel::m_componentPlayer
    IL_0030:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_0035:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
    IL_003a:  ldstr      "No Furniture Packs"
    IL_003f:  ldstr      "No furniture packs found in your content. Download"
    + " some from Community Content."
    IL_0044:  ldstr      "OK"
    IL_0049:  ldnull
    IL_004a:  ldnull
    IL_004b:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                 string,
                                                                 string,
                                                                 string,
                                                                 class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
    IL_0050:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_0055:  ret

    IL_0056:  ldarg.0
    IL_0057:  ldfld      class Game.ComponentPlayer Game.FurnitureInventoryPanel::m_componentPlayer
    IL_005c:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_0061:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
    IL_0066:  ldstr      "Select Furniture Pack"
    IL_006b:  call       valuetype [Engine]Engine.ReadOnlyList`1<string> Game.FurniturePacksManager::get_FurniturePackNames()
    IL_0070:  box        valuetype [Engine]Engine.ReadOnlyList`1<string>
    IL_0075:  ldc.r4     64.
    IL_007a:  ldsfld     class [System.Runtime]System.Func`2<object,string> Game.FurnitureInventoryPanel/'<>c'::'<>9__32_0'
    IL_007f:  dup
    IL_0080:  brtrue.s   IL_0099

    IL_0082:  pop
    IL_0083:  ldsfld     class Game.FurnitureInventoryPanel/'<>c' Game.FurnitureInventoryPanel/'<>c'::'<>9'
    IL_0088:  ldftn      instance string Game.FurnitureInventoryPanel/'<>c'::'<ImportFurnitureSet>b__32_0'(object)
    IL_008e:  newobj     instance void class [System.Runtime]System.Func`2<object,string>::.ctor(object,
                                                                                                 native int)
    IL_0093:  dup
    IL_0094:  stsfld     class [System.Runtime]System.Func`2<object,string> Game.FurnitureInventoryPanel/'<>c'::'<>9__32_0'
    IL_0099:  ldloc.0
    IL_009a:  ldftn      instance void Game.FurnitureInventoryPanel/'<>c__DisplayClass32_0'::'<ImportFurnitureSet>b__1'(object)
    IL_00a0:  newobj     instance void class [System.Runtime]System.Action`1<object>::.ctor(object,
                                                                                            native int)
    IL_00a5:  newobj     instance void Game.ListSelectionDialog::.ctor(string,
                                                                       class [System.Runtime]System.Collections.IEnumerable,
                                                                       float32,
                                                                       class [System.Runtime]System.Func`2<object,string>,
                                                                       class [System.Runtime]System.Action`1<object>)
    IL_00aa:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_00af:  ret
  } // end of method FurnitureInventoryPanel::ImportFurnitureSet

  .method private hidebysig instance void 
          ExportFurnitureSet() cil managed
  {
    // 代码大小       164 (0xa4)
    .maxstack  7
    .locals init (class Game.FurnitureDesign[] V_0,
             string V_1,
             class [System.Runtime]System.Exception V_2)
    .try
    {
      IL_0000:  ldarg.0
      IL_0001:  call       instance class Game.SubsystemFurnitureBlockBehavior Game.FurnitureInventoryPanel::get_SubsystemFurnitureBlockBehavior()
      IL_0006:  ldarg.0
      IL_0007:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
      IL_000c:  callvirt   instance class Game.FurnitureSet Game.ComponentFurnitureInventory::get_FurnitureSet()
      IL_0011:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.FurnitureDesign> Game.SubsystemFurnitureBlockBehavior::GetFurnitureSetDesigns(class Game.FurnitureSet)
      IL_0016:  call       !!0[] [System.Linq]System.Linq.Enumerable::ToArray<class Game.FurnitureDesign>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
      IL_001b:  stloc.0
      IL_001c:  ldarg.0
      IL_001d:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
      IL_0022:  callvirt   instance class Game.FurnitureSet Game.ComponentFurnitureInventory::get_FurnitureSet()
      IL_0027:  ldfld      string Game.FurnitureSet::Name
      IL_002c:  ldloc.0
      IL_002d:  call       string Game.FurniturePacksManager::CreateFurniturePack(string,
                                                                                  class [System.Runtime]System.Collections.Generic.ICollection`1<class Game.FurnitureDesign>)
      IL_0032:  call       string Game.FurniturePacksManager::GetDisplayName(string)
      IL_0037:  stloc.1
      IL_0038:  ldarg.0
      IL_0039:  ldfld      class Game.ComponentPlayer Game.FurnitureInventoryPanel::m_componentPlayer
      IL_003e:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
      IL_0043:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
      IL_0048:  ldstr      "Exported"
      IL_004d:  ldstr      "Furniture pack \"{0}\" exported to content."
      IL_0052:  ldc.i4.1
      IL_0053:  newarr     [System.Runtime]System.Object
      IL_0058:  dup
      IL_0059:  ldc.i4.0
      IL_005a:  ldloc.1
      IL_005b:  stelem.ref
      IL_005c:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_0061:  ldstr      "OK"
      IL_0066:  ldnull
      IL_0067:  ldnull
      IL_0068:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                   string,
                                                                   string,
                                                                   string,
                                                                   class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
      IL_006d:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                                class Game.Dialog)
      IL_0072:  leave.s    IL_00a3

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_0074:  stloc.2
      IL_0075:  ldarg.0
      IL_0076:  ldfld      class Game.ComponentPlayer Game.FurnitureInventoryPanel::m_componentPlayer
      IL_007b:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
      IL_0080:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
      IL_0085:  ldstr      "Export Failed"
      IL_008a:  ldloc.2
      IL_008b:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
      IL_0090:  ldstr      "OK"
      IL_0095:  ldnull
      IL_0096:  ldnull
      IL_0097:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                   string,
                                                                   string,
                                                                   string,
                                                                   class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
      IL_009c:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                                class Game.Dialog)
      IL_00a1:  leave.s    IL_00a3

    }  // end handler
    IL_00a3:  ret
  } // end of method FurnitureInventoryPanel::ExportFurnitureSet

  .method private hidebysig instance class Game.Widget 
          '<.ctor>b__10_0'(object item) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  castclass  Game.FurnitureSet
    IL_0007:  newobj     instance void Game.FurnitureSetItemWidget::.ctor(class Game.FurnitureInventoryPanel,
                                                                          class Game.FurnitureSet)
    IL_000c:  ret
  } // end of method FurnitureInventoryPanel::'<.ctor>b__10_0'

  .method private hidebysig instance void 
          '<.ctor>b__10_1'(class Game.ListPanelWidget '<obj>') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       113 (0x71)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.FurnitureInventoryPanel::m_ignoreSelectionChanged
    IL_0006:  brtrue.s   IL_0070

    IL_0008:  ldarg.0
    IL_0009:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_000e:  callvirt   instance class Game.FurnitureSet Game.ComponentFurnitureInventory::get_FurnitureSet()
    IL_0013:  ldarg.0
    IL_0014:  ldfld      class Game.ListPanelWidget Game.FurnitureInventoryPanel::m_furnitureSetList
    IL_0019:  callvirt   instance object Game.ListPanelWidget::get_SelectedItem()
    IL_001e:  isinst     Game.FurnitureSet
    IL_0023:  beq.s      IL_0070

    IL_0025:  ldarg.0
    IL_0026:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_002b:  ldc.i4.0
    IL_002c:  callvirt   instance void Game.ComponentFurnitureInventory::set_PageIndex(int32)
    IL_0031:  ldarg.0
    IL_0032:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_0037:  ldarg.0
    IL_0038:  ldfld      class Game.ListPanelWidget Game.FurnitureInventoryPanel::m_furnitureSetList
    IL_003d:  callvirt   instance object Game.ListPanelWidget::get_SelectedItem()
    IL_0042:  isinst     Game.FurnitureSet
    IL_0047:  callvirt   instance void Game.ComponentFurnitureInventory::set_FurnitureSet(class Game.FurnitureSet)
    IL_004c:  ldarg.0
    IL_004d:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_0052:  callvirt   instance class Game.FurnitureSet Game.ComponentFurnitureInventory::get_FurnitureSet()
    IL_0057:  brtrue.s   IL_006a

    IL_0059:  ldarg.0
    IL_005a:  ldfld      class Game.ListPanelWidget Game.FurnitureInventoryPanel::m_furnitureSetList
    IL_005f:  ldc.i4.0
    IL_0060:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_0065:  callvirt   instance void Game.ListPanelWidget::set_SelectedIndex(valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_006a:  ldarg.0
    IL_006b:  call       instance void Game.FurnitureInventoryPanel::AssignInventorySlots()
    IL_0070:  ret
  } // end of method FurnitureInventoryPanel::'<.ctor>b__10_1'

  .method private hidebysig instance void 
          '<Update>b__23_0'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       74 (0x4a)
    .maxstack  6
    .locals init (valuetype [Engine]Engine.ReadOnlyList`1<class Game.FurnitureSet> V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemFurnitureBlockBehavior Game.FurnitureInventoryPanel::get_SubsystemFurnitureBlockBehavior()
    IL_0006:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.FurnitureSet> Game.SubsystemFurnitureBlockBehavior::get_FurnitureSets()
    IL_000b:  stloc.0
    IL_000c:  ldloca.s   V_0
    IL_000e:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<class Game.FurnitureSet>::get_Count()
    IL_0013:  ldc.i4.s   32
    IL_0015:  bge.s      IL_001e

    IL_0017:  ldarg.0
    IL_0018:  call       instance void Game.FurnitureInventoryPanel::NewFurnitureSet()
    IL_001d:  ret

    IL_001e:  ldarg.0
    IL_001f:  ldfld      class Game.ComponentPlayer Game.FurnitureInventoryPanel::m_componentPlayer
    IL_0024:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_0029:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
    IL_002e:  ldstr      "Too many furniture sets"
    IL_0033:  ldstr      "Delete some furniture sets before adding a new one."
    IL_0038:  ldstr      "OK"
    IL_003d:  ldnull
    IL_003e:  ldnull
    IL_003f:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                 string,
                                                                 string,
                                                                 string,
                                                                 class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
    IL_0044:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_0049:  ret
  } // end of method FurnitureInventoryPanel::'<Update>b__23_0'

  .method private hidebysig instance void 
          '<Update>b__23_1'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class Game.SubsystemTerrain Game.FurnitureInventoryPanel::get_SubsystemTerrain()
    IL_0007:  call       instance void Game.FurnitureInventoryPanel::ImportFurnitureSet(class Game.SubsystemTerrain)
    IL_000c:  ret
  } // end of method FurnitureInventoryPanel::'<Update>b__23_1'

  .method private hidebysig instance void 
          '<Update>b__23_4'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.FurnitureInventoryPanel::RenameFurnitureSet()
    IL_0006:  ret
  } // end of method FurnitureInventoryPanel::'<Update>b__23_4'

  .method private hidebysig instance void 
          '<Update>b__23_5'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       96 (0x60)
    .maxstack  7
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemFurnitureBlockBehavior Game.FurnitureInventoryPanel::get_SubsystemFurnitureBlockBehavior()
    IL_0006:  ldarg.0
    IL_0007:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_000c:  callvirt   instance class Game.FurnitureSet Game.ComponentFurnitureInventory::get_FurnitureSet()
    IL_0011:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.FurnitureDesign> Game.SubsystemFurnitureBlockBehavior::GetFurnitureSetDesigns(class Game.FurnitureSet)
    IL_0016:  call       int32 [System.Linq]System.Linq.Enumerable::Count<class Game.FurnitureDesign>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_001b:  ldc.i4.0
    IL_001c:  ble.s      IL_0059

    IL_001e:  ldarg.0
    IL_001f:  ldfld      class Game.ComponentPlayer Game.FurnitureInventoryPanel::m_componentPlayer
    IL_0024:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_0029:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
    IL_002e:  ldstr      "Warning"
    IL_0033:  ldstr      "All furniture in the set will become uncategorized"
    + " and will be deleted if not used in the world."
    IL_0038:  ldstr      "Delete"
    IL_003d:  ldstr      "Cancel"
    IL_0042:  ldarg.0
    IL_0043:  ldftn      instance void Game.FurnitureInventoryPanel::'<Update>b__23_6'(valuetype Game.MessageDialogButton)
    IL_0049:  newobj     instance void class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>::.ctor(object,
                                                                                                                        native int)
    IL_004e:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                 string,
                                                                 string,
                                                                 string,
                                                                 class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
    IL_0053:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_0058:  ret

    IL_0059:  ldarg.0
    IL_005a:  call       instance void Game.FurnitureInventoryPanel::DeleteFurnitureSet()
    IL_005f:  ret
  } // end of method FurnitureInventoryPanel::'<Update>b__23_5'

  .method private hidebysig instance void 
          '<Update>b__23_6'(valuetype Game.MessageDialogButton b) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       10 (0xa)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  brtrue.s   IL_0009

    IL_0003:  ldarg.0
    IL_0004:  call       instance void Game.FurnitureInventoryPanel::DeleteFurnitureSet()
    IL_0009:  ret
  } // end of method FurnitureInventoryPanel::'<Update>b__23_6'

  .method private hidebysig instance void 
          '<Update>b__23_7'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.m1
    IL_0002:  call       instance void Game.FurnitureInventoryPanel::MoveFurnitureSet(int32)
    IL_0007:  ret
  } // end of method FurnitureInventoryPanel::'<Update>b__23_7'

  .method private hidebysig instance void 
          '<Update>b__23_8'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  call       instance void Game.FurnitureInventoryPanel::MoveFurnitureSet(int32)
    IL_0007:  ret
  } // end of method FurnitureInventoryPanel::'<Update>b__23_8'

  .method private hidebysig instance void 
          '<Update>b__23_9'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.FurnitureInventoryPanel::ExportFurnitureSet()
    IL_0006:  ret
  } // end of method FurnitureInventoryPanel::'<Update>b__23_9'

  .method private hidebysig instance void 
          '<NewFurnitureSet>b__28_0'(string s) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       48 (0x30)
    .maxstack  3
    .locals init (class Game.FurnitureSet V_0)
    IL_0000:  ldarg.1
    IL_0001:  brfalse.s  IL_002f

    IL_0003:  ldarg.0
    IL_0004:  call       instance class Game.SubsystemFurnitureBlockBehavior Game.FurnitureInventoryPanel::get_SubsystemFurnitureBlockBehavior()
    IL_0009:  ldarg.1
    IL_000a:  ldnull
    IL_000b:  callvirt   instance class Game.FurnitureSet Game.SubsystemFurnitureBlockBehavior::NewFurnitureSet(string,
                                                                                                                string)
    IL_0010:  stloc.0
    IL_0011:  ldarg.0
    IL_0012:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_0017:  ldloc.0
    IL_0018:  callvirt   instance void Game.ComponentFurnitureInventory::set_FurnitureSet(class Game.FurnitureSet)
    IL_001d:  ldarg.0
    IL_001e:  call       instance void Game.FurnitureInventoryPanel::Populate()
    IL_0023:  ldarg.0
    IL_0024:  ldfld      class Game.ListPanelWidget Game.FurnitureInventoryPanel::m_furnitureSetList
    IL_0029:  ldloc.0
    IL_002a:  callvirt   instance void Game.ListPanelWidget::ScrollToItem(object)
    IL_002f:  ret
  } // end of method FurnitureInventoryPanel::'<NewFurnitureSet>b__28_0'

  .property instance class Game.SubsystemTerrain
          SubsystemTerrain()
  {
    .get instance class Game.SubsystemTerrain Game.FurnitureInventoryPanel::get_SubsystemTerrain()
    .set instance void Game.FurnitureInventoryPanel::set_SubsystemTerrain(class Game.SubsystemTerrain)
  } // end of property FurnitureInventoryPanel::SubsystemTerrain
  .property instance class Game.SubsystemFurnitureBlockBehavior
          SubsystemFurnitureBlockBehavior()
  {
    .get instance class Game.SubsystemFurnitureBlockBehavior Game.FurnitureInventoryPanel::get_SubsystemFurnitureBlockBehavior()
    .set instance void Game.FurnitureInventoryPanel::set_SubsystemFurnitureBlockBehavior(class Game.SubsystemFurnitureBlockBehavior)
  } // end of property FurnitureInventoryPanel::SubsystemFurnitureBlockBehavior
  .property instance class Game.ComponentFurnitureInventory
          ComponentFurnitureInventory()
  {
    .get instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    .set instance void Game.FurnitureInventoryPanel::set_ComponentFurnitureInventory(class Game.ComponentFurnitureInventory)
  } // end of property FurnitureInventoryPanel::ComponentFurnitureInventory
} // end of class Game.FurnitureInventoryPanel