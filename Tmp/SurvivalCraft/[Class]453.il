.class public abstract auto ansi sealed beforefieldinit Game.DialogsManager
       extends [System.Runtime]System.Object
{
  .class auto ansi nested private beforefieldinit AnimationData
         extends [System.Runtime]System.Object
  {
    .field public float32 Factor
    .field public int32 Direction
    .field public class Game.RectangleWidget CoverRectangle
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       48 (0x30)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  newobj     instance void Game.RectangleWidget::.ctor()
      IL_0006:  dup
      IL_0007:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
      IL_000c:  callvirt   instance void Game.RectangleWidget::set_OutlineColor(valuetype [Engine]Engine.Color)
      IL_0011:  dup
      IL_0012:  ldc.i4.0
      IL_0013:  ldc.i4.0
      IL_0014:  ldc.i4.0
      IL_0015:  ldc.i4     0xc0
      IL_001a:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                     int32,
                                                                     int32,
                                                                     int32)
      IL_001f:  callvirt   instance void Game.RectangleWidget::set_FillColor(valuetype [Engine]Engine.Color)
      IL_0024:  stfld      class Game.RectangleWidget Game.DialogsManager/AnimationData::CoverRectangle
      IL_0029:  ldarg.0
      IL_002a:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_002f:  ret
    } // end of method AnimationData::.ctor

  } // end of class AnimationData

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass7_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class Game.Dialog dialog
    .field public class Game.ContainerWidget parentWidget
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass7_0'::.ctor

    .method assembly hidebysig instance void 
            '<ShowDialog>b__0'() cil managed
    {
      // 代码大小       220 (0xdc)
      .maxstack  3
      .locals init (class Game.DialogsManager/AnimationData V_0)
      IL_0000:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.Dialog> Game.DialogsManager::m_dialogs
      IL_0005:  ldarg.0
      IL_0006:  ldfld      class Game.Dialog Game.DialogsManager/'<>c__DisplayClass7_0'::dialog
      IL_000b:  callvirt   instance bool class [System.Collections]System.Collections.Generic.List`1<class Game.Dialog>::Contains(!0)
      IL_0010:  brtrue     IL_00db

      IL_0015:  ldarg.0
      IL_0016:  ldfld      class Game.ContainerWidget Game.DialogsManager/'<>c__DisplayClass7_0'::parentWidget
      IL_001b:  brtrue.s   IL_0031

      IL_001d:  ldarg.0
      IL_001e:  call       class Game.Screen Game.ScreensManager::get_CurrentScreen()
      IL_0023:  dup
      IL_0024:  brtrue.s   IL_002c

      IL_0026:  pop
      IL_0027:  call       class Game.ContainerWidget Game.WidgetsManager::get_RootWidget()
      IL_002c:  stfld      class Game.ContainerWidget Game.DialogsManager/'<>c__DisplayClass7_0'::parentWidget
      IL_0031:  ldarg.0
      IL_0032:  ldfld      class Game.Dialog Game.DialogsManager/'<>c__DisplayClass7_0'::dialog
      IL_0037:  ldnull
      IL_0038:  callvirt   instance void Game.Widget::set_WidgetsHierarchyInput(class Game.WidgetInput)
      IL_003d:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.Dialog> Game.DialogsManager::m_dialogs
      IL_0042:  ldarg.0
      IL_0043:  ldfld      class Game.Dialog Game.DialogsManager/'<>c__DisplayClass7_0'::dialog
      IL_0048:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.Dialog>::Add(!0)
      IL_004d:  newobj     instance void Game.DialogsManager/AnimationData::.ctor()
      IL_0052:  dup
      IL_0053:  ldc.i4.1
      IL_0054:  stfld      int32 Game.DialogsManager/AnimationData::Direction
      IL_0059:  stloc.0
      IL_005a:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Dialog,class Game.DialogsManager/AnimationData> Game.DialogsManager::m_animationData
      IL_005f:  ldarg.0
      IL_0060:  ldfld      class Game.Dialog Game.DialogsManager/'<>c__DisplayClass7_0'::dialog
      IL_0065:  ldloc.0
      IL_0066:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Dialog,class Game.DialogsManager/AnimationData>::set_Item(!0,
                                                                                                                                                                                !1)
      IL_006b:  ldarg.0
      IL_006c:  ldfld      class Game.ContainerWidget Game.DialogsManager/'<>c__DisplayClass7_0'::parentWidget
      IL_0071:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
      IL_0076:  ldloc.0
      IL_0077:  ldfld      class Game.RectangleWidget Game.DialogsManager/AnimationData::CoverRectangle
      IL_007c:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
      IL_0081:  ldarg.0
      IL_0082:  ldfld      class Game.Dialog Game.DialogsManager/'<>c__DisplayClass7_0'::dialog
      IL_0087:  callvirt   instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
      IL_008c:  brfalse.s  IL_00a9

      IL_008e:  ldarg.0
      IL_008f:  ldfld      class Game.Dialog Game.DialogsManager/'<>c__DisplayClass7_0'::dialog
      IL_0094:  callvirt   instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
      IL_0099:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
      IL_009e:  ldarg.0
      IL_009f:  ldfld      class Game.Dialog Game.DialogsManager/'<>c__DisplayClass7_0'::dialog
      IL_00a4:  callvirt   instance void Game.WidgetsList::Remove(class Game.Widget)
      IL_00a9:  ldarg.0
      IL_00aa:  ldfld      class Game.ContainerWidget Game.DialogsManager/'<>c__DisplayClass7_0'::parentWidget
      IL_00af:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
      IL_00b4:  ldarg.0
      IL_00b5:  ldfld      class Game.Dialog Game.DialogsManager/'<>c__DisplayClass7_0'::dialog
      IL_00ba:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
      IL_00bf:  ldarg.0
      IL_00c0:  ldfld      class Game.Dialog Game.DialogsManager/'<>c__DisplayClass7_0'::dialog
      IL_00c5:  ldloc.0
      IL_00c6:  call       void Game.DialogsManager::UpdateDialog(class Game.Dialog,
                                                                  class Game.DialogsManager/AnimationData)
      IL_00cb:  ldarg.0
      IL_00cc:  ldfld      class Game.Dialog Game.DialogsManager/'<>c__DisplayClass7_0'::dialog
      IL_00d1:  callvirt   instance class Game.WidgetInput Game.Widget::get_Input()
      IL_00d6:  callvirt   instance void Game.WidgetInput::Clear()
      IL_00db:  ret
    } // end of method '<>c__DisplayClass7_0'::'<ShowDialog>b__0'

  } // end of class '<>c__DisplayClass7_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass8_0'
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
    } // end of method '<>c__DisplayClass8_0'::.ctor

    .method assembly hidebysig instance void 
            '<HideDialog>b__0'() cil managed
    {
      // 代码大小       96 (0x60)
      .maxstack  2
      IL_0000:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.Dialog> Game.DialogsManager::m_dialogs
      IL_0005:  ldarg.0
      IL_0006:  ldfld      class Game.Dialog Game.DialogsManager/'<>c__DisplayClass8_0'::dialog
      IL_000b:  callvirt   instance bool class [System.Collections]System.Collections.Generic.List`1<class Game.Dialog>::Contains(!0)
      IL_0010:  brfalse.s  IL_005f

      IL_0012:  ldarg.0
      IL_0013:  ldfld      class Game.Dialog Game.DialogsManager/'<>c__DisplayClass8_0'::dialog
      IL_0018:  callvirt   instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
      IL_001d:  callvirt   instance class Game.WidgetInput Game.Widget::get_Input()
      IL_0022:  callvirt   instance void Game.WidgetInput::Clear()
      IL_0027:  ldarg.0
      IL_0028:  ldfld      class Game.Dialog Game.DialogsManager/'<>c__DisplayClass8_0'::dialog
      IL_002d:  ldc.i4.0
      IL_002e:  newobj     instance void Game.WidgetInput::.ctor(valuetype Game.WidgetInputDevice)
      IL_0033:  callvirt   instance void Game.Widget::set_WidgetsHierarchyInput(class Game.WidgetInput)
      IL_0038:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.Dialog> Game.DialogsManager::m_dialogs
      IL_003d:  ldarg.0
      IL_003e:  ldfld      class Game.Dialog Game.DialogsManager/'<>c__DisplayClass8_0'::dialog
      IL_0043:  callvirt   instance bool class [System.Collections]System.Collections.Generic.List`1<class Game.Dialog>::Remove(!0)
      IL_0048:  pop
      IL_0049:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Dialog,class Game.DialogsManager/AnimationData> Game.DialogsManager::m_animationData
      IL_004e:  ldarg.0
      IL_004f:  ldfld      class Game.Dialog Game.DialogsManager/'<>c__DisplayClass8_0'::dialog
      IL_0054:  callvirt   instance !1 class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Dialog,class Game.DialogsManager/AnimationData>::get_Item(!0)
      IL_0059:  ldc.i4.m1
      IL_005a:  stfld      int32 Game.DialogsManager/AnimationData::Direction
      IL_005f:  ret
    } // end of method '<>c__DisplayClass8_0'::'<HideDialog>b__0'

  } // end of class '<>c__DisplayClass8_0'

  .field private static class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Dialog,class Game.DialogsManager/AnimationData> m_animationData
  .field private static class [System.Collections]System.Collections.Generic.List`1<class Game.Dialog> m_dialogs
  .field private static class [System.Collections]System.Collections.Generic.List`1<class Game.Dialog> m_toRemove
  .method public hidebysig specialname static 
          valuetype [Engine]Engine.ReadOnlyList`1<class Game.Dialog> 
          get_Dialogs() cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.Dialog> Game.DialogsManager::m_dialogs
    IL_0005:  newobj     instance void valuetype [Engine]Engine.ReadOnlyList`1<class Game.Dialog>::.ctor(class [System.Runtime]System.Collections.Generic.IList`1<!0>)
    IL_000a:  ret
  } // end of method DialogsManager::get_Dialogs

  .method public hidebysig static bool  HasDialogs(class Game.ContainerWidget parentWidget) cil managed
  {
    // 代码大小       80 (0x50)
    .maxstack  2
    .locals init (valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Dialog> V_0,
             bool V_1)
    IL_0000:  ldarg.0
    IL_0001:  brtrue.s   IL_0013

    IL_0003:  call       class Game.Screen Game.ScreensManager::get_CurrentScreen()
    IL_0008:  dup
    IL_0009:  brtrue.s   IL_0011

    IL_000b:  pop
    IL_000c:  call       class Game.ContainerWidget Game.WidgetsManager::get_RootWidget()
    IL_0011:  starg.s    parentWidget
    IL_0013:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.Dialog> Game.DialogsManager::m_dialogs
    IL_0018:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.Dialog>::GetEnumerator()
    IL_001d:  stloc.0
    .try
    {
      IL_001e:  br.s       IL_0033

      IL_0020:  ldloca.s   V_0
      IL_0022:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Dialog>::get_Current()
      IL_0027:  callvirt   instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
      IL_002c:  ldarg.0
      IL_002d:  bne.un.s   IL_0033

      IL_002f:  ldc.i4.1
      IL_0030:  stloc.1
      IL_0031:  leave.s    IL_004e

      IL_0033:  ldloca.s   V_0
      IL_0035:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Dialog>::MoveNext()
      IL_003a:  brtrue.s   IL_0020

      IL_003c:  leave.s    IL_004c

    }  // end .try
    finally
    {
      IL_003e:  ldloca.s   V_0
      IL_0040:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Dialog>
      IL_0046:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_004b:  endfinally
    }  // end handler
    IL_004c:  ldc.i4.0
    IL_004d:  ret

    IL_004e:  ldloc.1
    IL_004f:  ret
  } // end of method DialogsManager::HasDialogs

  .method public hidebysig static void  ShowDialog(class Game.ContainerWidget parentWidget,
                                                   class Game.Dialog dialog) cil managed
  {
    // 代码大小       37 (0x25)
    .maxstack  8
    IL_0000:  newobj     instance void Game.DialogsManager/'<>c__DisplayClass7_0'::.ctor()
    IL_0005:  dup
    IL_0006:  ldarg.1
    IL_0007:  stfld      class Game.Dialog Game.DialogsManager/'<>c__DisplayClass7_0'::dialog
    IL_000c:  dup
    IL_000d:  ldarg.0
    IL_000e:  stfld      class Game.ContainerWidget Game.DialogsManager/'<>c__DisplayClass7_0'::parentWidget
    IL_0013:  ldftn      instance void Game.DialogsManager/'<>c__DisplayClass7_0'::'<ShowDialog>b__0'()
    IL_0019:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_001e:  ldc.i4.0
    IL_001f:  call       void [Engine]Engine.Dispatcher::Dispatch(class [System.Runtime]System.Action,
                                                                  bool)
    IL_0024:  ret
  } // end of method DialogsManager::ShowDialog

  .method public hidebysig static void  HideDialog(class Game.Dialog dialog) cil managed
  {
    // 代码大小       30 (0x1e)
    .maxstack  8
    IL_0000:  newobj     instance void Game.DialogsManager/'<>c__DisplayClass8_0'::.ctor()
    IL_0005:  dup
    IL_0006:  ldarg.0
    IL_0007:  stfld      class Game.Dialog Game.DialogsManager/'<>c__DisplayClass8_0'::dialog
    IL_000c:  ldftn      instance void Game.DialogsManager/'<>c__DisplayClass8_0'::'<HideDialog>b__0'()
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
    IL_0000:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.Dialog> Game.DialogsManager::m_dialogs
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
    // 代码大小       321 (0x141)
    .maxstack  4
    .locals init (valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<class Game.Dialog,class Game.DialogsManager/AnimationData> V_0,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class Game.Dialog,class Game.DialogsManager/AnimationData> V_1,
             class Game.Dialog V_2,
             class Game.DialogsManager/AnimationData V_3,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Dialog> V_4,
             class Game.Dialog V_5,
             class Game.DialogsManager/AnimationData V_6)
    IL_0000:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Dialog,class Game.DialogsManager/AnimationData> Game.DialogsManager::m_animationData
    IL_0005:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Dialog,class Game.DialogsManager/AnimationData>::GetEnumerator()
    IL_000a:  stloc.0
    .try
    {
      IL_000b:  br         IL_009f

      IL_0010:  ldloca.s   V_0
      IL_0012:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<class Game.Dialog,class Game.DialogsManager/AnimationData>::get_Current()
      IL_0017:  stloc.1
      IL_0018:  ldloca.s   V_1
      IL_001a:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class Game.Dialog,class Game.DialogsManager/AnimationData>::get_Key()
      IL_001f:  stloc.2
      IL_0020:  ldloca.s   V_1
      IL_0022:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class Game.Dialog,class Game.DialogsManager/AnimationData>::get_Value()
      IL_0027:  stloc.3
      IL_0028:  ldloc.3
      IL_0029:  ldfld      int32 Game.DialogsManager/AnimationData::Direction
      IL_002e:  ldc.i4.0
      IL_002f:  ble.s      IL_0055

      IL_0031:  ldloc.3
      IL_0032:  ldloc.3
      IL_0033:  ldfld      float32 Game.DialogsManager/AnimationData::Factor
      IL_0038:  ldc.r4     6.
      IL_003d:  call       float32 [Engine]Engine.Time::get_FrameDuration()
      IL_0042:  mul
      IL_0043:  add
      IL_0044:  ldc.r4     1.
      IL_0049:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                                 float32)
      IL_004e:  stfld      float32 Game.DialogsManager/AnimationData::Factor
      IL_0053:  br.s       IL_0098

      IL_0055:  ldloc.3
      IL_0056:  ldfld      int32 Game.DialogsManager/AnimationData::Direction
      IL_005b:  ldc.i4.0
      IL_005c:  bge.s      IL_0098

      IL_005e:  ldloc.3
      IL_005f:  ldloc.3
      IL_0060:  ldfld      float32 Game.DialogsManager/AnimationData::Factor
      IL_0065:  ldc.r4     6.
      IL_006a:  call       float32 [Engine]Engine.Time::get_FrameDuration()
      IL_006f:  mul
      IL_0070:  sub
      IL_0071:  ldc.r4     0.0
      IL_0076:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_007b:  stfld      float32 Game.DialogsManager/AnimationData::Factor
      IL_0080:  ldloc.3
      IL_0081:  ldfld      float32 Game.DialogsManager/AnimationData::Factor
      IL_0086:  ldc.r4     0.0
      IL_008b:  bgt.un.s   IL_0098

      IL_008d:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.Dialog> Game.DialogsManager::m_toRemove
      IL_0092:  ldloc.2
      IL_0093:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.Dialog>::Add(!0)
      IL_0098:  ldloc.2
      IL_0099:  ldloc.3
      IL_009a:  call       void Game.DialogsManager::UpdateDialog(class Game.Dialog,
                                                                  class Game.DialogsManager/AnimationData)
      IL_009f:  ldloca.s   V_0
      IL_00a1:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<class Game.Dialog,class Game.DialogsManager/AnimationData>::MoveNext()
      IL_00a6:  brtrue     IL_0010

      IL_00ab:  leave.s    IL_00bb

    }  // end .try
    finally
    {
      IL_00ad:  ldloca.s   V_0
      IL_00af:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<class Game.Dialog,class Game.DialogsManager/AnimationData>
      IL_00b5:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00ba:  endfinally
    }  // end handler
    IL_00bb:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.Dialog> Game.DialogsManager::m_toRemove
    IL_00c0:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.Dialog>::GetEnumerator()
    IL_00c5:  stloc.s    V_4
    .try
    {
      IL_00c7:  br.s       IL_011d

      IL_00c9:  ldloca.s   V_4
      IL_00cb:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Dialog>::get_Current()
      IL_00d0:  stloc.s    V_5
      IL_00d2:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Dialog,class Game.DialogsManager/AnimationData> Game.DialogsManager::m_animationData
      IL_00d7:  ldloc.s    V_5
      IL_00d9:  callvirt   instance !1 class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Dialog,class Game.DialogsManager/AnimationData>::get_Item(!0)
      IL_00de:  stloc.s    V_6
      IL_00e0:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Dialog,class Game.DialogsManager/AnimationData> Game.DialogsManager::m_animationData
      IL_00e5:  ldloc.s    V_5
      IL_00e7:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Dialog,class Game.DialogsManager/AnimationData>::Remove(!0)
      IL_00ec:  pop
      IL_00ed:  ldloc.s    V_5
      IL_00ef:  callvirt   instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
      IL_00f4:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
      IL_00f9:  ldloc.s    V_5
      IL_00fb:  callvirt   instance void Game.WidgetsList::Remove(class Game.Widget)
      IL_0100:  ldloc.s    V_6
      IL_0102:  ldfld      class Game.RectangleWidget Game.DialogsManager/AnimationData::CoverRectangle
      IL_0107:  callvirt   instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
      IL_010c:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
      IL_0111:  ldloc.s    V_6
      IL_0113:  ldfld      class Game.RectangleWidget Game.DialogsManager/AnimationData::CoverRectangle
      IL_0118:  callvirt   instance void Game.WidgetsList::Remove(class Game.Widget)
      IL_011d:  ldloca.s   V_4
      IL_011f:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Dialog>::MoveNext()
      IL_0124:  brtrue.s   IL_00c9

      IL_0126:  leave.s    IL_0136

    }  // end .try
    finally
    {
      IL_0128:  ldloca.s   V_4
      IL_012a:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Dialog>
      IL_0130:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0135:  endfinally
    }  // end handler
    IL_0136:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.Dialog> Game.DialogsManager::m_toRemove
    IL_013b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.Dialog>::Clear()
    IL_0140:  ret
  } // end of method DialogsManager::Update

  .method private hidebysig static void  UpdateDialog(class Game.Dialog dialog,
                                                      class Game.DialogsManager/AnimationData animationData) cil managed
  {
    // 代码大小       269 (0x10d)
    .maxstack  5
    .locals init (float32 V_0,
             float32 V_1)
    IL_0000:  ldarg.1
    IL_0001:  ldfld      float32 Game.DialogsManager/AnimationData::Factor
    IL_0006:  ldc.r4     1.
    IL_000b:  bge.un     IL_00e6

    IL_0010:  ldarg.1
    IL_0011:  ldfld      float32 Game.DialogsManager/AnimationData::Factor
    IL_0016:  stloc.0
    IL_0017:  ldc.r4     0.75
    IL_001c:  ldc.r4     0.25
    IL_0021:  ldarg.1
    IL_0022:  ldfld      float32 Game.DialogsManager/AnimationData::Factor
    IL_0027:  ldc.r4     0.1
    IL_002c:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_0031:  mul
    IL_0032:  add
    IL_0033:  stloc.1
    IL_0034:  ldarg.0
    IL_0035:  ldarg.0
    IL_0036:  callvirt   instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
    IL_003b:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0040:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0045:  neg
    IL_0046:  ldc.r4     2.
    IL_004b:  div
    IL_004c:  ldarg.0
    IL_004d:  callvirt   instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
    IL_0052:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0057:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_005c:  neg
    IL_005d:  ldc.r4     2.
    IL_0062:  div
    IL_0063:  ldc.r4     0.0
    IL_0068:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_006d:  ldloc.1
    IL_006e:  ldloc.1
    IL_006f:  ldc.r4     1.
    IL_0074:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32,
                                                                                            float32,
                                                                                            float32)
    IL_0079:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_007e:  ldarg.0
    IL_007f:  callvirt   instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
    IL_0084:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0089:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_008e:  ldc.r4     2.
    IL_0093:  div
    IL_0094:  ldarg.0
    IL_0095:  callvirt   instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
    IL_009a:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_009f:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00a4:  ldc.r4     2.
    IL_00a9:  div
    IL_00aa:  ldc.r4     0.0
    IL_00af:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00b4:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00b9:  callvirt   instance void Game.Widget::set_RenderTransform(valuetype [Engine]Engine.Matrix)
    IL_00be:  ldarg.0
    IL_00bf:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_00c4:  ldloc.0
    IL_00c5:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_00ca:  callvirt   instance void Game.Widget::set_ColorTransform(valuetype [Engine]Engine.Color)
    IL_00cf:  ldarg.1
    IL_00d0:  ldfld      class Game.RectangleWidget Game.DialogsManager/AnimationData::CoverRectangle
    IL_00d5:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_00da:  ldloc.0
    IL_00db:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_00e0:  callvirt   instance void Game.Widget::set_ColorTransform(valuetype [Engine]Engine.Color)
    IL_00e5:  ret

    IL_00e6:  ldarg.0
    IL_00e7:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_00ec:  callvirt   instance void Game.Widget::set_RenderTransform(valuetype [Engine]Engine.Matrix)
    IL_00f1:  ldarg.0
    IL_00f2:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_00f7:  callvirt   instance void Game.Widget::set_ColorTransform(valuetype [Engine]Engine.Color)
    IL_00fc:  ldarg.1
    IL_00fd:  ldfld      class Game.RectangleWidget Game.DialogsManager/AnimationData::CoverRectangle
    IL_0102:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0107:  callvirt   instance void Game.Widget::set_ColorTransform(valuetype [Engine]Engine.Color)
    IL_010c:  ret
  } // end of method DialogsManager::UpdateDialog

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       31 (0x1f)
    .maxstack  8
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Dialog,class Game.DialogsManager/AnimationData>::.ctor()
    IL_0005:  stsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Dialog,class Game.DialogsManager/AnimationData> Game.DialogsManager::m_animationData
    IL_000a:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.Dialog>::.ctor()
    IL_000f:  stsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.Dialog> Game.DialogsManager::m_dialogs
    IL_0014:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.Dialog>::.ctor()
    IL_0019:  stsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.Dialog> Game.DialogsManager::m_toRemove
    IL_001e:  ret
  } // end of method DialogsManager::.cctor

  .property valuetype [Engine]Engine.ReadOnlyList`1<class Game.Dialog>
          Dialogs()
  {
    .get valuetype [Engine]Engine.ReadOnlyList`1<class Game.Dialog> Game.DialogsManager::get_Dialogs()
  } // end of property DialogsManager::Dialogs
} // end of class Game.DialogsManager