.class public abstract auto ansi beforefieldinit Game.ContainerWidget
       extends Game.Widget
{
  .class auto ansi sealed nested private beforefieldinit '<get_AllChildren>d__2'
         extends [System.Runtime]System.Object
         implements class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.Widget>,
                    [System.Runtime]System.Collections.IEnumerable,
                    class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget>,
                    [System.Runtime]System.Collections.IEnumerator,
                    [System.Runtime]System.IDisposable
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field private int32 '<>1__state'
    .field private class Game.Widget '<>2__current'
    .field private int32 '<>l__initialThreadId'
    .field public class Game.ContainerWidget '<>4__this'
    .field private class Game.Widget '<childWidget>5__1'
    .field private valuetype Game.WidgetsList/Enumerator '<>7__wrap1'
    .field private class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> '<>7__wrap2'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor(int32 '<>1__state') cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      // 代码大小       25 (0x19)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ldarg.0
      IL_0007:  ldarg.1
      IL_0008:  stfld      int32 Game.ContainerWidget/'<get_AllChildren>d__2'::'<>1__state'
      IL_000d:  ldarg.0
      IL_000e:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0013:  stfld      int32 Game.ContainerWidget/'<get_AllChildren>d__2'::'<>l__initialThreadId'
      IL_0018:  ret
    } // end of method '<get_AllChildren>d__2'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  System.IDisposable.Dispose() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.IDisposable::Dispose
      // 代码大小       75 (0x4b)
      .maxstack  2
      .locals init (int32 V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.ContainerWidget/'<get_AllChildren>d__2'::'<>1__state'
      IL_0006:  stloc.0
      IL_0007:  ldloc.0
      IL_0008:  ldc.i4.s   -4
      IL_000a:  sub
      IL_000b:  switch     ( 
                            IL_002d,
                            IL_002d,
                            IL_004a,
                            IL_004a,
                            IL_004a,
                            IL_002d,
                            IL_002d)
      IL_002c:  ret

      IL_002d:  nop
      .try
      {
        IL_002e:  ldloc.0
        IL_002f:  ldc.i4.s   -4
        IL_0031:  beq.s      IL_0039

        IL_0033:  ldloc.0
        IL_0034:  ldc.i4.2
        IL_0035:  beq.s      IL_0039

        IL_0037:  leave.s    IL_004a

        IL_0039:  nop
        .try
        {
          IL_003a:  leave.s    IL_004a

        }  // end .try
        finally
        {
          IL_003c:  ldarg.0
          IL_003d:  call       instance void Game.ContainerWidget/'<get_AllChildren>d__2'::'<>m__Finally2'()
          IL_0042:  endfinally
        }  // end handler
      }  // end .try
      finally
      {
        IL_0043:  ldarg.0
        IL_0044:  call       instance void Game.ContainerWidget/'<get_AllChildren>d__2'::'<>m__Finally1'()
        IL_0049:  endfinally
      }  // end handler
      IL_004a:  ret
    } // end of method '<get_AllChildren>d__2'::System.IDisposable.Dispose

    .method private hidebysig newslot virtual final 
            instance bool  MoveNext() cil managed
    {
      .override [System.Runtime]System.Collections.IEnumerator::MoveNext
      // 代码大小       285 (0x11d)
      .maxstack  2
      .locals init (bool V_0,
               int32 V_1,
               class Game.ContainerWidget V_2,
               class Game.Widget V_3)
      .try
      {
        IL_0000:  ldarg.0
        IL_0001:  ldfld      int32 Game.ContainerWidget/'<get_AllChildren>d__2'::'<>1__state'
        IL_0006:  stloc.1
        IL_0007:  ldloc.1
        IL_0008:  switch     ( 
                              IL_0020,
                              IL_0075,
                              IL_00c5)
        IL_0019:  ldc.i4.0
        IL_001a:  stloc.0
        IL_001b:  leave      IL_011b

        IL_0020:  ldarg.0
        IL_0021:  ldc.i4.m1
        IL_0022:  stfld      int32 Game.ContainerWidget/'<get_AllChildren>d__2'::'<>1__state'
        IL_0027:  ldarg.0
        IL_0028:  ldarg.0
        IL_0029:  ldfld      class Game.ContainerWidget Game.ContainerWidget/'<get_AllChildren>d__2'::'<>4__this'
        IL_002e:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
        IL_0033:  callvirt   instance valuetype Game.WidgetsList/Enumerator Game.WidgetsList::GetEnumerator()
        IL_0038:  stfld      valuetype Game.WidgetsList/Enumerator Game.ContainerWidget/'<get_AllChildren>d__2'::'<>7__wrap1'
        IL_003d:  ldarg.0
        IL_003e:  ldc.i4.s   -3
        IL_0040:  stfld      int32 Game.ContainerWidget/'<get_AllChildren>d__2'::'<>1__state'
        IL_0045:  br         IL_00ee

        IL_004a:  ldarg.0
        IL_004b:  ldarg.0
        IL_004c:  ldflda     valuetype Game.WidgetsList/Enumerator Game.ContainerWidget/'<get_AllChildren>d__2'::'<>7__wrap1'
        IL_0051:  call       instance class Game.Widget Game.WidgetsList/Enumerator::get_Current()
        IL_0056:  stfld      class Game.Widget Game.ContainerWidget/'<get_AllChildren>d__2'::'<childWidget>5__1'
        IL_005b:  ldarg.0
        IL_005c:  ldarg.0
        IL_005d:  ldfld      class Game.Widget Game.ContainerWidget/'<get_AllChildren>d__2'::'<childWidget>5__1'
        IL_0062:  stfld      class Game.Widget Game.ContainerWidget/'<get_AllChildren>d__2'::'<>2__current'
        IL_0067:  ldarg.0
        IL_0068:  ldc.i4.1
        IL_0069:  stfld      int32 Game.ContainerWidget/'<get_AllChildren>d__2'::'<>1__state'
        IL_006e:  ldc.i4.1
        IL_006f:  stloc.0
        IL_0070:  leave      IL_011b

        IL_0075:  ldarg.0
        IL_0076:  ldc.i4.s   -3
        IL_0078:  stfld      int32 Game.ContainerWidget/'<get_AllChildren>d__2'::'<>1__state'
        IL_007d:  ldarg.0
        IL_007e:  ldfld      class Game.Widget Game.ContainerWidget/'<get_AllChildren>d__2'::'<childWidget>5__1'
        IL_0083:  isinst     Game.ContainerWidget
        IL_0088:  stloc.2
        IL_0089:  ldloc.2
        IL_008a:  brfalse.s  IL_00e7

        IL_008c:  ldarg.0
        IL_008d:  ldloc.2
        IL_008e:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.Widget> Game.ContainerWidget::get_AllChildren()
        IL_0093:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.Widget>::GetEnumerator()
        IL_0098:  stfld      class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> Game.ContainerWidget/'<get_AllChildren>d__2'::'<>7__wrap2'
        IL_009d:  ldarg.0
        IL_009e:  ldc.i4.s   -4
        IL_00a0:  stfld      int32 Game.ContainerWidget/'<get_AllChildren>d__2'::'<>1__state'
        IL_00a5:  br.s       IL_00cd

        IL_00a7:  ldarg.0
        IL_00a8:  ldfld      class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> Game.ContainerWidget/'<get_AllChildren>d__2'::'<>7__wrap2'
        IL_00ad:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget>::get_Current()
        IL_00b2:  stloc.3
        IL_00b3:  ldarg.0
        IL_00b4:  ldloc.3
        IL_00b5:  stfld      class Game.Widget Game.ContainerWidget/'<get_AllChildren>d__2'::'<>2__current'
        IL_00ba:  ldarg.0
        IL_00bb:  ldc.i4.2
        IL_00bc:  stfld      int32 Game.ContainerWidget/'<get_AllChildren>d__2'::'<>1__state'
        IL_00c1:  ldc.i4.1
        IL_00c2:  stloc.0
        IL_00c3:  leave.s    IL_011b

        IL_00c5:  ldarg.0
        IL_00c6:  ldc.i4.s   -4
        IL_00c8:  stfld      int32 Game.ContainerWidget/'<get_AllChildren>d__2'::'<>1__state'
        IL_00cd:  ldarg.0
        IL_00ce:  ldfld      class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> Game.ContainerWidget/'<get_AllChildren>d__2'::'<>7__wrap2'
        IL_00d3:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
        IL_00d8:  brtrue.s   IL_00a7

        IL_00da:  ldarg.0
        IL_00db:  call       instance void Game.ContainerWidget/'<get_AllChildren>d__2'::'<>m__Finally2'()
        IL_00e0:  ldarg.0
        IL_00e1:  ldnull
        IL_00e2:  stfld      class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> Game.ContainerWidget/'<get_AllChildren>d__2'::'<>7__wrap2'
        IL_00e7:  ldarg.0
        IL_00e8:  ldnull
        IL_00e9:  stfld      class Game.Widget Game.ContainerWidget/'<get_AllChildren>d__2'::'<childWidget>5__1'
        IL_00ee:  ldarg.0
        IL_00ef:  ldflda     valuetype Game.WidgetsList/Enumerator Game.ContainerWidget/'<get_AllChildren>d__2'::'<>7__wrap1'
        IL_00f4:  call       instance bool Game.WidgetsList/Enumerator::MoveNext()
        IL_00f9:  brtrue     IL_004a

        IL_00fe:  ldarg.0
        IL_00ff:  call       instance void Game.ContainerWidget/'<get_AllChildren>d__2'::'<>m__Finally1'()
        IL_0104:  ldarg.0
        IL_0105:  ldflda     valuetype Game.WidgetsList/Enumerator Game.ContainerWidget/'<get_AllChildren>d__2'::'<>7__wrap1'
        IL_010a:  initobj    Game.WidgetsList/Enumerator
        IL_0110:  ldc.i4.0
        IL_0111:  stloc.0
        IL_0112:  leave.s    IL_011b

      }  // end .try
      fault
      {
        IL_0114:  ldarg.0
        IL_0115:  call       instance void Game.ContainerWidget/'<get_AllChildren>d__2'::System.IDisposable.Dispose()
        IL_011a:  endfinally
      }  // end handler
      IL_011b:  ldloc.0
      IL_011c:  ret
    } // end of method '<get_AllChildren>d__2'::MoveNext

    .method private hidebysig instance void 
            '<>m__Finally1'() cil managed
    {
      // 代码大小       25 (0x19)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldc.i4.m1
      IL_0002:  stfld      int32 Game.ContainerWidget/'<get_AllChildren>d__2'::'<>1__state'
      IL_0007:  ldarg.0
      IL_0008:  ldflda     valuetype Game.WidgetsList/Enumerator Game.ContainerWidget/'<get_AllChildren>d__2'::'<>7__wrap1'
      IL_000d:  constrained. Game.WidgetsList/Enumerator
      IL_0013:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0018:  ret
    } // end of method '<get_AllChildren>d__2'::'<>m__Finally1'

    .method private hidebysig instance void 
            '<>m__Finally2'() cil managed
    {
      // 代码大小       28 (0x1c)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldc.i4.s   -3
      IL_0003:  stfld      int32 Game.ContainerWidget/'<get_AllChildren>d__2'::'<>1__state'
      IL_0008:  ldarg.0
      IL_0009:  ldfld      class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> Game.ContainerWidget/'<get_AllChildren>d__2'::'<>7__wrap2'
      IL_000e:  brfalse.s  IL_001b

      IL_0010:  ldarg.0
      IL_0011:  ldfld      class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> Game.ContainerWidget/'<get_AllChildren>d__2'::'<>7__wrap2'
      IL_0016:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_001b:  ret
    } // end of method '<get_AllChildren>d__2'::'<>m__Finally2'

    .method private hidebysig newslot specialname virtual final 
            instance class Game.Widget  'System.Collections.Generic.IEnumerator<Game.Widget>.get_Current'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget>::get_Current()
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.Widget Game.ContainerWidget/'<get_AllChildren>d__2'::'<>2__current'
      IL_0006:  ret
    } // end of method '<get_AllChildren>d__2'::'System.Collections.Generic.IEnumerator<Game.Widget>.get_Current'

    .method private hidebysig newslot virtual final 
            instance void  System.Collections.IEnumerator.Reset() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::Reset
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  newobj     instance void [System.Runtime]System.NotSupportedException::.ctor()
      IL_0005:  throw
    } // end of method '<get_AllChildren>d__2'::System.Collections.IEnumerator.Reset

    .method private hidebysig newslot specialname virtual final 
            instance object  System.Collections.IEnumerator.get_Current() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::get_Current
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.Widget Game.ContainerWidget/'<get_AllChildren>d__2'::'<>2__current'
      IL_0006:  ret
    } // end of method '<get_AllChildren>d__2'::System.Collections.IEnumerator.get_Current

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> 
            'System.Collections.Generic.IEnumerable<Game.Widget>.GetEnumerator'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.Widget>::GetEnumerator()
      // 代码大小       55 (0x37)
      .maxstack  2
      .locals init (class Game.ContainerWidget/'<get_AllChildren>d__2' V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.ContainerWidget/'<get_AllChildren>d__2'::'<>1__state'
      IL_0006:  ldc.i4.s   -2
      IL_0008:  bne.un.s   IL_0022

      IL_000a:  ldarg.0
      IL_000b:  ldfld      int32 Game.ContainerWidget/'<get_AllChildren>d__2'::'<>l__initialThreadId'
      IL_0010:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0015:  bne.un.s   IL_0022

      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.ContainerWidget/'<get_AllChildren>d__2'::'<>1__state'
      IL_001e:  ldarg.0
      IL_001f:  stloc.0
      IL_0020:  br.s       IL_0035

      IL_0022:  ldc.i4.0
      IL_0023:  newobj     instance void Game.ContainerWidget/'<get_AllChildren>d__2'::.ctor(int32)
      IL_0028:  stloc.0
      IL_0029:  ldloc.0
      IL_002a:  ldarg.0
      IL_002b:  ldfld      class Game.ContainerWidget Game.ContainerWidget/'<get_AllChildren>d__2'::'<>4__this'
      IL_0030:  stfld      class Game.ContainerWidget Game.ContainerWidget/'<get_AllChildren>d__2'::'<>4__this'
      IL_0035:  ldloc.0
      IL_0036:  ret
    } // end of method '<get_AllChildren>d__2'::'System.Collections.Generic.IEnumerable<Game.Widget>.GetEnumerator'

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.IEnumerator 
            System.Collections.IEnumerable.GetEnumerator() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerable::GetEnumerator
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> Game.ContainerWidget/'<get_AllChildren>d__2'::'System.Collections.Generic.IEnumerable<Game.Widget>.GetEnumerator'()
      IL_0006:  ret
    } // end of method '<get_AllChildren>d__2'::System.Collections.IEnumerable.GetEnumerator

    .property instance class Game.Widget 'System.Collections.Generic.IEnumerator<Game.Widget>.Current'()
    {
      .get instance class Game.Widget Game.ContainerWidget/'<get_AllChildren>d__2'::'System.Collections.Generic.IEnumerator<Game.Widget>.get_Current'()
    } // end of property '<get_AllChildren>d__2'::'System.Collections.Generic.IEnumerator<Game.Widget>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object Game.ContainerWidget/'<get_AllChildren>d__2'::System.Collections.IEnumerator.get_Current()
    } // end of property '<get_AllChildren>d__2'::System.Collections.IEnumerator.Current
  } // end of class '<get_AllChildren>d__2'

  .field public initonly class Game.WidgetsList Children
  .method public hidebysig specialname instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.Widget> 
          get_AllChildren() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IteratorStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 2A 47 61 6D 65 2E 43 6F 6E 74 61 69 6E 65   // ..*Game.Containe
                                                                                                                                                      72 57 69 64 67 65 74 2B 3C 67 65 74 5F 41 6C 6C   // rWidget+<get_All
                                                                                                                                                      43 68 69 6C 64 72 65 6E 3E 64 5F 5F 32 00 00 )    // Children>d__2..
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldc.i4.s   -2
    IL_0002:  newobj     instance void Game.ContainerWidget/'<get_AllChildren>d__2'::.ctor(int32)
    IL_0007:  dup
    IL_0008:  ldarg.0
    IL_0009:  stfld      class Game.ContainerWidget Game.ContainerWidget/'<get_AllChildren>d__2'::'<>4__this'
    IL_000e:  ret
  } // end of method ContainerWidget::get_AllChildren

  .method family hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Widget::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.0
    IL_0008:  newobj     instance void Game.WidgetsList::.ctor(class Game.ContainerWidget)
    IL_000d:  stfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0012:  ret
  } // end of method ContainerWidget::.ctor

  .method public hidebysig virtual instance void 
          UpdateCeases() cil managed
  {
    // 代码大小       52 (0x34)
    .maxstack  1
    .locals init (valuetype Game.WidgetsList/Enumerator V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0006:  callvirt   instance valuetype Game.WidgetsList/Enumerator Game.WidgetsList::GetEnumerator()
    IL_000b:  stloc.0
    .try
    {
      IL_000c:  br.s       IL_001a

      IL_000e:  ldloca.s   V_0
      IL_0010:  call       instance class Game.Widget Game.WidgetsList/Enumerator::get_Current()
      IL_0015:  callvirt   instance void Game.Widget::UpdateCeases()
      IL_001a:  ldloca.s   V_0
      IL_001c:  call       instance bool Game.WidgetsList/Enumerator::MoveNext()
      IL_0021:  brtrue.s   IL_000e

      IL_0023:  leave.s    IL_0033

    }  // end .try
    finally
    {
      IL_0025:  ldloca.s   V_0
      IL_0027:  constrained. Game.WidgetsList/Enumerator
      IL_002d:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0032:  endfinally
    }  // end handler
    IL_0033:  ret
  } // end of method ContainerWidget::UpdateCeases

  .method public hidebysig newslot virtual 
          instance void  WidgetAdded(class Game.Widget widget) cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method ContainerWidget::WidgetAdded

  .method public hidebysig newslot virtual 
          instance void  WidgetRemoved(class Game.Widget widget) cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method ContainerWidget::WidgetRemoved

  .method public hidebysig virtual instance void 
          MeasureOverride(valuetype [Engine]Engine.Vector2 parentAvailableSize) cil managed
  {
    // 代码大小       86 (0x56)
    .maxstack  4
    .locals init (valuetype Game.WidgetsList/Enumerator V_0,
             class Game.Widget V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0006:  callvirt   instance valuetype Game.WidgetsList/Enumerator Game.WidgetsList::GetEnumerator()
    IL_000b:  stloc.0
    .try
    {
      IL_000c:  br.s       IL_003c

      IL_000e:  ldloca.s   V_0
      IL_0010:  call       instance class Game.Widget Game.WidgetsList/Enumerator::get_Current()
      IL_0015:  stloc.1
      IL_0016:  ldloc.1
      IL_0017:  ldarg.1
      IL_0018:  ldc.r4     2.
      IL_001d:  ldloc.1
      IL_001e:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_0023:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_0028:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                   valuetype [Engine]Engine.Vector2)
      IL_002d:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
      IL_0032:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Max(valuetype [Engine]Engine.Vector2,
                                                                                        valuetype [Engine]Engine.Vector2)
      IL_0037:  callvirt   instance void Game.Widget::Measure(valuetype [Engine]Engine.Vector2)
      IL_003c:  ldloca.s   V_0
      IL_003e:  call       instance bool Game.WidgetsList/Enumerator::MoveNext()
      IL_0043:  brtrue.s   IL_000e

      IL_0045:  leave.s    IL_0055

    }  // end .try
    finally
    {
      IL_0047:  ldloca.s   V_0
      IL_0049:  constrained. Game.WidgetsList/Enumerator
      IL_004f:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0054:  endfinally
    }  // end handler
    IL_0055:  ret
  } // end of method ContainerWidget::MeasureOverride

  .method family hidebysig static void  ArrangeChildWidgetInCell(valuetype [Engine]Engine.Vector2 c1,
                                                                 valuetype [Engine]Engine.Vector2 c2,
                                                                 class Game.Widget widget) cil managed
  {
    // 代码大小       648 (0x288)
    .maxstack  4
    .locals init (valuetype [Engine]Engine.Vector2 V_0,
             valuetype [Engine]Engine.Vector2 V_1,
             valuetype [Engine]Engine.Vector2 V_2,
             valuetype [Engine]Engine.Vector2 V_3,
             valuetype [Engine]Engine.Vector2 V_4)
    IL_0000:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_0005:  stloc.0
    IL_0006:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_000b:  stloc.1
    IL_000c:  ldarg.1
    IL_000d:  ldarg.0
    IL_000e:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_0013:  stloc.2
    IL_0014:  ldarg.2
    IL_0015:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
    IL_001a:  stloc.3
    IL_001b:  ldarg.2
    IL_001c:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ParentDesiredSize()
    IL_0021:  stloc.s    V_4
    IL_0023:  ldloc.s    V_4
    IL_0025:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_002a:  call       bool [System.Runtime]System.Single::IsPositiveInfinity(float32)
    IL_002f:  brtrue.s   IL_004d

    IL_0031:  ldloc.s    V_4
    IL_0033:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0038:  ldloc.2
    IL_0039:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_003e:  ldc.r4     2.
    IL_0043:  ldloc.3
    IL_0044:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0049:  mul
    IL_004a:  sub
    IL_004b:  ble.un.s   IL_0071

    IL_004d:  ldloca.s   V_4
    IL_004f:  ldloc.2
    IL_0050:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0055:  ldc.r4     2.
    IL_005a:  ldloc.3
    IL_005b:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0060:  mul
    IL_0061:  sub
    IL_0062:  ldc.r4     0.0
    IL_0067:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_006c:  stfld      float32 [Engine]Engine.Vector2::X
    IL_0071:  ldloc.s    V_4
    IL_0073:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0078:  call       bool [System.Runtime]System.Single::IsPositiveInfinity(float32)
    IL_007d:  brtrue.s   IL_009b

    IL_007f:  ldloc.s    V_4
    IL_0081:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0086:  ldloc.2
    IL_0087:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_008c:  ldc.r4     2.
    IL_0091:  ldloc.3
    IL_0092:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0097:  mul
    IL_0098:  sub
    IL_0099:  ble.un.s   IL_00bf

    IL_009b:  ldloca.s   V_4
    IL_009d:  ldloc.2
    IL_009e:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00a3:  ldc.r4     2.
    IL_00a8:  ldloc.3
    IL_00a9:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00ae:  mul
    IL_00af:  sub
    IL_00b0:  ldc.r4     0.0
    IL_00b5:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_00ba:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_00bf:  ldarg.2
    IL_00c0:  callvirt   instance valuetype Game.WidgetAlignment Game.Widget::get_HorizontalAlignment()
    IL_00c5:  brtrue.s   IL_00ee

    IL_00c7:  ldloca.s   V_0
    IL_00c9:  ldarg.0
    IL_00ca:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00cf:  ldloc.3
    IL_00d0:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00d5:  add
    IL_00d6:  stfld      float32 [Engine]Engine.Vector2::X
    IL_00db:  ldloca.s   V_1
    IL_00dd:  ldloc.s    V_4
    IL_00df:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00e4:  stfld      float32 [Engine]Engine.Vector2::X
    IL_00e9:  br         IL_019f

    IL_00ee:  ldarg.2
    IL_00ef:  callvirt   instance valuetype Game.WidgetAlignment Game.Widget::get_HorizontalAlignment()
    IL_00f4:  ldc.i4.1
    IL_00f5:  bne.un.s   IL_0129

    IL_00f7:  ldloca.s   V_0
    IL_00f9:  ldarg.0
    IL_00fa:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00ff:  ldloc.2
    IL_0100:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0105:  ldloc.s    V_4
    IL_0107:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_010c:  sub
    IL_010d:  ldc.r4     2.
    IL_0112:  div
    IL_0113:  add
    IL_0114:  stfld      float32 [Engine]Engine.Vector2::X
    IL_0119:  ldloca.s   V_1
    IL_011b:  ldloc.s    V_4
    IL_011d:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0122:  stfld      float32 [Engine]Engine.Vector2::X
    IL_0127:  br.s       IL_019f

    IL_0129:  ldarg.2
    IL_012a:  callvirt   instance valuetype Game.WidgetAlignment Game.Widget::get_HorizontalAlignment()
    IL_012f:  ldc.i4.2
    IL_0130:  bne.un.s   IL_015e

    IL_0132:  ldloca.s   V_0
    IL_0134:  ldarg.1
    IL_0135:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_013a:  ldloc.s    V_4
    IL_013c:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0141:  sub
    IL_0142:  ldloc.3
    IL_0143:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0148:  sub
    IL_0149:  stfld      float32 [Engine]Engine.Vector2::X
    IL_014e:  ldloca.s   V_1
    IL_0150:  ldloc.s    V_4
    IL_0152:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0157:  stfld      float32 [Engine]Engine.Vector2::X
    IL_015c:  br.s       IL_019f

    IL_015e:  ldarg.2
    IL_015f:  callvirt   instance valuetype Game.WidgetAlignment Game.Widget::get_HorizontalAlignment()
    IL_0164:  ldc.i4.3
    IL_0165:  bne.un.s   IL_019f

    IL_0167:  ldloca.s   V_0
    IL_0169:  ldarg.0
    IL_016a:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_016f:  ldloc.3
    IL_0170:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0175:  add
    IL_0176:  stfld      float32 [Engine]Engine.Vector2::X
    IL_017b:  ldloca.s   V_1
    IL_017d:  ldloc.2
    IL_017e:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0183:  ldc.r4     2.
    IL_0188:  ldloc.3
    IL_0189:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_018e:  mul
    IL_018f:  sub
    IL_0190:  ldc.r4     0.0
    IL_0195:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_019a:  stfld      float32 [Engine]Engine.Vector2::X
    IL_019f:  ldarg.2
    IL_01a0:  callvirt   instance valuetype Game.WidgetAlignment Game.Widget::get_VerticalAlignment()
    IL_01a5:  brtrue.s   IL_01ce

    IL_01a7:  ldloca.s   V_0
    IL_01a9:  ldarg.0
    IL_01aa:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_01af:  ldloc.3
    IL_01b0:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_01b5:  add
    IL_01b6:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_01bb:  ldloca.s   V_1
    IL_01bd:  ldloc.s    V_4
    IL_01bf:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_01c4:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_01c9:  br         IL_027f

    IL_01ce:  ldarg.2
    IL_01cf:  callvirt   instance valuetype Game.WidgetAlignment Game.Widget::get_VerticalAlignment()
    IL_01d4:  ldc.i4.1
    IL_01d5:  bne.un.s   IL_0209

    IL_01d7:  ldloca.s   V_0
    IL_01d9:  ldarg.0
    IL_01da:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_01df:  ldloc.2
    IL_01e0:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_01e5:  ldloc.s    V_4
    IL_01e7:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_01ec:  sub
    IL_01ed:  ldc.r4     2.
    IL_01f2:  div
    IL_01f3:  add
    IL_01f4:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_01f9:  ldloca.s   V_1
    IL_01fb:  ldloc.s    V_4
    IL_01fd:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0202:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_0207:  br.s       IL_027f

    IL_0209:  ldarg.2
    IL_020a:  callvirt   instance valuetype Game.WidgetAlignment Game.Widget::get_VerticalAlignment()
    IL_020f:  ldc.i4.2
    IL_0210:  bne.un.s   IL_023e

    IL_0212:  ldloca.s   V_0
    IL_0214:  ldarg.1
    IL_0215:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_021a:  ldloc.s    V_4
    IL_021c:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0221:  sub
    IL_0222:  ldloc.3
    IL_0223:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0228:  sub
    IL_0229:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_022e:  ldloca.s   V_1
    IL_0230:  ldloc.s    V_4
    IL_0232:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0237:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_023c:  br.s       IL_027f

    IL_023e:  ldarg.2
    IL_023f:  callvirt   instance valuetype Game.WidgetAlignment Game.Widget::get_VerticalAlignment()
    IL_0244:  ldc.i4.3
    IL_0245:  bne.un.s   IL_027f

    IL_0247:  ldloca.s   V_0
    IL_0249:  ldarg.0
    IL_024a:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_024f:  ldloc.3
    IL_0250:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0255:  add
    IL_0256:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_025b:  ldloca.s   V_1
    IL_025d:  ldloc.2
    IL_025e:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0263:  ldc.r4     2.
    IL_0268:  ldloc.3
    IL_0269:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_026e:  mul
    IL_026f:  sub
    IL_0270:  ldc.r4     0.0
    IL_0275:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_027a:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_027f:  ldarg.2
    IL_0280:  ldloc.0
    IL_0281:  ldloc.1
    IL_0282:  callvirt   instance void Game.Widget::Arrange(valuetype [Engine]Engine.Vector2,
                                                            valuetype [Engine]Engine.Vector2)
    IL_0287:  ret
  } // end of method ContainerWidget::ArrangeChildWidgetInCell

  .property instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.Widget>
          AllChildren()
  {
    .get instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.Widget> Game.ContainerWidget::get_AllChildren()
  } // end of property ContainerWidget::AllChildren
} // end of class Game.ContainerWidget