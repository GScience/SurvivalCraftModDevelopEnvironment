.class public auto ansi beforefieldinit Game.EntityReferenceHumanReadableConverter
       extends [System.Runtime]System.Object
       implements [Engine]Engine.Serialization.IHumanReadableConverter
{
  .custom instance void [Engine]Engine.Serialization.HumanReadableConverterAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 14 47 61 6D 65 2E 45 6E 74 69 74 79 52 65   // ...Game.EntityRe
                                                                                                                                   66 65 72 65 6E 63 65 00 00 )                      // ference..
  .method public hidebysig newslot virtual final 
          instance string  ConvertToString(object 'value') cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  1
    .locals init (valuetype Game.EntityReference V_0)
    IL_0000:  ldarg.1
    IL_0001:  unbox.any  Game.EntityReference
    IL_0006:  stloc.0
    IL_0007:  ldloca.s   V_0
    IL_0009:  call       instance string Game.EntityReference::get_ReferenceString()
    IL_000e:  ret
  } // end of method EntityReferenceHumanReadableConverter::ConvertToString

  .method public hidebysig newslot virtual final 
          instance object  ConvertFromString(class [System.Runtime]System.Type 'type',
                                             string data) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.2
    IL_0001:  call       valuetype Game.EntityReference Game.EntityReference::FromReferenceString(string)
    IL_0006:  box        Game.EntityReference
    IL_000b:  ret
  } // end of method EntityReferenceHumanReadableConverter::ConvertFromString

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  ret
  } // end of method EntityReferenceHumanReadableConverter::.ctor

} // end of class Game.EntityReferenceHumanReadableConverter