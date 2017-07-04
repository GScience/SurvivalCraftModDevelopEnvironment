.class public auto ansi beforefieldinit Game.TruthTableData
       extends [System.Runtime]System.Object
       implements Game.IEditableItemData
{
  .field private static class [System.Collections]System.Collections.Generic.List`1<char> m_hexChars
  .field public uint8[] Data
  .method public hidebysig newslot virtual final 
          instance class Game.IEditableItemData 
          Copy() cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  8
    IL_0000:  newobj     instance void Game.TruthTableData::.ctor()
    IL_0005:  dup
    IL_0006:  ldarg.0
    IL_0007:  ldfld      uint8[] Game.TruthTableData::Data
    IL_000c:  callvirt   instance object [System.Runtime]System.Array::Clone()
    IL_0011:  castclass  uint8[]
    IL_0016:  stfld      uint8[] Game.TruthTableData::Data
    IL_001b:  ret
  } // end of method TruthTableData::Copy

  .method public hidebysig newslot virtual final 
          instance void  LoadString(string data) cil managed
  {
    // 代码大小       65 (0x41)
    .maxstack  3
    .locals init (int32 V_0,
             int32 V_1)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  br.s       IL_003b

    IL_0004:  ldloc.0
    IL_0005:  ldarg.1
    IL_0006:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_000b:  blt.s      IL_0010

    IL_000d:  ldc.i4.0
    IL_000e:  br.s       IL_0026

    IL_0010:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<char> Game.TruthTableData::m_hexChars
    IL_0015:  ldarg.1
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance char [System.Runtime]System.String::get_Chars(int32)
    IL_001c:  call       char [System.Runtime]System.Char::ToUpperInvariant(char)
    IL_0021:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<char>::IndexOf(!0)
    IL_0026:  stloc.1
    IL_0027:  ldloc.1
    IL_0028:  ldc.i4.0
    IL_0029:  bge.s      IL_002d

    IL_002b:  ldc.i4.0
    IL_002c:  stloc.1
    IL_002d:  ldarg.0
    IL_002e:  ldfld      uint8[] Game.TruthTableData::Data
    IL_0033:  ldloc.0
    IL_0034:  ldloc.1
    IL_0035:  conv.u1
    IL_0036:  stelem.i1
    IL_0037:  ldloc.0
    IL_0038:  ldc.i4.1
    IL_0039:  add
    IL_003a:  stloc.0
    IL_003b:  ldloc.0
    IL_003c:  ldc.i4.s   16
    IL_003e:  blt.s      IL_0004

    IL_0040:  ret
  } // end of method TruthTableData::LoadString

  .method public hidebysig instance void 
          LoadBinaryString(string data) cil managed
  {
    // 代码大小       48 (0x30)
    .maxstack  4
    .locals init (int32 V_0)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  br.s       IL_002a

    IL_0004:  ldarg.0
    IL_0005:  ldfld      uint8[] Game.TruthTableData::Data
    IL_000a:  ldloc.0
    IL_000b:  ldloc.0
    IL_000c:  ldarg.1
    IL_000d:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_0012:  bge.s      IL_001f

    IL_0014:  ldarg.1
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance char [System.Runtime]System.String::get_Chars(int32)
    IL_001b:  ldc.i4.s   48
    IL_001d:  bne.un.s   IL_0022

    IL_001f:  ldc.i4.0
    IL_0020:  br.s       IL_0024

    IL_0022:  ldc.i4.s   15
    IL_0024:  conv.u1
    IL_0025:  stelem.i1
    IL_0026:  ldloc.0
    IL_0027:  ldc.i4.1
    IL_0028:  add
    IL_0029:  stloc.0
    IL_002a:  ldloc.0
    IL_002b:  ldc.i4.s   16
    IL_002d:  blt.s      IL_0004

    IL_002f:  ret
  } // end of method TruthTableData::LoadBinaryString

  .method public hidebysig newslot virtual final 
          instance string  SaveString() cil managed
  {
    // 代码大小       83 (0x53)
    .maxstack  5
    .locals init (class [System.Runtime]System.Text.StringBuilder V_0,
             int32 V_1,
             int32 V_2)
    IL_0000:  newobj     instance void [System.Runtime]System.Text.StringBuilder::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldc.i4.0
    IL_0007:  stloc.1
    IL_0008:  br.s       IL_0031

    IL_000a:  ldarg.0
    IL_000b:  ldfld      uint8[] Game.TruthTableData::Data
    IL_0010:  ldloc.1
    IL_0011:  ldelem.u1
    IL_0012:  ldc.i4.0
    IL_0013:  ldc.i4.s   15
    IL_0015:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_001a:  stloc.2
    IL_001b:  ldloc.0
    IL_001c:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<char> Game.TruthTableData::m_hexChars
    IL_0021:  ldloc.2
    IL_0022:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<char>::get_Item(int32)
    IL_0027:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
    IL_002c:  pop
    IL_002d:  ldloc.1
    IL_002e:  ldc.i4.1
    IL_002f:  add
    IL_0030:  stloc.1
    IL_0031:  ldloc.1
    IL_0032:  ldarg.0
    IL_0033:  ldfld      uint8[] Game.TruthTableData::Data
    IL_0038:  ldlen
    IL_0039:  conv.i4
    IL_003a:  blt.s      IL_000a

    IL_003c:  ldloc.0
    IL_003d:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0042:  ldc.i4.1
    IL_0043:  newarr     [System.Runtime]System.Char
    IL_0048:  dup
    IL_0049:  ldc.i4.0
    IL_004a:  ldc.i4.s   48
    IL_004c:  stelem.i2
    IL_004d:  callvirt   instance string [System.Runtime]System.String::TrimEnd(char[])
    IL_0052:  ret
  } // end of method TruthTableData::SaveString

  .method public hidebysig instance string 
          SaveBinaryString() cil managed
  {
    // 代码大小       71 (0x47)
    .maxstack  5
    .locals init (class [System.Runtime]System.Text.StringBuilder V_0,
             int32 V_1)
    IL_0000:  newobj     instance void [System.Runtime]System.Text.StringBuilder::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldc.i4.0
    IL_0007:  stloc.1
    IL_0008:  br.s       IL_0025

    IL_000a:  ldloc.0
    IL_000b:  ldarg.0
    IL_000c:  ldfld      uint8[] Game.TruthTableData::Data
    IL_0011:  ldloc.1
    IL_0012:  ldelem.u1
    IL_0013:  brtrue.s   IL_0019

    IL_0015:  ldc.i4.s   48
    IL_0017:  br.s       IL_001b

    IL_0019:  ldc.i4.s   49
    IL_001b:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
    IL_0020:  pop
    IL_0021:  ldloc.1
    IL_0022:  ldc.i4.1
    IL_0023:  add
    IL_0024:  stloc.1
    IL_0025:  ldloc.1
    IL_0026:  ldarg.0
    IL_0027:  ldfld      uint8[] Game.TruthTableData::Data
    IL_002c:  ldlen
    IL_002d:  conv.i4
    IL_002e:  blt.s      IL_000a

    IL_0030:  ldloc.0
    IL_0031:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0036:  ldc.i4.1
    IL_0037:  newarr     [System.Runtime]System.Char
    IL_003c:  dup
    IL_003d:  ldc.i4.0
    IL_003e:  ldc.i4.s   48
    IL_0040:  stelem.i2
    IL_0041:  callvirt   instance string [System.Runtime]System.String::TrimEnd(char[])
    IL_0046:  ret
  } // end of method TruthTableData::SaveBinaryString

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   16
    IL_0003:  newarr     [System.Runtime]System.Byte
    IL_0008:  stfld      uint8[] Game.TruthTableData::Data
    IL_000d:  ldarg.0
    IL_000e:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0013:  ret
  } // end of method TruthTableData::.ctor

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
    IL_0085:  stsfld     class [System.Collections]System.Collections.Generic.List`1<char> Game.TruthTableData::m_hexChars
    IL_008a:  ret
  } // end of method TruthTableData::.cctor

} // end of class Game.TruthTableData