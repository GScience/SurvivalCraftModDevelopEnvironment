.class public auto ansi beforefieldinit Game.WidgetsContainer
       extends [System.Runtime]System.Object
       implements class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.Widget>,
                  [System.Runtime]System.Collections.IEnumerable
{
  .custom instance void [System.Runtime]System.Reflection.DefaultMemberAttribute::.ctor(string) = ( 01 00 04 49 74 65 6D 00 00 )                      // ...Item..
  .field private class Game.ContainerWidget m_containerWidget
  .field private class [System.Collections]System.Collections.Generic.List`1<class Game.Widget> m_widgets
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.ContainerWidget containerWidget) cil managed
  {
    // 代码大小       25 (0x19)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.Widget>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Widget> Game.WidgetsContainer::m_widgets
    IL_000b:  ldarg.0
    IL_000c:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0011:  ldarg.0
    IL_0012:  ldarg.1
    IL_0013:  stfld      class Game.ContainerWidget Game.WidgetsContainer::m_containerWidget
    IL_0018:  ret
  } // end of method WidgetsContainer::.ctor

  .method public hidebysig specialname instance int32 
          get_Count() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Widget> Game.WidgetsContainer::m_widgets
    IL_0006:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.Widget>::get_Count()
    IL_000b:  ret
  } // end of method WidgetsContainer::get_Count

  .method public hidebysig specialname instance class Game.Widget 
          get_Item(int32 index) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Widget> Game.WidgetsContainer::m_widgets
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.Widget>::get_Item(int32)
    IL_000c:  ret
  } // end of method WidgetsContainer::get_Item

  .method public hidebysig instance void 
          Add(class Game.Widget widget) cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance int32 Game.WidgetsContainer::get_Count()
    IL_0007:  ldarg.1
    IL_0008:  call       instance void Game.WidgetsContainer::Insert(int32,
                                                                     class Game.Widget)
    IL_000d:  ret
  } // end of method WidgetsContainer::Add

  .method public hidebysig instance void 
          Add(class Game.Widget[] widgets) cil managed
  {
    .param [1]
    .custom instance void [System.Runtime]System.ParamArrayAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.WidgetsContainer::AddRange(class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.Widget>)
    IL_0007:  ret
  } // end of method WidgetsContainer::Add

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
      IL_0012:  call       instance void Game.WidgetsContainer::Add(class Game.Widget)
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
  } // end of method WidgetsContainer::AddRange

  .method public hidebysig instance void 
          Insert(int32 index,
                 class Game.Widget widget) cil managed
  {
    // 代码大小       80 (0x50)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Widget> Game.WidgetsContainer::m_widgets
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
    IL_001f:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Widget> Game.WidgetsContainer::m_widgets
    IL_0024:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.Widget>::get_Count()
    IL_0029:  ble.s      IL_0036

    IL_002b:  ldstr      "Widget index out of range."
    IL_0030:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0035:  throw

    IL_0036:  ldarg.2
    IL_0037:  ldarg.0
    IL_0038:  ldfld      class Game.ContainerWidget Game.WidgetsContainer::m_containerWidget
    IL_003d:  callvirt   instance void Game.Widget::ChangeParent(class Game.ContainerWidget)
    IL_0042:  ldarg.0
    IL_0043:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Widget> Game.WidgetsContainer::m_widgets
    IL_0048:  ldarg.1
    IL_0049:  ldarg.2
    IL_004a:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.Widget>::Insert(int32,
                                                                                                                              !0)
    IL_004f:  ret
  } // end of method WidgetsContainer::Insert

  .method public hidebysig instance void 
          Remove(class Game.Widget widget) cil managed
  {
    // 代码大小       31 (0x1f)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance int32 Game.WidgetsContainer::IndexOf(class Game.Widget)
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  ldc.i4.0
    IL_000a:  blt.s      IL_0014

    IL_000c:  ldarg.0
    IL_000d:  ldloc.0
    IL_000e:  call       instance void Game.WidgetsContainer::RemoveAt(int32)
    IL_0013:  ret

    IL_0014:  ldstr      "Child widget not present in container."
    IL_0019:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_001e:  throw
  } // end of method WidgetsContainer::Remove

  .method public hidebysig instance void 
          RemoveAt(int32 index) cil managed
  {
    // 代码大小       60 (0x3c)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.0
    IL_0002:  blt.s      IL_0012

    IL_0004:  ldarg.1
    IL_0005:  ldarg.0
    IL_0006:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Widget> Game.WidgetsContainer::m_widgets
    IL_000b:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.Widget>::get_Count()
    IL_0010:  blt.s      IL_001d

    IL_0012:  ldstr      "Widget index out of range."
    IL_0017:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_001c:  throw

    IL_001d:  ldarg.0
    IL_001e:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Widget> Game.WidgetsContainer::m_widgets
    IL_0023:  ldarg.1
    IL_0024:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.Widget>::get_Item(int32)
    IL_0029:  ldnull
    IL_002a:  callvirt   instance void Game.Widget::ChangeParent(class Game.ContainerWidget)
    IL_002f:  ldarg.0
    IL_0030:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Widget> Game.WidgetsContainer::m_widgets
    IL_0035:  ldarg.1
    IL_0036:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.Widget>::RemoveAt(int32)
    IL_003b:  ret
  } // end of method WidgetsContainer::RemoveAt

  .method public hidebysig instance void 
          Clear() cil managed
  {
    // 代码大小       26 (0x1a)
    .maxstack  8
    IL_0000:  br.s       IL_0010

    IL_0002:  ldarg.0
    IL_0003:  ldarg.0
    IL_0004:  call       instance int32 Game.WidgetsContainer::get_Count()
    IL_0009:  ldc.i4.1
    IL_000a:  sub
    IL_000b:  call       instance void Game.WidgetsContainer::RemoveAt(int32)
    IL_0010:  ldarg.0
    IL_0011:  call       instance int32 Game.WidgetsContainer::get_Count()
    IL_0016:  ldc.i4.0
    IL_0017:  bgt.s      IL_0002

    IL_0019:  ret
  } // end of method WidgetsContainer::Clear

  .method public hidebysig instance int32 
          IndexOf(class Game.Widget widget) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Widget> Game.WidgetsContainer::m_widgets
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.Widget>::IndexOf(!0)
    IL_000c:  ret
  } // end of method WidgetsContainer::IndexOf

  .method public hidebysig instance bool 
          Contains(class Game.Widget widget) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Widget> Game.WidgetsContainer::m_widgets
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance bool class [System.Collections]System.Collections.Generic.List`1<class Game.Widget>::Contains(!0)
    IL_000c:  ret
  } // end of method WidgetsContainer::Contains

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
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Widget> Game.WidgetsContainer::m_widgets
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
      IL_005d:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
      IL_0062:  ldarg.1
      IL_0063:  ldarg.2
      IL_0064:  ldc.i4.0
      IL_0065:  callvirt   instance class Game.Widget Game.WidgetsContainer::Find(string,
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
  } // end of method WidgetsContainer::Find

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
    IL_0004:  call       instance class Game.Widget Game.WidgetsContainer::Find(string,
                                                                                class [System.Runtime]System.Type,
                                                                                bool)
    IL_0009:  ret
  } // end of method WidgetsContainer::Find

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
    IL_000d:  call       instance class Game.Widget Game.WidgetsContainer::Find(string,
                                                                                class [System.Runtime]System.Type,
                                                                                bool)
    IL_0012:  isinst     !!T
    IL_0017:  unbox.any  !!T
    IL_001c:  ret
  } // end of method WidgetsContainer::Find

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
    IL_000d:  call       instance class Game.Widget Game.WidgetsContainer::Find(string,
                                                                                class [System.Runtime]System.Type,
                                                                                bool)
    IL_0012:  isinst     !!T
    IL_0017:  unbox.any  !!T
    IL_001c:  ret
  } // end of method WidgetsContainer::Find

  .method public hidebysig newslot virtual final 
          instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> 
          GetEnumerator() cil managed
  {
    // 代码大小       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Widget> Game.WidgetsContainer::m_widgets
    IL_0006:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.Widget>::GetEnumerator()
    IL_000b:  box        valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Widget>
    IL_0010:  ret
  } // end of method WidgetsContainer::GetEnumerator

  .method private hidebysig newslot virtual final 
          instance class [System.Runtime]System.Collections.IEnumerator 
          System.Collections.IEnumerable.GetEnumerator() cil managed
  {
    .override [System.Runtime]System.Collections.IEnumerable::GetEnumerator
    // 代码大小       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Widget> Game.WidgetsContainer::m_widgets
    IL_0006:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.Widget>::GetEnumerator()
    IL_000b:  box        valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Widget>
    IL_0010:  ret
  } // end of method WidgetsContainer::System.Collections.IEnumerable.GetEnumerator

  .property instance int32 Count()
  {
    .get instance int32 Game.WidgetsContainer::get_Count()
  } // end of property WidgetsContainer::Count
  .property instance class Game.Widget Item(int32)
  {
    .get instance class Game.Widget Game.WidgetsContainer::get_Item(int32)
  } // end of property WidgetsContainer::Item
} // end of class Game.WidgetsContainer