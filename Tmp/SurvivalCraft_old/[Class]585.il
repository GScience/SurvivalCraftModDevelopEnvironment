.class public auto ansi beforefieldinit Game.MemoryBankData
       extends [System.Runtime]System.Object
       implements Game.IEditableItemData
{
  .field private static class [System.Collections]System.Collections.Generic.List`1<char> m_hexChars
  .field public class [Engine]Engine.DynamicArray`1<uint8> Data
  .field private uint8 '<LastOutput>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance uint8 
          get_LastOutput() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      uint8 Game.MemoryBankData::'<LastOutput>k__BackingField'
    IL_0006:  ret
  } // end of method MemoryBankData::get_LastOutput

  .method public hidebysig specialname instance void 
          set_LastOutput(uint8 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      uint8 Game.MemoryBankData::'<LastOutput>k__BackingField'
    IL_0007:  ret
  } // end of method MemoryBankData::set_LastOutput

  .method public hidebysig instance uint8 
          Read(int32 address) cil managed
  {
    // 代码大小       34 (0x22)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.0
    IL_0002:  blt.s      IL_0020

    IL_0004:  ldarg.1
    IL_0005:  ldarg.0
    IL_0006:  ldfld      class [Engine]Engine.DynamicArray`1<uint8> Game.MemoryBankData::Data
    IL_000b:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint8>::get_Count()
    IL_0010:  bge.s      IL_0020

    IL_0012:  ldarg.0
    IL_0013:  ldfld      class [Engine]Engine.DynamicArray`1<uint8> Game.MemoryBankData::Data
    IL_0018:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint8>::get_Array()
    IL_001d:  ldarg.1
    IL_001e:  ldelem.u1
    IL_001f:  ret

    IL_0020:  ldc.i4.0
    IL_0021:  ret
  } // end of method MemoryBankData::Read

  .method public hidebysig instance void 
          Write(int32 address,
                uint8 data) cil managed
  {
    // 代码大小       93 (0x5d)
    .maxstack  4
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.0
    IL_0002:  blt.s      IL_0021

    IL_0004:  ldarg.1
    IL_0005:  ldarg.0
    IL_0006:  ldfld      class [Engine]Engine.DynamicArray`1<uint8> Game.MemoryBankData::Data
    IL_000b:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint8>::get_Count()
    IL_0010:  bge.s      IL_0021

    IL_0012:  ldarg.0
    IL_0013:  ldfld      class [Engine]Engine.DynamicArray`1<uint8> Game.MemoryBankData::Data
    IL_0018:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint8>::get_Array()
    IL_001d:  ldarg.1
    IL_001e:  ldarg.2
    IL_001f:  stelem.i1
    IL_0020:  ret

    IL_0021:  ldarg.1
    IL_0022:  ldc.i4.0
    IL_0023:  blt.s      IL_005c

    IL_0025:  ldarg.1
    IL_0026:  ldc.i4     0x100
    IL_002b:  bge.s      IL_005c

    IL_002d:  ldarg.2
    IL_002e:  brfalse.s  IL_005c

    IL_0030:  ldarg.0
    IL_0031:  ldfld      class [Engine]Engine.DynamicArray`1<uint8> Game.MemoryBankData::Data
    IL_0036:  ldarg.0
    IL_0037:  ldfld      class [Engine]Engine.DynamicArray`1<uint8> Game.MemoryBankData::Data
    IL_003c:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint8>::get_Count()
    IL_0041:  ldarg.1
    IL_0042:  ldc.i4.1
    IL_0043:  add
    IL_0044:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0049:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint8>::set_Count(int32)
    IL_004e:  ldarg.0
    IL_004f:  ldfld      class [Engine]Engine.DynamicArray`1<uint8> Game.MemoryBankData::Data
    IL_0054:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint8>::get_Array()
    IL_0059:  ldarg.1
    IL_005a:  ldarg.2
    IL_005b:  stelem.i1
    IL_005c:  ret
  } // end of method MemoryBankData::Write

  .method public hidebysig newslot virtual final 
          instance class Game.IEditableItemData 
          Copy() cil managed
  {
    // 代码大小       35 (0x23)
    .maxstack  8
    IL_0000:  newobj     instance void Game.MemoryBankData::.ctor()
    IL_0005:  dup
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class [Engine]Engine.DynamicArray`1<uint8> Game.MemoryBankData::Data
    IL_000c:  newobj     instance void class [Engine]Engine.DynamicArray`1<uint8>::.ctor(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!0>)
    IL_0011:  stfld      class [Engine]Engine.DynamicArray`1<uint8> Game.MemoryBankData::Data
    IL_0016:  dup
    IL_0017:  ldarg.0
    IL_0018:  call       instance uint8 Game.MemoryBankData::get_LastOutput()
    IL_001d:  callvirt   instance void Game.MemoryBankData::set_LastOutput(uint8)
    IL_0022:  ret
  } // end of method MemoryBankData::Copy

  .method public hidebysig newslot virtual final 
          instance void  LoadString(string data) cil managed
  {
    // 代码大小       181 (0xb5)
    .maxstack  5
    .locals init (string[] V_0,
             string V_1,
             int32 V_2,
             int32 V_3,
             string V_4,
             int32 V_5)
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.1
    IL_0002:  newarr     [System.Runtime]System.Char
    IL_0007:  dup
    IL_0008:  ldc.i4.0
    IL_0009:  ldc.i4.s   59
    IL_000b:  stelem.i2
    IL_000c:  ldc.i4.1
    IL_000d:  callvirt   instance string[] [System.Runtime]System.String::Split(char[],
                                                                                valuetype [System.Runtime]System.StringSplitOptions)
    IL_0012:  stloc.0
    IL_0013:  ldloc.0
    IL_0014:  ldlen
    IL_0015:  conv.i4
    IL_0016:  ldc.i4.1
    IL_0017:  blt.s      IL_007f

    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.0
    IL_001b:  ldelem.ref
    IL_001c:  stloc.1
    IL_001d:  ldloc.1
    IL_001e:  ldc.i4.1
    IL_001f:  newarr     [System.Runtime]System.Char
    IL_0024:  dup
    IL_0025:  ldc.i4.0
    IL_0026:  ldc.i4.s   48
    IL_0028:  stelem.i2
    IL_0029:  callvirt   instance string [System.Runtime]System.String::TrimEnd(char[])
    IL_002e:  stloc.1
    IL_002f:  ldarg.0
    IL_0030:  ldfld      class [Engine]Engine.DynamicArray`1<uint8> Game.MemoryBankData::Data
    IL_0035:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint8>::Clear()
    IL_003a:  ldc.i4.0
    IL_003b:  stloc.2
    IL_003c:  br.s       IL_006c

    IL_003e:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<char> Game.MemoryBankData::m_hexChars
    IL_0043:  ldloc.1
    IL_0044:  ldloc.2
    IL_0045:  callvirt   instance char [System.Runtime]System.String::get_Chars(int32)
    IL_004a:  call       char [System.Runtime]System.Char::ToUpperInvariant(char)
    IL_004f:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<char>::IndexOf(!0)
    IL_0054:  stloc.3
    IL_0055:  ldloc.3
    IL_0056:  ldc.i4.0
    IL_0057:  bge.s      IL_005b

    IL_0059:  ldc.i4.0
    IL_005a:  stloc.3
    IL_005b:  ldarg.0
    IL_005c:  ldfld      class [Engine]Engine.DynamicArray`1<uint8> Game.MemoryBankData::Data
    IL_0061:  ldloc.3
    IL_0062:  conv.u1
    IL_0063:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint8>::Add(!0)
    IL_0068:  ldloc.2
    IL_0069:  ldc.i4.1
    IL_006a:  add
    IL_006b:  stloc.2
    IL_006c:  ldloc.2
    IL_006d:  ldloc.1
    IL_006e:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_0073:  ldc.i4     0x100
    IL_0078:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_007d:  blt.s      IL_003e

    IL_007f:  ldloc.0
    IL_0080:  ldlen
    IL_0081:  conv.i4
    IL_0082:  ldc.i4.2
    IL_0083:  blt.s      IL_00b4

    IL_0085:  ldloc.0
    IL_0086:  ldc.i4.1
    IL_0087:  ldelem.ref
    IL_0088:  stloc.s    V_4
    IL_008a:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<char> Game.MemoryBankData::m_hexChars
    IL_008f:  ldloc.s    V_4
    IL_0091:  ldc.i4.0
    IL_0092:  callvirt   instance char [System.Runtime]System.String::get_Chars(int32)
    IL_0097:  call       char [System.Runtime]System.Char::ToUpperInvariant(char)
    IL_009c:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<char>::IndexOf(!0)
    IL_00a1:  stloc.s    V_5
    IL_00a3:  ldloc.s    V_5
    IL_00a5:  ldc.i4.0
    IL_00a6:  bge.s      IL_00ab

    IL_00a8:  ldc.i4.0
    IL_00a9:  stloc.s    V_5
    IL_00ab:  ldarg.0
    IL_00ac:  ldloc.s    V_5
    IL_00ae:  conv.u1
    IL_00af:  call       instance void Game.MemoryBankData::set_LastOutput(uint8)
    IL_00b4:  ret
  } // end of method MemoryBankData::LoadString

  .method public hidebysig newslot virtual final 
          instance string  SaveString() cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  call       instance string Game.MemoryBankData::SaveString(bool)
    IL_0007:  ret
  } // end of method MemoryBankData::SaveString

  .method public hidebysig instance string 
          SaveString(bool saveLastOutput) cil managed
  {
    // 代码大小       153 (0x99)
    .maxstack  5
    .locals init (class [System.Runtime]System.Text.StringBuilder V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4)
    IL_0000:  newobj     instance void [System.Runtime]System.Text.StringBuilder::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldc.i4.0
    IL_0007:  stloc.1
    IL_0008:  ldc.i4.0
    IL_0009:  stloc.2
    IL_000a:  br.s       IL_0023

    IL_000c:  ldarg.0
    IL_000d:  ldfld      class [Engine]Engine.DynamicArray`1<uint8> Game.MemoryBankData::Data
    IL_0012:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint8>::get_Array()
    IL_0017:  ldloc.2
    IL_0018:  ldelem.u1
    IL_0019:  brfalse.s  IL_001f

    IL_001b:  ldloc.2
    IL_001c:  ldc.i4.1
    IL_001d:  add
    IL_001e:  stloc.1
    IL_001f:  ldloc.2
    IL_0020:  ldc.i4.1
    IL_0021:  add
    IL_0022:  stloc.2
    IL_0023:  ldloc.2
    IL_0024:  ldarg.0
    IL_0025:  ldfld      class [Engine]Engine.DynamicArray`1<uint8> Game.MemoryBankData::Data
    IL_002a:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint8>::get_Count()
    IL_002f:  blt.s      IL_000c

    IL_0031:  ldc.i4.0
    IL_0032:  stloc.3
    IL_0033:  br.s       IL_0063

    IL_0035:  ldarg.0
    IL_0036:  ldfld      class [Engine]Engine.DynamicArray`1<uint8> Game.MemoryBankData::Data
    IL_003b:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint8>::get_Array()
    IL_0040:  ldloc.3
    IL_0041:  ldelem.u1
    IL_0042:  ldc.i4.0
    IL_0043:  ldc.i4.s   15
    IL_0045:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_004a:  stloc.s    V_4
    IL_004c:  ldloc.0
    IL_004d:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<char> Game.MemoryBankData::m_hexChars
    IL_0052:  ldloc.s    V_4
    IL_0054:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<char>::get_Item(int32)
    IL_0059:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
    IL_005e:  pop
    IL_005f:  ldloc.3
    IL_0060:  ldc.i4.1
    IL_0061:  add
    IL_0062:  stloc.3
    IL_0063:  ldloc.3
    IL_0064:  ldloc.1
    IL_0065:  blt.s      IL_0035

    IL_0067:  ldarg.1
    IL_0068:  brfalse.s  IL_0092

    IL_006a:  ldloc.0
    IL_006b:  ldc.i4.s   59
    IL_006d:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
    IL_0072:  pop
    IL_0073:  ldloc.0
    IL_0074:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<char> Game.MemoryBankData::m_hexChars
    IL_0079:  ldarg.0
    IL_007a:  call       instance uint8 Game.MemoryBankData::get_LastOutput()
    IL_007f:  ldc.i4.0
    IL_0080:  ldc.i4.s   15
    IL_0082:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_0087:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<char>::get_Item(int32)
    IL_008c:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
    IL_0091:  pop
    IL_0092:  ldloc.0
    IL_0093:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0098:  ret
  } // end of method MemoryBankData::SaveString

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [Engine]Engine.DynamicArray`1<uint8>::.ctor()
    IL_0006:  stfld      class [Engine]Engine.DynamicArray`1<uint8> Game.MemoryBankData::Data
    IL_000b:  ldarg.0
    IL_000c:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0011:  ret
  } // end of method MemoryBankData::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       139 (0x8b)
    .maxstack  3
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<char>::.ctor()
    IL_0005:  dup
    IL_0006:  ldc.i4.s   48
    IL_0008:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<char>::Add(!0)
    IL_000d:  dup
    IL_000e:  ldc.i4.s   49
    IL_0010:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<char>::Add(!0)
    IL_0015:  dup
    IL_0016:  ldc.i4.s   50
    IL_0018:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<char>::Add(!0)
    IL_001d:  dup
    IL_001e:  ldc.i4.s   51
    IL_0020:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<char>::Add(!0)
    IL_0025:  dup
    IL_0026:  ldc.i4.s   52
    IL_0028:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<char>::Add(!0)
    IL_002d:  dup
    IL_002e:  ldc.i4.s   53
    IL_0030:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<char>::Add(!0)
    IL_0035:  dup
    IL_0036:  ldc.i4.s   54
    IL_0038:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<char>::Add(!0)
    IL_003d:  dup
    IL_003e:  ldc.i4.s   55
    IL_0040:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<char>::Add(!0)
    IL_0045:  dup
    IL_0046:  ldc.i4.s   56
    IL_0048:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<char>::Add(!0)
    IL_004d:  dup
    IL_004e:  ldc.i4.s   57
    IL_0050:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<char>::Add(!0)
    IL_0055:  dup
    IL_0056:  ldc.i4.s   65
    IL_0058:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<char>::Add(!0)
    IL_005d:  dup
    IL_005e:  ldc.i4.s   66
    IL_0060:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<char>::Add(!0)
    IL_0065:  dup
    IL_0066:  ldc.i4.s   67
    IL_0068:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<char>::Add(!0)
    IL_006d:  dup
    IL_006e:  ldc.i4.s   68
    IL_0070:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<char>::Add(!0)
    IL_0075:  dup
    IL_0076:  ldc.i4.s   69
    IL_0078:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<char>::Add(!0)
    IL_007d:  dup
    IL_007e:  ldc.i4.s   70
    IL_0080:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<char>::Add(!0)
    IL_0085:  stsfld     class [System.Collections]System.Collections.Generic.List`1<char> Game.MemoryBankData::m_hexChars
    IL_008a:  ret
  } // end of method MemoryBankData::.cctor

  .property instance uint8 LastOutput()
  {
    .get instance uint8 Game.MemoryBankData::get_LastOutput()
    .set instance void Game.MemoryBankData::set_LastOutput(uint8)
  } // end of property MemoryBankData::LastOutput
} // end of class Game.MemoryBankData