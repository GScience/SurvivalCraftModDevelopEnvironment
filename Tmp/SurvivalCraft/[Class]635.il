.class public auto ansi beforefieldinit Game.SignData
       extends [System.Runtime]System.Object
{
  .field public string[] Lines
  .field public valuetype [Engine]Engine.Color[] Colors
  .field public string Url
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // ´úÂë´óÐ¡       111 (0x6f)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.4
    IL_0002:  newarr     [System.Runtime]System.String
    IL_0007:  dup
    IL_0008:  ldc.i4.0
    IL_0009:  ldsfld     string [System.Runtime]System.String::Empty
    IL_000e:  stelem.ref
    IL_000f:  dup
    IL_0010:  ldc.i4.1
    IL_0011:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0016:  stelem.ref
    IL_0017:  dup
    IL_0018:  ldc.i4.2
    IL_0019:  ldsfld     string [System.Runtime]System.String::Empty
    IL_001e:  stelem.ref
    IL_001f:  dup
    IL_0020:  ldc.i4.3
    IL_0021:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0026:  stelem.ref
    IL_0027:  stfld      string[] Game.SignData::Lines
    IL_002c:  ldarg.0
    IL_002d:  ldc.i4.4
    IL_002e:  newarr     [Engine]Engine.Color
    IL_0033:  dup
    IL_0034:  ldc.i4.0
    IL_0035:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Black
    IL_003a:  stelem     [Engine]Engine.Color
    IL_003f:  dup
    IL_0040:  ldc.i4.1
    IL_0041:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Black
    IL_0046:  stelem     [Engine]Engine.Color
    IL_004b:  dup
    IL_004c:  ldc.i4.2
    IL_004d:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Black
    IL_0052:  stelem     [Engine]Engine.Color
    IL_0057:  dup
    IL_0058:  ldc.i4.3
    IL_0059:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Black
    IL_005e:  stelem     [Engine]Engine.Color
    IL_0063:  stfld      valuetype [Engine]Engine.Color[] Game.SignData::Colors
    IL_0068:  ldarg.0
    IL_0069:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_006e:  ret
  } // end of method SignData::.ctor

} // end of class Game.SignData