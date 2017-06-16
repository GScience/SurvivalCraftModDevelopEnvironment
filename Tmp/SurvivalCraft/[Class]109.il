.class public sequential ansi sealed beforefieldinit Game.AnalyticsParameter
       extends [System.Runtime]System.ValueType
{
  .field public string Name
  .field public string Value
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string name,
                               string 'value') cil managed
  {
    // ด๚ย๋ด๓ะก       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string Game.AnalyticsParameter::Name
    IL_0007:  ldarg.0
    IL_0008:  ldarg.2
    IL_0009:  stfld      string Game.AnalyticsParameter::Value
    IL_000e:  ret
  } // end of method AnalyticsParameter::.ctor

} // end of class Game.AnalyticsParameter