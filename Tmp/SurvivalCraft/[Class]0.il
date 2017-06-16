.class private auto ansi beforefieldinit SimpleJson.JsonArray
       extends class [System.Collections]System.Collections.Generic.List`1<object>
{
  .custom instance void [System.Diagnostics.Tools]System.CodeDom.Compiler.GeneratedCodeAttribute::.ctor(string,
                                                                                                        string) = ( 01 00 0B 73 69 6D 70 6C 65 2D 6A 73 6F 6E 05 31   // ...simple-json.1
                                                                                                                    2E 30 2E 30 00 00 )                               // .0.0..
  .custom instance void [System.Runtime]System.ComponentModel.EditorBrowsableAttribute::.ctor(valuetype [System.Runtime]System.ComponentModel.EditorBrowsableState) = ( 01 00 01 00 00 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void class [System.Collections]System.Collections.Generic.List`1<object>::.ctor()
    IL_0006:  ret
  } // end of method JsonArray::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(int32 capacity) cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void class [System.Collections]System.Collections.Generic.List`1<object>::.ctor(int32)
    IL_0007:  ret
  } // end of method JsonArray::.ctor

  .method public hidebysig virtual instance string 
          ToString() cil managed
  {
    // 代码大小       16 (0x10)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       string SimpleJson.SimpleJson::SerializeObject(object)
    IL_0006:  dup
    IL_0007:  brtrue.s   IL_000f

    IL_0009:  pop
    IL_000a:  ldsfld     string [System.Runtime]System.String::Empty
    IL_000f:  ret
  } // end of method JsonArray::ToString

} // end of class SimpleJson.JsonArray