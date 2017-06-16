.class public auto ansi beforefieldinit GScience.ModAPI.Info
       extends [System.Runtime]System.Object
{
  .field public static string author
  .field public static string version
  .method public hidebysig specialname static 
          valuetype [Survivalcraft]Game.BuildConfiguration 
          get_BuildConfiguration() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  1
    .locals init (valuetype [Survivalcraft]Game.BuildConfiguration V_0)
    IL_0000:  nop
    IL_0001:  ldc.i4.0
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_0005

    IL_0005:  ldloc.0
    IL_0006:  ret
  } // end of method Info::get_BuildConfiguration

  .method public hidebysig specialname static 
          valuetype [Survivalcraft]Game.Platform 
          get_Platform() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  1
    .locals init (valuetype [Survivalcraft]Game.Platform V_0)
    IL_0000:  nop
    IL_0001:  ldc.i4.3
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_0005

    IL_0005:  ldloc.0
    IL_0006:  ret
  } // end of method Info::get_Platform

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method Info::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       21 (0x15)
    .maxstack  8
    IL_0000:  ldstr      "GM2000"
    IL_0005:  stsfld     string GScience.ModAPI.Info::author
    IL_000a:  ldstr      "1.0.0"
    IL_000f:  stsfld     string GScience.ModAPI.Info::version
    IL_0014:  ret
  } // end of method Info::.cctor

  .property valuetype [Survivalcraft]Game.BuildConfiguration
          BuildConfiguration()
  {
    .get valuetype [Survivalcraft]Game.BuildConfiguration GScience.ModAPI.Info::get_BuildConfiguration()
  } // end of property Info::BuildConfiguration
  .property valuetype [Survivalcraft]Game.Platform
          Platform()
  {
    .get valuetype [Survivalcraft]Game.Platform GScience.ModAPI.Info::get_Platform()
  } // end of property Info::Platform
} // end of class GScience.ModAPI.Info