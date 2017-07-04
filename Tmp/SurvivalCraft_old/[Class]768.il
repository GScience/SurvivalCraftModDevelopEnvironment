.class public auto ansi beforefieldinit Game.PlayerStats
       extends [System.Runtime]System.Object
{
  .class auto ansi nested private beforefieldinit StatAttribute
         extends [System.Runtime]System.Attribute
  {
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Attribute::.ctor()
      IL_0006:  ret
    } // end of method StatAttribute::.ctor

  } // end of class StatAttribute

  .class sequential ansi sealed nested public beforefieldinit DeathRecord
         extends [System.Runtime]System.ValueType
  {
    .field public float64 Day
    .field public valuetype [Engine]Engine.Vector3 Location
    .field public string Cause
    .method public hidebysig instance void 
            Load(string s) cil managed
    {
      // 代码大小       137 (0x89)
      .maxstack  5
      .locals init (string[] V_0)
      IL_0000:  ldarg.1
      IL_0001:  ldc.i4.1
      IL_0002:  newarr     [System.Runtime]System.Char
      IL_0007:  dup
      IL_0008:  ldc.i4.0
      IL_0009:  ldc.i4.s   44
      IL_000b:  stelem.i2
      IL_000c:  ldc.i4.1
      IL_000d:  callvirt   instance string[] [System.Runtime]System.String::Split(char[],
                                                                                  valuetype [System.Runtime]System.StringSplitOptions)
      IL_0012:  stloc.0
      IL_0013:  ldloc.0
      IL_0014:  ldlen
      IL_0015:  conv.i4
      IL_0016:  ldc.i4.5
      IL_0017:  beq.s      IL_0024

      IL_0019:  ldstr      "Invalid death record."
      IL_001e:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
      IL_0023:  throw

      IL_0024:  ldarg.0
      IL_0025:  ldloc.0
      IL_0026:  ldc.i4.0
      IL_0027:  ldelem.ref
      IL_0028:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
      IL_002d:  call       float64 [System.Runtime]System.Double::Parse(string,
                                                                        class [System.Runtime]System.IFormatProvider)
      IL_0032:  stfld      float64 Game.PlayerStats/DeathRecord::Day
      IL_0037:  ldarg.0
      IL_0038:  ldflda     valuetype [Engine]Engine.Vector3 Game.PlayerStats/DeathRecord::Location
      IL_003d:  ldloc.0
      IL_003e:  ldc.i4.1
      IL_003f:  ldelem.ref
      IL_0040:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
      IL_0045:  call       float32 [System.Runtime]System.Single::Parse(string,
                                                                        class [System.Runtime]System.IFormatProvider)
      IL_004a:  stfld      float32 [Engine]Engine.Vector3::X
      IL_004f:  ldarg.0
      IL_0050:  ldflda     valuetype [Engine]Engine.Vector3 Game.PlayerStats/DeathRecord::Location
      IL_0055:  ldloc.0
      IL_0056:  ldc.i4.2
      IL_0057:  ldelem.ref
      IL_0058:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
      IL_005d:  call       float32 [System.Runtime]System.Single::Parse(string,
                                                                        class [System.Runtime]System.IFormatProvider)
      IL_0062:  stfld      float32 [Engine]Engine.Vector3::Y
      IL_0067:  ldarg.0
      IL_0068:  ldflda     valuetype [Engine]Engine.Vector3 Game.PlayerStats/DeathRecord::Location
      IL_006d:  ldloc.0
      IL_006e:  ldc.i4.3
      IL_006f:  ldelem.ref
      IL_0070:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
      IL_0075:  call       float32 [System.Runtime]System.Single::Parse(string,
                                                                        class [System.Runtime]System.IFormatProvider)
      IL_007a:  stfld      float32 [Engine]Engine.Vector3::Z
      IL_007f:  ldarg.0
      IL_0080:  ldloc.0
      IL_0081:  ldc.i4.4
      IL_0082:  ldelem.ref
      IL_0083:  stfld      string Game.PlayerStats/DeathRecord::Cause
      IL_0088:  ret
    } // end of method DeathRecord::Load

    .method public hidebysig instance string 
            Save() cil managed
    {
      // 代码大小       187 (0xbb)
      .maxstack  5
      IL_0000:  newobj     instance void [System.Runtime]System.Text.StringBuilder::.ctor()
      IL_0005:  dup
      IL_0006:  ldarg.0
      IL_0007:  ldflda     float64 Game.PlayerStats/DeathRecord::Day
      IL_000c:  ldstr      "R"
      IL_0011:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
      IL_0016:  call       instance string [System.Runtime]System.Double::ToString(string,
                                                                                   class [System.Runtime]System.IFormatProvider)
      IL_001b:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
      IL_0020:  pop
      IL_0021:  dup
      IL_0022:  ldc.i4.s   44
      IL_0024:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
      IL_0029:  pop
      IL_002a:  dup
      IL_002b:  ldarg.0
      IL_002c:  ldflda     valuetype [Engine]Engine.Vector3 Game.PlayerStats/DeathRecord::Location
      IL_0031:  ldflda     float32 [Engine]Engine.Vector3::X
      IL_0036:  ldstr      "R"
      IL_003b:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
      IL_0040:  call       instance string [System.Runtime]System.Single::ToString(string,
                                                                                   class [System.Runtime]System.IFormatProvider)
      IL_0045:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
      IL_004a:  pop
      IL_004b:  dup
      IL_004c:  ldc.i4.s   44
      IL_004e:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
      IL_0053:  pop
      IL_0054:  dup
      IL_0055:  ldarg.0
      IL_0056:  ldflda     valuetype [Engine]Engine.Vector3 Game.PlayerStats/DeathRecord::Location
      IL_005b:  ldflda     float32 [Engine]Engine.Vector3::Y
      IL_0060:  ldstr      "R"
      IL_0065:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
      IL_006a:  call       instance string [System.Runtime]System.Single::ToString(string,
                                                                                   class [System.Runtime]System.IFormatProvider)
      IL_006f:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
      IL_0074:  pop
      IL_0075:  dup
      IL_0076:  ldc.i4.s   44
      IL_0078:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
      IL_007d:  pop
      IL_007e:  dup
      IL_007f:  ldarg.0
      IL_0080:  ldflda     valuetype [Engine]Engine.Vector3 Game.PlayerStats/DeathRecord::Location
      IL_0085:  ldflda     float32 [Engine]Engine.Vector3::Z
      IL_008a:  ldstr      "R"
      IL_008f:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
      IL_0094:  call       instance string [System.Runtime]System.Single::ToString(string,
                                                                                   class [System.Runtime]System.IFormatProvider)
      IL_0099:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
      IL_009e:  pop
      IL_009f:  dup
      IL_00a0:  ldc.i4.s   44
      IL_00a2:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
      IL_00a7:  pop
      IL_00a8:  dup
      IL_00a9:  ldarg.0
      IL_00aa:  ldfld      string Game.PlayerStats/DeathRecord::Cause
      IL_00af:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
      IL_00b4:  pop
      IL_00b5:  callvirt   instance string [System.Runtime]System.Object::ToString()
      IL_00ba:  ret
    } // end of method DeathRecord::Save

  } // end of class DeathRecord

  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.PlayerStats/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<class [System.Reflection]System.Reflection.FieldInfo,bool> '<>9__40_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.PlayerStats/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.PlayerStats/'<>c' Game.PlayerStats/'<>c'::'<>9'
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

    .method assembly hidebysig instance bool 
            '<get_Stats>b__40_0'(class [System.Reflection]System.Reflection.FieldInfo f) cil managed
    {
      // 代码大小       10 (0xa)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  call       !!0 [System.Reflection.Extensions]System.Reflection.CustomAttributeExtensions::GetCustomAttribute<class Game.PlayerStats/StatAttribute>(class [System.Reflection]System.Reflection.MemberInfo)
      IL_0006:  ldnull
      IL_0007:  cgt.un
      IL_0009:  ret
    } // end of method '<>c'::'<get_Stats>b__40_0'

  } // end of class '<>c'

  .class auto ansi sealed nested private beforefieldinit '<get_Stats>d__40'
         extends [System.Runtime]System.Object
         implements class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.FieldInfo>,
                    [System.Runtime]System.Collections.IEnumerable,
                    class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.FieldInfo>,
                    [System.Runtime]System.Collections.IEnumerator,
                    [System.Runtime]System.IDisposable
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field private int32 '<>1__state'
    .field private class [System.Reflection]System.Reflection.FieldInfo '<>2__current'
    .field private int32 '<>l__initialThreadId'
    .field private class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.FieldInfo> '<>7__wrap1'
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
      IL_0008:  stfld      int32 Game.PlayerStats/'<get_Stats>d__40'::'<>1__state'
      IL_000d:  ldarg.0
      IL_000e:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0013:  stfld      int32 Game.PlayerStats/'<get_Stats>d__40'::'<>l__initialThreadId'
      IL_0018:  ret
    } // end of method '<get_Stats>d__40'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  System.IDisposable.Dispose() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.IDisposable::Dispose
      // 代码大小       27 (0x1b)
      .maxstack  2
      .locals init (int32 V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.PlayerStats/'<get_Stats>d__40'::'<>1__state'
      IL_0006:  stloc.0
      IL_0007:  ldloc.0
      IL_0008:  ldc.i4.s   -3
      IL_000a:  beq.s      IL_0010

      IL_000c:  ldloc.0
      IL_000d:  ldc.i4.1
      IL_000e:  bne.un.s   IL_001a

      IL_0010:  nop
      .try
      {
        IL_0011:  leave.s    IL_001a

      }  // end .try
      finally
      {
        IL_0013:  ldarg.0
        IL_0014:  call       instance void Game.PlayerStats/'<get_Stats>d__40'::'<>m__Finally1'()
        IL_0019:  endfinally
      }  // end handler
      IL_001a:  ret
    } // end of method '<get_Stats>d__40'::System.IDisposable.Dispose

    .method private hidebysig newslot virtual final 
            instance bool  MoveNext() cil managed
    {
      .override [System.Runtime]System.Collections.IEnumerator::MoveNext
      // 代码大小       177 (0xb1)
      .maxstack  4
      .locals init (bool V_0,
               int32 V_1,
               class [System.Reflection]System.Reflection.FieldInfo V_2)
      .try
      {
        IL_0000:  ldarg.0
        IL_0001:  ldfld      int32 Game.PlayerStats/'<get_Stats>d__40'::'<>1__state'
        IL_0006:  stloc.1
        IL_0007:  ldloc.1
        IL_0008:  brfalse.s  IL_0015

        IL_000a:  ldloc.1
        IL_000b:  ldc.i4.1
        IL_000c:  beq.s      IL_0082

        IL_000e:  ldc.i4.0
        IL_000f:  stloc.0
        IL_0010:  leave      IL_00af

        IL_0015:  ldarg.0
        IL_0016:  ldc.i4.m1
        IL_0017:  stfld      int32 Game.PlayerStats/'<get_Stats>d__40'::'<>1__state'
        IL_001c:  ldarg.0
        IL_001d:  ldtoken    Game.PlayerStats
        IL_0022:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
        IL_0027:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.FieldInfo> [System.Reflection.Extensions]System.Reflection.RuntimeReflectionExtensions::GetRuntimeFields(class [System.Runtime]System.Type)
        IL_002c:  ldsfld     class [System.Runtime]System.Func`2<class [System.Reflection]System.Reflection.FieldInfo,bool> Game.PlayerStats/'<>c'::'<>9__40_0'
        IL_0031:  dup
        IL_0032:  brtrue.s   IL_004b

        IL_0034:  pop
        IL_0035:  ldsfld     class Game.PlayerStats/'<>c' Game.PlayerStats/'<>c'::'<>9'
        IL_003a:  ldftn      instance bool Game.PlayerStats/'<>c'::'<get_Stats>b__40_0'(class [System.Reflection]System.Reflection.FieldInfo)
        IL_0040:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Reflection]System.Reflection.FieldInfo,bool>::.ctor(object,
                                                                                                                                                 native int)
        IL_0045:  dup
        IL_0046:  stsfld     class [System.Runtime]System.Func`2<class [System.Reflection]System.Reflection.FieldInfo,bool> Game.PlayerStats/'<>c'::'<>9__40_0'
        IL_004b:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Reflection]System.Reflection.FieldInfo>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                  class [System.Runtime]System.Func`2<!!0,bool>)
        IL_0050:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.FieldInfo>::GetEnumerator()
        IL_0055:  stfld      class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.FieldInfo> Game.PlayerStats/'<get_Stats>d__40'::'<>7__wrap1'
        IL_005a:  ldarg.0
        IL_005b:  ldc.i4.s   -3
        IL_005d:  stfld      int32 Game.PlayerStats/'<get_Stats>d__40'::'<>1__state'
        IL_0062:  br.s       IL_008a

        IL_0064:  ldarg.0
        IL_0065:  ldfld      class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.FieldInfo> Game.PlayerStats/'<get_Stats>d__40'::'<>7__wrap1'
        IL_006a:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.FieldInfo>::get_Current()
        IL_006f:  stloc.2
        IL_0070:  ldarg.0
        IL_0071:  ldloc.2
        IL_0072:  stfld      class [System.Reflection]System.Reflection.FieldInfo Game.PlayerStats/'<get_Stats>d__40'::'<>2__current'
        IL_0077:  ldarg.0
        IL_0078:  ldc.i4.1
        IL_0079:  stfld      int32 Game.PlayerStats/'<get_Stats>d__40'::'<>1__state'
        IL_007e:  ldc.i4.1
        IL_007f:  stloc.0
        IL_0080:  leave.s    IL_00af

        IL_0082:  ldarg.0
        IL_0083:  ldc.i4.s   -3
        IL_0085:  stfld      int32 Game.PlayerStats/'<get_Stats>d__40'::'<>1__state'
        IL_008a:  ldarg.0
        IL_008b:  ldfld      class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.FieldInfo> Game.PlayerStats/'<get_Stats>d__40'::'<>7__wrap1'
        IL_0090:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
        IL_0095:  brtrue.s   IL_0064

        IL_0097:  ldarg.0
        IL_0098:  call       instance void Game.PlayerStats/'<get_Stats>d__40'::'<>m__Finally1'()
        IL_009d:  ldarg.0
        IL_009e:  ldnull
        IL_009f:  stfld      class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.FieldInfo> Game.PlayerStats/'<get_Stats>d__40'::'<>7__wrap1'
        IL_00a4:  ldc.i4.0
        IL_00a5:  stloc.0
        IL_00a6:  leave.s    IL_00af

      }  // end .try
      fault
      {
        IL_00a8:  ldarg.0
        IL_00a9:  call       instance void Game.PlayerStats/'<get_Stats>d__40'::System.IDisposable.Dispose()
        IL_00ae:  endfinally
      }  // end handler
      IL_00af:  ldloc.0
      IL_00b0:  ret
    } // end of method '<get_Stats>d__40'::MoveNext

    .method private hidebysig instance void 
            '<>m__Finally1'() cil managed
    {
      // 代码大小       27 (0x1b)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldc.i4.m1
      IL_0002:  stfld      int32 Game.PlayerStats/'<get_Stats>d__40'::'<>1__state'
      IL_0007:  ldarg.0
      IL_0008:  ldfld      class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.FieldInfo> Game.PlayerStats/'<get_Stats>d__40'::'<>7__wrap1'
      IL_000d:  brfalse.s  IL_001a

      IL_000f:  ldarg.0
      IL_0010:  ldfld      class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.FieldInfo> Game.PlayerStats/'<get_Stats>d__40'::'<>7__wrap1'
      IL_0015:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_001a:  ret
    } // end of method '<get_Stats>d__40'::'<>m__Finally1'

    .method private hidebysig newslot specialname virtual final 
            instance class [System.Reflection]System.Reflection.FieldInfo 
            'System.Collections.Generic.IEnumerator<System.Reflection.FieldInfo>.get_Current'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.FieldInfo>::get_Current()
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [System.Reflection]System.Reflection.FieldInfo Game.PlayerStats/'<get_Stats>d__40'::'<>2__current'
      IL_0006:  ret
    } // end of method '<get_Stats>d__40'::'System.Collections.Generic.IEnumerator<System.Reflection.FieldInfo>.get_Current'

    .method private hidebysig newslot virtual final 
            instance void  System.Collections.IEnumerator.Reset() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::Reset
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  newobj     instance void [System.Runtime]System.NotSupportedException::.ctor()
      IL_0005:  throw
    } // end of method '<get_Stats>d__40'::System.Collections.IEnumerator.Reset

    .method private hidebysig newslot specialname virtual final 
            instance object  System.Collections.IEnumerator.get_Current() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::get_Current
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [System.Reflection]System.Reflection.FieldInfo Game.PlayerStats/'<get_Stats>d__40'::'<>2__current'
      IL_0006:  ret
    } // end of method '<get_Stats>d__40'::System.Collections.IEnumerator.get_Current

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.FieldInfo> 
            'System.Collections.Generic.IEnumerable<System.Reflection.FieldInfo>.GetEnumerator'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.FieldInfo>::GetEnumerator()
      // 代码大小       43 (0x2b)
      .maxstack  2
      .locals init (class Game.PlayerStats/'<get_Stats>d__40' V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.PlayerStats/'<get_Stats>d__40'::'<>1__state'
      IL_0006:  ldc.i4.s   -2
      IL_0008:  bne.un.s   IL_0022

      IL_000a:  ldarg.0
      IL_000b:  ldfld      int32 Game.PlayerStats/'<get_Stats>d__40'::'<>l__initialThreadId'
      IL_0010:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0015:  bne.un.s   IL_0022

      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.PlayerStats/'<get_Stats>d__40'::'<>1__state'
      IL_001e:  ldarg.0
      IL_001f:  stloc.0
      IL_0020:  br.s       IL_0029

      IL_0022:  ldc.i4.0
      IL_0023:  newobj     instance void Game.PlayerStats/'<get_Stats>d__40'::.ctor(int32)
      IL_0028:  stloc.0
      IL_0029:  ldloc.0
      IL_002a:  ret
    } // end of method '<get_Stats>d__40'::'System.Collections.Generic.IEnumerable<System.Reflection.FieldInfo>.GetEnumerator'

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.IEnumerator 
            System.Collections.IEnumerable.GetEnumerator() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerable::GetEnumerator
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.FieldInfo> Game.PlayerStats/'<get_Stats>d__40'::'System.Collections.Generic.IEnumerable<System.Reflection.FieldInfo>.GetEnumerator'()
      IL_0006:  ret
    } // end of method '<get_Stats>d__40'::System.Collections.IEnumerable.GetEnumerator

    .property instance class [System.Reflection]System.Reflection.FieldInfo
            'System.Collections.Generic.IEnumerator<System.Reflection.FieldInfo>.Current'()
    {
      .get instance class [System.Reflection]System.Reflection.FieldInfo Game.PlayerStats/'<get_Stats>d__40'::'System.Collections.Generic.IEnumerator<System.Reflection.FieldInfo>.get_Current'()
    } // end of property '<get_Stats>d__40'::'System.Collections.Generic.IEnumerator<System.Reflection.FieldInfo>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object Game.PlayerStats/'<get_Stats>d__40'::System.Collections.IEnumerator.get_Current()
    } // end of property '<get_Stats>d__40'::System.Collections.IEnumerator.Current
  } // end of class '<get_Stats>d__40'

  .field private class [System.Collections]System.Collections.Generic.List`1<valuetype Game.PlayerStats/DeathRecord> m_deathRecords
  .field public float64 DistanceTravelled
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public float64 DistanceWalked
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public float64 DistanceFallen
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public float64 DistanceClimbed
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public float64 DistanceFlown
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public float64 DistanceSwam
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public float64 DistanceRidden
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public float64 LowestAltitude
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public float64 HighestAltitude
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public float64 DeepestDive
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public int64 Jumps
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public int64 BlocksDug
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public int64 BlocksPlaced
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public int64 BlocksInteracted
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public int64 PlayerKills
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public int64 LandCreatureKills
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public int64 WaterCreatureKills
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public int64 AirCreatureKills
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public int64 MeleeAttacks
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public int64 MeleeHits
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public int64 RangedAttacks
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public int64 RangedHits
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public int64 HitsReceived
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public int64 StruckByLightning
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public float64 TotalHealthLost
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public int64 FoodItemsEaten
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public int64 TimesWasSick
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public int64 TimesHadFlu
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public int64 TimesPuked
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public int64 TimesWentToSleep
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public float64 TimeSlept
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public int64 ItemsCrafted
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public int64 FurnitureItemsMade
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public valuetype Game.GameMode EasiestModeUsed
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public float32 HighestLevel
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public string DeathRecordsString
  .custom instance void Game.PlayerStats/StatAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.FieldInfo> 
          get_Stats() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IteratorStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 21 47 61 6D 65 2E 50 6C 61 79 65 72 53 74   // ..!Game.PlayerSt
                                                                                                                                                      61 74 73 2B 3C 67 65 74 5F 53 74 61 74 73 3E 64   // ats+<get_Stats>d
                                                                                                                                                      5F 5F 34 30 00 00 )                               // __40..
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldc.i4.s   -2
    IL_0002:  newobj     instance void Game.PlayerStats/'<get_Stats>d__40'::.ctor(int32)
    IL_0007:  ret
  } // end of method PlayerStats::get_Stats

  .method public hidebysig specialname instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.PlayerStats/DeathRecord> 
          get_DeathRecords() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.PlayerStats/DeathRecord> Game.PlayerStats::m_deathRecords
    IL_0006:  newobj     instance void valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.PlayerStats/DeathRecord>::.ctor(class [System.Runtime]System.Collections.Generic.IList`1<!0>)
    IL_000b:  ret
  } // end of method PlayerStats::get_DeathRecords

  .method public hidebysig instance void 
          AddDeathRecord(valuetype Game.PlayerStats/DeathRecord deathRecord) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.PlayerStats/DeathRecord> Game.PlayerStats::m_deathRecords
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.PlayerStats/DeathRecord>::Add(!0)
    IL_000c:  ret
  } // end of method PlayerStats::AddDeathRecord

  .method public hidebysig instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       168 (0xa8)
    .maxstack  5
    .locals init (class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.FieldInfo> V_0,
             class [System.Reflection]System.Reflection.FieldInfo V_1,
             object V_2,
             string[] V_3,
             int32 V_4,
             string V_5,
             valuetype Game.PlayerStats/DeathRecord V_6)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.FieldInfo> Game.PlayerStats::get_Stats()
    IL_0006:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.FieldInfo>::GetEnumerator()
    IL_000b:  stloc.0
    .try
    {
      IL_000c:  br.s       IL_0038

      IL_000e:  ldloc.0
      IL_000f:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.FieldInfo>::get_Current()
      IL_0014:  stloc.1
      IL_0015:  ldarg.1
      IL_0016:  ldloc.1
      IL_0017:  callvirt   instance string [System.Reflection]System.Reflection.MemberInfo::get_Name()
      IL_001c:  callvirt   instance bool [EntitySystem]TemplatesDatabase.ValuesDictionary::ContainsKey(string)
      IL_0021:  brfalse.s  IL_0038

      IL_0023:  ldarg.1
      IL_0024:  ldloc.1
      IL_0025:  callvirt   instance string [System.Reflection]System.Reflection.MemberInfo::get_Name()
      IL_002a:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<object>(string)
      IL_002f:  stloc.2
      IL_0030:  ldloc.1
      IL_0031:  ldarg.0
      IL_0032:  ldloc.2
      IL_0033:  callvirt   instance void [System.Reflection]System.Reflection.FieldInfo::SetValue(object,
                                                                                                  object)
      IL_0038:  ldloc.0
      IL_0039:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_003e:  brtrue.s   IL_000e

      IL_0040:  leave.s    IL_004c

    }  // end .try
    finally
    {
      IL_0042:  ldloc.0
      IL_0043:  brfalse.s  IL_004b

      IL_0045:  ldloc.0
      IL_0046:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_004b:  endfinally
    }  // end handler
    IL_004c:  ldarg.0
    IL_004d:  ldfld      string Game.PlayerStats::DeathRecordsString
    IL_0052:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0057:  brtrue.s   IL_00a7

    IL_0059:  ldarg.0
    IL_005a:  ldfld      string Game.PlayerStats::DeathRecordsString
    IL_005f:  ldc.i4.1
    IL_0060:  newarr     [System.Runtime]System.Char
    IL_0065:  dup
    IL_0066:  ldc.i4.0
    IL_0067:  ldc.i4.s   59
    IL_0069:  stelem.i2
    IL_006a:  ldc.i4.1
    IL_006b:  callvirt   instance string[] [System.Runtime]System.String::Split(char[],
                                                                                valuetype [System.Runtime]System.StringSplitOptions)
    IL_0070:  stloc.3
    IL_0071:  ldc.i4.0
    IL_0072:  stloc.s    V_4
    IL_0074:  br.s       IL_00a0

    IL_0076:  ldloc.3
    IL_0077:  ldloc.s    V_4
    IL_0079:  ldelem.ref
    IL_007a:  stloc.s    V_5
    IL_007c:  ldloca.s   V_6
    IL_007e:  initobj    Game.PlayerStats/DeathRecord
    IL_0084:  ldloca.s   V_6
    IL_0086:  ldloc.s    V_5
    IL_0088:  call       instance void Game.PlayerStats/DeathRecord::Load(string)
    IL_008d:  ldarg.0
    IL_008e:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.PlayerStats/DeathRecord> Game.PlayerStats::m_deathRecords
    IL_0093:  ldloc.s    V_6
    IL_0095:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.PlayerStats/DeathRecord>::Add(!0)
    IL_009a:  ldloc.s    V_4
    IL_009c:  ldc.i4.1
    IL_009d:  add
    IL_009e:  stloc.s    V_4
    IL_00a0:  ldloc.s    V_4
    IL_00a2:  ldloc.3
    IL_00a3:  ldlen
    IL_00a4:  conv.i4
    IL_00a5:  blt.s      IL_0076

    IL_00a7:  ret
  } // end of method PlayerStats::Load

  .method public hidebysig instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       156 (0x9c)
    .maxstack  3
    .locals init (class [System.Runtime]System.Text.StringBuilder V_0,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype Game.PlayerStats/DeathRecord> V_1,
             valuetype Game.PlayerStats/DeathRecord V_2,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.FieldInfo> V_3,
             class [System.Reflection]System.Reflection.FieldInfo V_4,
             object V_5)
    IL_0000:  newobj     instance void [System.Runtime]System.Text.StringBuilder::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.PlayerStats/DeathRecord> Game.PlayerStats::m_deathRecords
    IL_000c:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<valuetype Game.PlayerStats/DeathRecord>::GetEnumerator()
    IL_0011:  stloc.1
    .try
    {
      IL_0012:  br.s       IL_0033

      IL_0014:  ldloca.s   V_1
      IL_0016:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype Game.PlayerStats/DeathRecord>::get_Current()
      IL_001b:  stloc.2
      IL_001c:  ldloc.0
      IL_001d:  ldloca.s   V_2
      IL_001f:  call       instance string Game.PlayerStats/DeathRecord::Save()
      IL_0024:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
      IL_0029:  pop
      IL_002a:  ldloc.0
      IL_002b:  ldc.i4.s   59
      IL_002d:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
      IL_0032:  pop
      IL_0033:  ldloca.s   V_1
      IL_0035:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype Game.PlayerStats/DeathRecord>::MoveNext()
      IL_003a:  brtrue.s   IL_0014

      IL_003c:  leave.s    IL_004c

    }  // end .try
    finally
    {
      IL_003e:  ldloca.s   V_1
      IL_0040:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype Game.PlayerStats/DeathRecord>
      IL_0046:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_004b:  endfinally
    }  // end handler
    IL_004c:  ldarg.0
    IL_004d:  ldloc.0
    IL_004e:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0053:  stfld      string Game.PlayerStats::DeathRecordsString
    IL_0058:  ldarg.0
    IL_0059:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.FieldInfo> Game.PlayerStats::get_Stats()
    IL_005e:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.FieldInfo>::GetEnumerator()
    IL_0063:  stloc.3
    .try
    {
      IL_0064:  br.s       IL_0087

      IL_0066:  ldloc.3
      IL_0067:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.FieldInfo>::get_Current()
      IL_006c:  stloc.s    V_4
      IL_006e:  ldloc.s    V_4
      IL_0070:  ldarg.0
      IL_0071:  callvirt   instance object [System.Reflection]System.Reflection.FieldInfo::GetValue(object)
      IL_0076:  stloc.s    V_5
      IL_0078:  ldarg.1
      IL_0079:  ldloc.s    V_4
      IL_007b:  callvirt   instance string [System.Reflection]System.Reflection.MemberInfo::get_Name()
      IL_0080:  ldloc.s    V_5
      IL_0082:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<object>(string,
                                                                                                            !!0)
      IL_0087:  ldloc.3
      IL_0088:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_008d:  brtrue.s   IL_0066

      IL_008f:  leave.s    IL_009b

    }  // end .try
    finally
    {
      IL_0091:  ldloc.3
      IL_0092:  brfalse.s  IL_009a

      IL_0094:  ldloc.3
      IL_0095:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_009a:  endfinally
    }  // end handler
    IL_009b:  ret
  } // end of method PlayerStats::Save

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       59 (0x3b)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.PlayerStats/DeathRecord>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.PlayerStats/DeathRecord> Game.PlayerStats::m_deathRecords
    IL_000b:  ldarg.0
    IL_000c:  ldc.r8     (00 00 00 00 00 00 F0 7F)
    IL_0015:  stfld      float64 Game.PlayerStats::LowestAltitude
    IL_001a:  ldarg.0
    IL_001b:  ldc.r8     (00 00 00 00 00 00 F0 FF)
    IL_0024:  stfld      float64 Game.PlayerStats::HighestAltitude
    IL_0029:  ldarg.0
    IL_002a:  ldc.i4     0x7fffffff
    IL_002f:  stfld      valuetype Game.GameMode Game.PlayerStats::EasiestModeUsed
    IL_0034:  ldarg.0
    IL_0035:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_003a:  ret
  } // end of method PlayerStats::.ctor

  .property instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.FieldInfo>
          Stats()
  {
    .get instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.FieldInfo> Game.PlayerStats::get_Stats()
  } // end of property PlayerStats::Stats
  .property instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.PlayerStats/DeathRecord>
          DeathRecords()
  {
    .get instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.PlayerStats/DeathRecord> Game.PlayerStats::get_DeathRecords()
  } // end of property PlayerStats::DeathRecords
} // end of class Game.PlayerStats