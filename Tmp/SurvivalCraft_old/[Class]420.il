.class public abstract auto ansi sealed beforefieldinit Game.DialogsManager
       extends [System.Runtime]System.Object
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass3_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class Game.Dialog dialog
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass3_0'::.ctor

    .method assembly hidebysig instance void 
            '<ShowDialog>b__0'() cil managed
    {
      // 代码大小       66 (0x42)
      .maxstack  2
      IL_0000:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.Dialog> Game.DialogsManager::m_dialogsStack
      IL_0005:  ldarg.0
      IL_0006:  ldfld      class Game.Dialog Game.DialogsManager/'<>c__DisplayClass3_0'::dialog
      IL_000b:  callvirt   instance bool class [System.Collections]System.Collections.Generic.List`1<class Game.Dialog>::Contains(!0)
      IL_0010:  brtrue.s   IL_0041

      IL_0012:  call       class Game.ContainerWidget Game.WidgetsManager::get_RootWidget()
      IL_0017:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
      IL_001c:  ldarg.0
      IL_001d:  ldfld      class Game.Dialog Game.DialogsManager/'<>c__DisplayClass3_0'::dialog
      IL_0022:  callvirt   instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
      IL_0027:  callvirt   instance void Game.WidgetsContainer::Add(class Game.Widget)
      IL_002c:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.Dialog> Game.DialogsManager::m_dialogsStack
      IL_0031:  ldarg.0
      IL_0032:  ldfld      class Game.Dialog Game.DialogsManager/'<>c__DisplayClass3_0'::dialog
      IL_0037:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.Dialog>::Add(!0)
      IL_003c:  call       void Game.InputManager::Clear()
      IL_0041:  ret
    } // end of method '<>c__DisplayClass3_0'::'<ShowDialog>b__0'

  } // end of class '<>c__DisplayClass3_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass4_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class Game.Dialog dialog
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass4_0'::.ctor

    .method assembly hidebysig instance void 
            '<HideDialog>b__0'() cil managed
    {
      // 代码大小       67 (0x43)
      .maxstack  2
      IL_0000:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.Dialog> Game.DialogsManager::m_dialogsStack
      IL_0005:  ldarg.0
      IL_0006:  ldfld      class Game.Dialog Game.DialogsManager/'<>c__DisplayClass4_0'::dialog
      IL_000b:  callvirt   instance bool class [System.Collections]System.Collections.Generic.List`1<class Game.Dialog>::Contains(!0)
      IL_0010:  brfalse.s  IL_0042

      IL_0012:  call       class Game.ContainerWidget Game.WidgetsManager::get_RootWidget()
      IL_0017:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
      IL_001c:  ldarg.0
      IL_001d:  ldfld      class Game.Dialog Game.DialogsManager/'<>c__DisplayClass4_0'::dialog
      IL_0022:  callvirt   instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
      IL_0027:  callvirt   instance void Game.WidgetsContainer::Remove(class Game.Widget)
      IL_002c:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.Dialog> Game.DialogsManager::m_dialogsStack
      IL_0031:  ldarg.0
      IL_0032:  ldfld      class Game.Dialog Game.DialogsManager/'<>c__DisplayClass4_0'::dialog
      IL_0037:  callvirt   instance bool class [System.Collections]System.Collections.Generic.List`1<class Game.Dialog>::Remove(!0)
      IL_003c:  pop
      IL_003d:  call       void Game.InputManager::Clear()
      IL_0042:  ret
    } // end of method '<>c__DisplayClass4_0'::'<HideDialog>b__0'

  } // end of class '<>c__DisplayClass4_0'

  .field private static class [System.Collections]System.Collections.Generic.List`1<class Game.Dialog> m_dialogsStack
  .method public hidebysig specialname static 
          valuetype [Engine]Engine.ReadOnlyList`1<class Game.Dialog> 
          get_Dialogs() cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.Dialog> Game.DialogsManager::m_dialogsStack
    IL_0005:  newobj     instance void valuetype [Engine]Engine.ReadOnlyList`1<class Game.Dialog>::.ctor(class [System.Collections]System.Collections.Generic.List`1<!0>)
    IL_000a:  ret
  } // end of method DialogsManager::get_Dialogs

  .method public hidebysig static void  ShowDialog(class Game.Dialog dialog) cil managed
  {
    // 代码大小       30 (0x1e)
    .maxstack  8
    IL_0000:  newobj     instance void Game.DialogsManager/'<>c__DisplayClass3_0'::.ctor()
    IL_0005:  dup
    IL_0006:  ldarg.0
    IL_0007:  stfld      class Game.Dialog Game.DialogsManager/'<>c__DisplayClass3_0'::dialog
    IL_000c:  ldftn      instance void Game.DialogsManager/'<>c__DisplayClass3_0'::'<ShowDialog>b__0'()
    IL_0012:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0017:  ldc.i4.0
    IL_0018:  call       void [Engine]Engine.Dispatcher::Dispatch(class [System.Runtime]System.Action,
                                                                  bool)
    IL_001d:  ret
  } // end of method DialogsManager::ShowDialog

  .method public hidebysig static void  HideDialog(class Game.Dialog dialog) cil managed
  {
    // 代码大小       30 (0x1e)
    .maxstack  8
    IL_0000:  newobj     instance void Game.DialogsManager/'<>c__DisplayClass4_0'::.ctor()
    IL_0005:  dup
    IL_0006:  ldarg.0
    IL_0007:  stfld      class Game.Dialog Game.DialogsManager/'<>c__DisplayClass4_0'::dialog
    IL_000c:  ldftn      instance void Game.DialogsManager/'<>c__DisplayClass4_0'::'<HideDialog>b__0'()
    IL_0012:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0017:  ldc.i4.0
    IL_0018:  call       void [Engine]Engine.Dispatcher::Dispatch(class [System.Runtime]System.Action,
                                                                  bool)
    IL_001d:  ret
  } // end of method DialogsManager::HideDialog

  .method public hidebysig static void  HideAllDialogs() cil managed
  {
    // 代码大小       34 (0x22)
    .maxstack  2
    .locals init (class Game.Dialog[] V_0,
             int32 V_1)
    IL_0000:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.Dialog> Game.DialogsManager::m_dialogsStack
    IL_0005:  callvirt   instance !0[] class [System.Collections]System.Collections.Generic.List`1<class Game.Dialog>::ToArray()
    IL_000a:  stloc.0
    IL_000b:  ldc.i4.0
    IL_000c:  stloc.1
    IL_000d:  br.s       IL_001b

    IL_000f:  ldloc.0
    IL_0010:  ldloc.1
    IL_0011:  ldelem.ref
    IL_0012:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
    IL_0017:  ldloc.1
    IL_0018:  ldc.i4.1
    IL_0019:  add
    IL_001a:  stloc.1
    IL_001b:  ldloc.1
    IL_001c:  ldloc.0
    IL_001d:  ldlen
    IL_001e:  conv.i4
    IL_001f:  blt.s      IL_000f

    IL_0021:  ret
  } // end of method DialogsManager::HideAllDialogs

  .method public hidebysig static void  Update() cil managed
  {
    // 代码大小       66 (0x42)
    .maxstack  2
    .locals init (class Game.Dialog[] V_0,
             int32 V_1,
             class Game.Dialog V_2,
             class [System.Runtime]System.Exception V_3)
    IL_0000:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.Dialog> Game.DialogsManager::m_dialogsStack
    IL_0005:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.Dialog>::get_Count()
    IL_000a:  ldc.i4.0
    IL_000b:  ble.s      IL_0041

    IL_000d:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.Dialog> Game.DialogsManager::m_dialogsStack
    IL_0012:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Reverse<class Game.Dialog>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0017:  call       !!0[] [System.Linq]System.Linq.Enumerable::ToArray<class Game.Dialog>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_001c:  stloc.0
    IL_001d:  ldc.i4.0
    IL_001e:  stloc.1
    IL_001f:  br.s       IL_003b

    IL_0021:  ldloc.0
    IL_0022:  ldloc.1
    IL_0023:  ldelem.ref
    IL_0024:  stloc.2
    .try
    {
      IL_0025:  ldloc.2
      IL_0026:  callvirt   instance void Game.Dialog::Update()
      IL_002b:  leave.s    IL_0037

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_002d:  stloc.3
      IL_002e:  ldnull
      IL_002f:  ldloc.3
      IL_0030:  call       void Game.ExceptionManager::ReportExceptionToUser(string,
                                                                             class [System.Runtime]System.Exception)
      IL_0035:  leave.s    IL_0037

    }  // end handler
    IL_0037:  ldloc.1
    IL_0038:  ldc.i4.1
    IL_0039:  add
    IL_003a:  stloc.1
    IL_003b:  ldloc.1
    IL_003c:  ldloc.0
    IL_003d:  ldlen
    IL_003e:  conv.i4
    IL_003f:  blt.s      IL_0021

    IL_0041:  ret
  } // end of method DialogsManager::Update

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.Dialog>::.ctor()
    IL_0005:  stsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.Dialog> Game.DialogsManager::m_dialogsStack
    IL_000a:  ret
  } // end of method DialogsManager::.cctor

  .property valuetype [Engine]Engine.ReadOnlyList`1<class Game.Dialog>
          Dialogs()
  {
    .get valuetype [Engine]Engine.ReadOnlyList`1<class Game.Dialog> Game.DialogsManager::get_Dialogs()
  } // end of property DialogsManager::Dialogs
} // end of class Game.DialogsManager