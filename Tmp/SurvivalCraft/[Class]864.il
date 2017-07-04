.class public auto ansi beforefieldinit Game.WidgetsList
       extends [System.Runtime]System.Object
       implements class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.Widget>,
                  [System.Runtime]System.Collections.IEnumerable
{
  .custom instance void [System.Runtime]System.Reflection.DefaultMemberAttribute::.ctor(string) = ( 01 00 04 49 74 65 6D 00 00 )                      // ...Item..
  .class sequential ansi sealed nested public beforefieldinit Enumerator
         extends [System.Runtime]System.ValueType
         implements class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget>,
                    [System.Runtime]System.Collections.IEnumerator,
                    [System.Runtime]System.IDisposable
  {
    .field private class Game.WidgetsList m_collection
    .field private class Game.Widget m_current
    .field private int32 m_index
    .field private int32 m_version
    .method assembly hidebysig specialname rtspecialname 
            instance void  .ctor(class Game.WidgetsList collection) cil managed
    {
      // 代码大小       34 (0x22)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldarg.1
      IL_0002:  stfld      class Game.WidgetsList Game.WidgetsList/Enumerator::m_collection
      IL_0007:  ldarg.0
      IL_0008:  ldnull
      IL_0009:  stfld      class Game.Widget Game.WidgetsList/Enumerator::m_current
      IL_000e:  ldarg.0
      IL_000f:  ldc.i4.0
      IL_0010:  stfld      int32 Game.WidgetsList/Enumerator::m_index
      IL_0015:  ldarg.0
      IL_0016:  ldarg.1
      IL_0017:  ldfld      int32 Game.WidgetsList::m_version
      IL_001c:  stfld      int32 Game.WidgetsList/Enumerator::m_version
      IL_0021:  ret
    } // end of method Enumerator::.ctor

    .method public hidebysig newslot specialname virtual final 
            instance class Game.Widget  get_Current() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.Widget Game.WidgetsList/Enumerator::m_current
      IL_0006:  ret
    } // end of method Enumerator::get_Current

    .method public hidebysig newslot virtual final 
            instance void  Dispose() cil managed
    {
      // 代码大小       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method Enumerator::Dispose

    .method private hidebysig newslot specialname virtual final 
            instance object  System.Collections.IEnumerator.get_Current() cil managed
    {
      .override [System.Runtime]System.Collections.IEnumerator::get_Current
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.Widget Game.WidgetsList/Enumerator::m_current
      IL_0006:  ret
    } // end of method Enumerator::System.Collections.IEnumerator.get_Current

    .method public hidebysig newslot virtual final 
            instance bool  MoveNext() cil managed
    {
      // 代码大小       107 (0x6b)
      .maxstack  3
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.WidgetsList Game.WidgetsList/Enumerator::m_collection
      IL_0006:  ldfld      int32 Game.WidgetsList::m_version
      IL_000b:  ldarg.0
      IL_000c:  ldfld      int32 Game.WidgetsList/Enumerator::m_version
      IL_0011:  beq.s      IL_001e

      IL_0013:  ldstr      "WidgetsList was modified, enumeration cannot conti"
      + "nue."
      IL_0018:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
      IL_001d:  throw

      IL_001e:  ldarg.0
      IL_001f:  ldfld      int32 Game.WidgetsList/Enumerator::m_index
      IL_0024:  ldarg.0
      IL_0025:  ldfld      class Game.WidgetsList Game.WidgetsList/Enumerator::m_collection
      IL_002a:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Widget> Game.WidgetsList::m_widgets
      IL_002f:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.Widget>::get_Count()
      IL_0034:  bge.s      IL_0062

      IL_0036:  ldarg.0
      IL_0037:  ldarg.0
      IL_0038:  ldfld      class Game.WidgetsList Game.WidgetsList/Enumerator::m_collection
      IL_003d:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Widget> Game.WidgetsList::m_widgets
      IL_0042:  ldarg.0
      IL_0043:  ldfld      int32 Game.WidgetsList/Enumerator::m_index
      IL_0048:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.Widget>::get_Item(int32)
      IL_004d:  stfld      class Game.Widget Game.WidgetsList/Enumerator::m_current
      IL_0052:  ldarg.0
      IL_0053:  ldarg.0
      IL_0054:  ldfld      int32 Game.WidgetsList/Enumerator::m_index
      IL_0059:  ldc.i4.1
      IL_005a:  add
      IL_005b:  stfld      int32 Game.WidgetsList/Enumerator::m_index
      IL_0060:  ldc.i4.1
      IL_0061:  ret

      IL_0062:  ldarg.0
      IL_0063:  ldnull
      IL_0064:  stfld      class Game.Widget Game.WidgetsList/Enumerator::m_current
      IL_0069:  ldc.i4.0
      IL_006a:  ret
    } // end of method Enumerator::MoveNext

    .method public hidebysig newslot virtual final 
            instance void  Reset() cil managed
    {
      // 代码大小       45 (0x2d)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.WidgetsList Game.WidgetsList/Enumerator::m_collection
      IL_0006:  ldfld      int32 Game.WidgetsList::m_version
      IL_000b:  ldarg.0
      IL_000c:  ldfld      int32 Game.WidgetsList/Enumerator::m_version
      IL_0011:  beq.s      IL_001e

      IL_0013:  ldstr      "SortedMultiCollection was modified, enumeration ca"
      + "nnot continue."
      IL_0018:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
      IL_001d:  throw

      IL_001e:  ldarg.0
      IL_001f:  ldc.i4.0
      IL_0020:  stfld      int32 Game.WidgetsList/Enumerator::m_index
      IL_0025:  ldarg.0
      IL_0026:  ldnull
      IL_0027:  stfld      class Game.Widget Game.WidgetsList/Enumerator::m_current
      IL_002c:  ret
    } // end of method Enumerator::Reset

    .property instance class Game.Widget Current()
    {
      .get instance class Game.Widget Game.WidgetsList/Enumerator::get_Current()
    } // end of property Enumerator::Current
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object Game.WidgetsList/Enumerator::System.Collections.IEnumerator.get_Current()
    } // end of property Enumerator::System.Collections.IEnumerator.Current
  } // end of class Enumerator

  .field private class Game.ContainerWidget m_containerWidget
  .field private class [System.Collections]System.Collections.Generic.List`1<class Game.Widget> m_widgets
  .field private int32 m_version
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.ContainerWidget containerWidget) cil managed
  {
    // 代码大小       25 (0x19)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.Widget>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Widget> Game.WidgetsList::m_widgets
    IL_000b:  ldarg.0
    IL_000c:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0011:  ldarg.0
    IL_0012:  ldarg.1
    IL_0013:  stfld      class Game.ContainerWidget Game.WidgetsList::m_containerWidget
    IL_0018:  ret
  } // end of method WidgetsList::.ctor

  .method public hidebysig specialname instance int32 
          get_Count() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Widget> Game.WidgetsList::m_widgets
    IL_0006:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.Widget>::get_Count()
    IL_000b:  ret
  } // end of method WidgetsList::get_Count

  .method public hidebysig specialname instance class Game.Widget 
          get_Item(int32 index) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Widget> Game.WidgetsList::m_widgets
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.Widget>::get_Item(int32)
    IL_000c:  ret
  } // end of method WidgetsList::get_Item

  .method public hidebysig instance void 
          Add(class Game.Widget widget) cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance int32 Game.WidgetsList::get_Count()
    IL_0007:  ldarg.1
    IL_0008:  call       instance void Game.WidgetsList::Insert(int32,
                                                                class Game.Widget)
    IL_000d:  ret
  } // end of method WidgetsList::Add

  .method public hidebysig instance void 
          Add(class Game.Widget[] widgets) cil managed
  {
    .param [1]
    .custom instance void [System.Runtime]System.ParamArrayAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.WidgetsList::AddRange(class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.Widget>)
    IL_0007:  ret
  } // end of method WidgetsList::Add

  .method public hidebysig instance void 
          AddRange(class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.Widget> widgets) cil managed
  {
    // 代码大小       44 (0x2c)
    .maxstack  2
    .locals init (class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> V_0,
             class Game.Widget V_1)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.Widget>::GetEnumerator()
    IL_0006:  stloc.0
    .try
    {
      IL_0007:  br.s       IL_0017

      IL_0009:  ldloc.0
      IL_000a:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget>::get_Current()
      IL_000f:  stloc.1
      IL_0010:  ldarg.0
      IL_0011:  ldloc.1
      IL_0012:  call       instance void Game.WidgetsList::Add(class Game.Widget)
      IL_0017:  ldloc.0
      IL_0018:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_001d:  brtrue.s   IL_0009

      IL_001f:  leave.s    IL_002b

    }  // end .try
    finally
    {
      IL_0021:  ldloc.0
      IL_0022:  brfalse.s  IL_002a

      IL_0024:  ldloc.0
      IL_0025:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_002a:  endfinally
    }  // end handler
    IL_002b:  ret
  } // end of method WidgetsList::AddRange

  .method public hidebysig instance void 
          Insert(int32 index,
                 class Game.Widget widget) cil managed
  {
    // 代码大小       106 (0x6a)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Widget> Game.WidgetsList::m_widgets
    IL_0006:  ldarg.2
    IL_0007:  callvirt   instance bool class [System.Collections]System.Collections.Generic.List`1<class Game.Widget>::Contains(!0)
    IL_000c:  brfalse.s  IL_0019

    IL_000e:  ldstr      "Child widget already present in container."
    IL_0013:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0018:  throw

    IL_0019:  ldarg.1
    IL_001a:  ldc.i4.0
    IL_001b:  blt.s      IL_002b

    IL_001d:  ldarg.1
    IL_001e:  ldarg.0
    IL_001f:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Widget> Game.WidgetsList::m_widgets
    IL_0024:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.Widget>::get_Count()
    IL_0029:  ble.s      IL_0036

    IL_002b:  ldstr      "Widget index out of range."
    IL_0030:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0035:  throw

    IL_0036:  ldarg.2
    IL_0037:  ldarg.0
    IL_0038:  ldfld      class Game.ContainerWidget Game.WidgetsList::m_containerWidget
    IL_003d:  callvirt   instance void Game.Widget::ChangeParent(class Game.ContainerWidget)
    IL_0042:  ldarg.0
    IL_0043:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Widget> Game.WidgetsList::m_widgets
    IL_0048:  ldarg.1
    IL_0049:  ldarg.2
    IL_004a:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.Widget>::Insert(int32,
                                                                                                                              !0)
    IL_004f:  ldarg.0
    IL_0050:  ldfld      class Game.ContainerWidget Game.WidgetsList::m_containerWidget
    IL_0055:  ldarg.2
    IL_0056:  callvirt   instance void Game.ContainerWidget::WidgetAdded(class Game.Widget)
    IL_005b:  ldarg.0
    IL_005c:  ldarg.0
    IL_005d:  ldfld      int32 Game.WidgetsList::m_version
    IL_0062:  ldc.i4.1
    IL_0063:  add
    IL_0064:  stfld      int32 Game.WidgetsList::m_version
    IL_0069:  ret
  } // end of method WidgetsList::Insert

  .method public hidebysig instance void 
          InsertBefore(class Game.Widget beforeWidget,
                       class Game.Widget widget) cil managed
  {
    // 代码大小       37 (0x25)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Widget> Game.WidgetsList::m_widgets
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.Widget>::IndexOf(!0)
    IL_000c:  stloc.0
    IL_000d:  ldloc.0
    IL_000e:  ldc.i4.0
    IL_000f:  bge.s      IL_001c

    IL_0011:  ldstr      "Widget not present in container."
    IL_0016:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_001b:  throw

    IL_001c:  ldarg.0
    IL_001d:  ldloc.0
    IL_001e:  ldarg.2
    IL_001f:  call       instance void Game.WidgetsList::Insert(int32,
                                                                class Game.Widget)
    IL_0024:  ret
  } // end of method WidgetsList::InsertBefore

  .method public hidebysig instance void 
          InsertAfter(class Game.Widget afterWidget,
                      class Game.Widget widget) cil managed
  {
    // 代码大小       39 (0x27)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Widget> Game.WidgetsList::m_widgets
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.Widget>::IndexOf(!0)
    IL_000c:  stloc.0
    IL_000d:  ldloc.0
    IL_000e:  ldc.i4.0
    IL_000f:  bge.s      IL_001c

    IL_0011:  ldstr      "Widget not present in container."
    IL_0016:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_001b:  throw

    IL_001c:  ldarg.0
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.1
    IL_001f:  add
    IL_0020:  ldarg.2
    IL_0021:  call       instance void Game.WidgetsList::Insert(int32,
                                                                class Game.Widget)
    IL_0026:  ret
  } // end of method WidgetsList::InsertAfter

  .method public hidebysig instance void 
          Remove(class Game.Widget widget) cil managed
  {
    // 代码大小       31 (0x1f)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance int32 Game.WidgetsList::IndexOf(class Game.Widget)
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  ldc.i4.0
    IL_000a:  blt.s      IL_0014

    IL_000c:  ldarg.0
    IL_000d:  ldloc.0
    IL_000e:  call       instance void Game.WidgetsList::RemoveAt(int32)
    IL_0013:  ret

    IL_0014:  ldstr      "Child widget not present in container."
    IL_0019:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_001e:  throw
  } // end of method WidgetsList::Remove

  .method public hidebysig instance void 
          RemoveAt(int32 index) cil managed
  {
    // 代码大小       88 (0x58)
    .maxstack  3
    .locals init (class Game.Widget V_0)
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.0
    IL_0002:  blt.s      IL_0012

    IL_0004:  ldarg.1
    IL_0005:  ldarg.0
    IL_0006:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Widget> Game.WidgetsList::m_widgets
    IL_000b:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.Widget>::get_Count()
    IL_0010:  blt.s      IL_001d

    IL_0012:  ldstr      "Widget index out of range."
    IL_0017:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_001c:  throw

    IL_001d:  ldarg.0
    IL_001e:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Widget> Game.WidgetsList::m_widgets
    IL_0023:  ldarg.1
    IL_0024:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.Widget>::get_Item(int32)
    IL_0029:  stloc.0
    IL_002a:  ldloc.0
    IL_002b:  ldnull
    IL_002c:  callvirt   instance void Game.Widget::ChangeParent(class Game.ContainerWidget)
    IL_0031:  ldarg.0
    IL_0032:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Widget> Game.WidgetsList::m_widgets
    IL_0037:  ldarg.1
    IL_0038:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.Widget>::RemoveAt(int32)
    IL_003d:  ldarg.0
    IL_003e:  ldfld      class Game.ContainerWidget Game.WidgetsList::m_containerWidget
    IL_0043:  ldloc.0
    IL_0044:  callvirt   instance void Game.ContainerWidget::WidgetRemoved(class Game.Widget)
    IL_0049:  ldarg.0
    IL_004a:  ldarg.0
    IL_004b:  ldfld      int32 Game.WidgetsList::m_version
    IL_0050:  ldc.i4.1
    IL_0051:  sub
    IL_0052:  stfld      int32 Game.WidgetsList::m_version
    IL_0057:  ret
  } // end of method WidgetsList::RemoveAt

  .method public hidebysig instance void 
          Clear() cil managed
  {
    // 代码大小       26 (0x1a)
    .maxstack  8
    IL_0000:  br.s       IL_0010

    IL_0002:  ldarg.0
    IL_0003:  ldarg.0
    IL_0004:  call       instance int32 Game.WidgetsList::get_Count()
    IL_0009:  ldc.i4.1
    IL_000a:  sub
    IL_000b:  call       instance void Game.WidgetsList::RemoveAt(int32)
    IL_0010:  ldarg.0
    IL_0011:  call       instance int32 Game.WidgetsList::get_Count()
    IL_0016:  ldc.i4.0
    IL_0017:  bgt.s      IL_0002

    IL_0019:  ret
  } // end of method WidgetsList::Clear

  .method public hidebysig instance int32 
          IndexOf(class Game.Widget widget) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Widget> Game.WidgetsList::m_widgets
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.Widget>::IndexOf(!0)
    IL_000c:  ret
  } // end of method WidgetsList::IndexOf

  .method public hidebysig instance bool 
          Contains(class Game.Widget widget) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Widget> Game.WidgetsList::m_widgets
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance bool class [System.Collections]System.Collections.Generic.List`1<class Game.Widget>::Contains(!0)
    IL_000c:  ret
  } // end of method WidgetsList::Contains

  .method public hidebysig instance class Game.Widget 
          Find(string name,
               class [System.Runtime]System.Type 'type',
               [opt] bool throwIfNotFound) cil managed
  {
    .param [3] = bool(true)
    // 代码大小       179 (0xb3)
    .maxstack  5
    .locals init (valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Widget> V_0,
             class Game.Widget V_1,
             class Game.ContainerWidget V_2,
             class Game.Widget V_3,
             class Game.Widget V_4)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Widget> Game.WidgetsList::m_widgets
    IL_0006:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.Widget>::GetEnumerator()
    IL_000b:  stloc.0
    .try
    {
      IL_000c:  br.s       IL_0075

      IL_000e:  ldloca.s   V_0
      IL_0010:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Widget>::get_Current()
      IL_0015:  stloc.1
      IL_0016:  ldarg.1
      IL_0017:  brfalse.s  IL_002f

      IL_0019:  ldloc.1
      IL_001a:  callvirt   instance string Game.Widget::get_Name()
      IL_001f:  brfalse.s  IL_0052

      IL_0021:  ldloc.1
      IL_0022:  callvirt   instance string Game.Widget::get_Name()
      IL_0027:  ldarg.1
      IL_0028:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_002d:  brfalse.s  IL_0052

      IL_002f:  ldarg.2
      IL_0030:  brfalse.s  IL_004e

      IL_0032:  ldarg.2
      IL_0033:  ldloc.1
      IL_0034:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
      IL_0039:  beq.s      IL_004e

      IL_003b:  ldloc.1
      IL_003c:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
      IL_0041:  call       class [System.Reflection]System.Reflection.TypeInfo [System.Reflection]System.Reflection.IntrospectionExtensions::GetTypeInfo(class [System.Runtime]System.Type)
      IL_0046:  ldarg.2
      IL_0047:  callvirt   instance bool [System.Reflection]System.Reflection.TypeInfo::IsSubclassOf(class [System.Runtime]System.Type)
      IL_004c:  brfalse.s  IL_0052

      IL_004e:  ldloc.1
      IL_004f:  stloc.3
      IL_0050:  leave.s    IL_00b1

      IL_0052:  ldloc.1
      IL_0053:  isinst     Game.ContainerWidget
      IL_0058:  stloc.2
      IL_0059:  ldloc.2
      IL_005a:  brfalse.s  IL_0075

      IL_005c:  ldloc.2
      IL_005d:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
      IL_0062:  ldarg.1
      IL_0063:  ldarg.2
      IL_0064:  ldc.i4.0
      IL_0065:  callvirt   instance class Game.Widget Game.WidgetsList::Find(string,
                                                                             class [System.Runtime]System.Type,
                                                                             bool)
      IL_006a:  stloc.s    V_4
      IL_006c:  ldloc.s    V_4
      IL_006e:  brfalse.s  IL_0075

      IL_0070:  ldloc.s    V_4
      IL_0072:  stloc.3
      IL_0073:  leave.s    IL_00b1

      IL_0075:  ldloca.s   V_0
      IL_0077:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Widget>::MoveNext()
      IL_007c:  brtrue.s   IL_000e

      IL_007e:  leave.s    IL_008e

    }  // end .try
    finally
    {
      IL_0080:  ldloca.s   V_0
      IL_0082:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Widget>
      IL_0088:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_008d:  endfinally
    }  // end handler
    IL_008e:  ldarg.3
    IL_008f:  brfalse.s  IL_00af

    IL_0091:  ldstr      "Required widget \"{0}\" of type \"{1}\" not found."
    IL_0096:  ldc.i4.2
    IL_0097:  newarr     [System.Runtime]System.Object
    IL_009c:  dup
    IL_009d:  ldc.i4.0
    IL_009e:  ldarg.1
    IL_009f:  stelem.ref
    IL_00a0:  dup
    IL_00a1:  ldc.i4.1
    IL_00a2:  ldarg.2
    IL_00a3:  stelem.ref
    IL_00a4:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_00a9:  newobj     instance void [System.Runtime]System.Exception::.ctor(string)
    IL_00ae:  throw

    IL_00af:  ldnull
    IL_00b0:  ret

    IL_00b1:  ldloc.3
    IL_00b2:  ret
  } // end of method WidgetsList::Find

  .method public hidebysig instance class Game.Widget 
          Find(string name,
               [opt] bool throwIfNotFound) cil managed
  {
    .param [2] = bool(true)
    // 代码大小       10 (0xa)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldnull
    IL_0003:  ldarg.2
    IL_0004:  call       instance class Game.Widget Game.WidgetsList::Find(string,
                                                                           class [System.Runtime]System.Type,
                                                                           bool)
    IL_0009:  ret
  } // end of method WidgetsList::Find

  .method public hidebysig instance !!T  Find<class T>(string name,
                                                       [opt] bool throwIfNotFound) cil managed
  {
    .param [2] = bool(true)
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldtoken    !!T
    IL_0007:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_000c:  ldarg.2
    IL_000d:  call       instance class Game.Widget Game.WidgetsList::Find(string,
                                                                           class [System.Runtime]System.Type,
                                                                           bool)
    IL_0012:  isinst     !!T
    IL_0017:  unbox.any  !!T
    IL_001c:  ret
  } // end of method WidgetsList::Find

  .method public hidebysig instance !!T  Find<class T>([opt] bool throwIfNotFound) cil managed
  {
    .param [1] = bool(true)
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldnull
    IL_0002:  ldtoken    !!T
    IL_0007:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_000c:  ldarg.1
    IL_000d:  call       instance class Game.Widget Game.WidgetsList::Find(string,
                                                                           class [System.Runtime]System.Type,
                                                                           bool)
    IL_0012:  isinst     !!T
    IL_0017:  unbox.any  !!T
    IL_001c:  ret
  } // end of method WidgetsList::Find

  .method public hidebysig instance valuetype Game.WidgetsList/Enumerator 
          GetEnumerator() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.WidgetsList/Enumerator::.ctor(class Game.WidgetsList)
    IL_0006:  ret
  } // end of method WidgetsList::GetEnumerator

  .method private hidebysig newslot virtual final 
          instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> 
          'System.Collections.Generic.IEnumerable<Game.Widget>.GetEnumerator'() cil managed
  {
    .override  method instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.Widget>::GetEnumerator()
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.WidgetsList/Enumerator::.ctor(class Game.WidgetsList)
    IL_0006:  box        Game.WidgetsList/Enumerator
    IL_000b:  ret
  } // end of method WidgetsList::'System.Collections.Generic.IEnumerable<Game.Widget>.GetEnumerator'

  .method private hidebysig newslot virtual final 
          instance class [System.Runtime]System.Collections.IEnumerator 
          System.Collections.IEnumerable.GetEnumerator() cil managed
  {
    .override [System.Runtime]System.Collections.IEnumerable::GetEnumerator
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.WidgetsList/Enumerator::.ctor(class Game.WidgetsList)
    IL_0006:  box        Game.WidgetsList/Enumerator
    IL_000b:  ret
  } // end of method WidgetsList::System.Collections.IEnumerable.GetEnumerator

  .property instance int32 Count()
  {
    .get instance int32 Game.WidgetsList::get_Count()
  } // end of property WidgetsList::Count
  .property instance class Game.Widget Item(int32)
  {
    .get instance class Game.Widget Game.WidgetsList::get_Item(int32)
  } // end of property WidgetsList::Item
} // end of class Game.WidgetsList